#!/bin/bash

#=================================================
# PERSONAL HELPERS
#=================================================

# Dependencies for AbiWord
abiword_app_depencencies="abiword"

# Dependencies for LibreOffice
libreoffice_app_dependencies="unoconv libreoffice-writer"

# NodeJS version
nodejs_version=14

#=================================================
# BACKUP
#=================================================

#=================================================
# FUTUR OFFICIAL HELPERS
#=================================================

#=================================================
# EXPERIMENTAL HELPERS
#=================================================


ynh_maintenance_mode_ON () {
	# Load value of $path_url and $domain from the config if their not set
	if [ -z $path_url ]; then
		path_url=$(ynh_app_setting_get $app path)
	fi
	if [ -z $domain ]; then
		domain=$(ynh_app_setting_get $app domain)
	fi

	mkdir -p /var/www/html/
	
	# Create an html to serve as maintenance notice
	echo "<!DOCTYPE html>
<html>
<head>
<meta http-equiv="refresh" content="3">
<title>Your app $app is currently under maintenance!</title>
<style>
	body {
		width: 70em;
		margin: 0 auto;
	}
</style>
</head>
<body>
<h1>Your app $app is currently under maintenance!</h1>
<p>This app has been put under maintenance by your administrator at $(date)</p>
<p>Please wait until the maintenance operation is done. This page will be reloaded as soon as your app will be back.</p>

</body>
</html>" > "/var/www/html/maintenance.$app.html"

	# Create a new nginx config file to redirect all access to the app to the maintenance notice instead.
	echo "# All request to the app will be redirected to ${path_url}_maintenance and fall on the maintenance notice
rewrite ^${path_url}/(.*)$ ${path_url}_maintenance/? redirect;
# Use another location, to not be in conflict with the original config file
location ${path_url}_maintenance/ {
alias /var/www/html/ ;

try_files maintenance.$app.html =503;

# Include SSOWAT user panel.
include conf.d/yunohost_panel.conf.inc;
}" > "/etc/nginx/conf.d/$domain.d/maintenance.$app.conf"

	# The current config file will redirect all requests to the root of the app.
	# To keep the full path, we can use the following rewrite rule:
	# 	rewrite ^${path_url}/(.*)$ ${path_url}_maintenance/\$1? redirect;
	# The difference will be in the $1 at the end, which keep the following queries.
	# But, if it works perfectly for a html request, there's an issue with any php files.
	# This files are treated as simple files, and will be downloaded by the browser.
	# Would be really be nice to be able to fix that issue. So that, when the page is reloaded after the maintenance, the user will be redirected to the real page he was.

	systemctl reload nginx
}

ynh_maintenance_mode_OFF () {
	# Load value of $path_url and $domain from the config if their not set
	if [ -z $path_url ]; then
		path_url=$(ynh_app_setting_get $app path)
	fi
	if [ -z $domain ]; then
		domain=$(ynh_app_setting_get $app domain)
	fi

	# Rewrite the nginx config file to redirect from ${path_url}_maintenance to the real url of the app.
	echo "rewrite ^${path_url}_maintenance/(.*)$ ${path_url}/\$1 redirect;" > "/etc/nginx/conf.d/$domain.d/maintenance.$app.conf"
	systemctl reload nginx

	# Sleep 4 seconds to let the browser reload the pages and redirect the user to the app.
	sleep 4

	# Then remove the temporary files used for the maintenance.
	rm "/var/www/html/maintenance.$app.html"
	rm "/etc/nginx/conf.d/$domain.d/maintenance.$app.conf"

	systemctl reload nginx
}

#=================================================

# Create a changelog for an app after an upgrade from the file CHANGELOG.md.
#
# usage: ynh_app_changelog [--format=markdown/html/plain] [--output=changelog_file] --changelog=changelog_source]
# | arg: -f --format= - Format in which the changelog will be printed
#       markdown: Default format.
#       html:     Turn urls into html format.
#       plain:    Plain text changelog
# | arg: -o --output= - Output file for the changelog file (Default ./changelog)
# | arg: -c --changelog= - CHANGELOG.md source (Default ../CHANGELOG.md)
#
# The changelog is printed into the file ./changelog and ./changelog_lite
ynh_app_changelog () {
    # Declare an array to define the options of this helper.
    local legacy_args=foc
    declare -Ar args_array=( [f]=format= [o]=output= [c]=changelog= )
    local format
    local output
    local changelog
    # Manage arguments with getopts
    ynh_handle_getopts_args "$@"
    format=${format:-markdown}
    output=${output:-changelog}
    changelog=${changelog:-../CHANGELOG.md}

    local original_changelog="$changelog"
    local temp_changelog="changelog_temp"
    local final_changelog="$output"

    if [ ! -n "$original_changelog" ]
    then
        echo "No changelog available..." > "$final_changelog"
        echo "No changelog available..." > "${final_changelog}_lite"
        return 0
    fi

    local current_version=$(ynh_read_manifest --manifest="/etc/yunohost/apps/$YNH_APP_INSTANCE_NAME/manifest.json" --manifest_key="version")
    local update_version=$(ynh_read_manifest --manifest="../manifest.json" --manifest_key="version")

    # Get the line of the version to update to into the changelog
    local update_version_line=$(grep --max-count=1 --line-number "^## \[$update_version" "$original_changelog" | cut -d':' -f1)
    # If there's no entry for this version yet into the changelog
    # Get the first available version
    if [ -z "$update_version_line" ]
    then
        update_version_line=$(grep --max-count=1 --line-number "^##" "$original_changelog" | cut -d':' -f1)
    fi

    # Get the length of the complete changelog.
    local changelog_length=$(wc --lines "$original_changelog" | awk '{print $1}')
    # Cut the file before the version to update to.
    tail --lines=$(( $changelog_length - $update_version_line + 1 )) "$original_changelog" > "$temp_changelog"

    # Get the length of the troncated changelog.
    changelog_length=$(wc --lines "$temp_changelog" | awk '{print $1}')
    # Get the line of the current version into the changelog
    # Keep only the last line found
    local current_version_line=$(grep --line-number "^## \[$current_version" "$temp_changelog" | cut -d':' -f1 | tail --lines=1)
    # If there's no entry for this version into the changelog
    # Get the last available version
    if [ -z "$current_version_line" ]
    then
        current_version_line=$(grep --line-number "^##" "$original_changelog" | cut -d':' -f1 | tail --lines=1)
    fi
    # Cut the file before the current version.
    # Then grep the previous version into the changelog to get the line number of the previous version
    local previous_version_line=$(tail --lines=$(( $changelog_length - $current_version_line )) \
        "$temp_changelog" | grep --max-count=1 --line-number "^## " | cut -d':' -f1)
    # If there's no previous version into the changelog
    # Go until the end of the changelog
    if [ -z "$previous_version_line" ]
    then
        previous_version_line=$changelog_length
    fi

    # Cut the file after the previous version to keep only the changelog between the current version and the version to update to.
    head --lines=$(( $current_version_line + $previous_version_line - 1 )) "$temp_changelog" | tee "$final_changelog"

    if [ "$format" = "html" ]
    then
        # Replace markdown links by html links
        ynh_replace_string --match_string="\[\(.*\)\](\(.*\)))" --replace_string="<a href=\"\2\">\1</a>)" --target_file="$final_changelog"
        ynh_replace_string --match_string="\[\(.*\)\](\(.*\))" --replace_string="<a href=\"\2\">\1</a>" --target_file="$final_changelog"
    elif [ "$format" = "plain" ]
    then
        # Change title format.
        ynh_replace_string --match_string="^##.*\[\(.*\)\](\(.*\)) - \(.*\)$" --replace_string="## \1 (\3) - \2" --target_file="$final_changelog"
        # Change modifications lines format.
        ynh_replace_string --match_string="^\([-*]\).*\[\(.*\)\]\(.*\)" --replace_string="\1 \2 \3" --target_file="$final_changelog"
    fi
    # else markdown. As the file is already in markdown, nothing to do.

    # Keep only important changes into the changelog
    # Remove all minor changes
    sed '/^-/d' "$final_changelog" > "${final_changelog}_lite"
    # Remove all blank lines (to keep a clear workspace)
    sed --in-place '/^$/d' "${final_changelog}_lite"
    # Add a blank line at the end
    echo "" >> "${final_changelog}_lite"

    # Clean titles if there's no significative changes
    local line
    local previous_line=""
    while read line <&3
    do
        if [ -n "$previous_line" ]
        then
            # Remove the line if it's a title or a blank line, and the previous one was a title as well.
            if ( [ "${line:0:1}" = "#" ] || [ ${#line} -eq 0 ] ) && [ "${previous_line:0:1}" = "#" ]
            then
                ynh_replace_special_string --match_string="${previous_line//[/.}" --replace_string="" --target_file="${final_changelog}_lite"
            fi
        fi
        previous_line="$line"
    done 3< "${final_changelog}_lite"

    # Remove all blank lines again
    sed --in-place '/^$/d' "${final_changelog}_lite"

    # Restore changelog format with blank lines
    ynh_replace_string --match_string="^##.*" --replace_string="\n\n&\n" --target_file="${final_changelog}_lite"
    # Remove the 2 first blank lines
    sed --in-place '1,2d' "${final_changelog}_lite"
    # Add a blank line at the end
    echo "" >> "${final_changelog}_lite"

    # If changelog are empty, add an info
    if [ $(wc --words "$final_changelog" | awk '{print $1}') -eq 0 ]
    then
        echo "No changes from the changelog..." > "$final_changelog"
    fi
    if [ $(wc --words "${final_changelog}_lite" | awk '{print $1}') -eq 0 ]
    then
        echo "No significative changes from the changelog..." > "${final_changelog}_lite"
    fi
}

#=================================================

# Execute a command as another user
# usage: ynh_exec_as USER COMMAND [ARG ...]
ynh_exec_as() {
  local USER=$1
  shift 1

  if [[ $USER = $(whoami) ]]; then
    eval "$@"
  else
    sudo -u "$USER" "$@"
  fi
}
