<!--
NB: Deze README is automatisch gegenereerd door <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Hij mag NIET handmatig aangepast worden.
-->

# Etherpad MyPads voor Yunohost

[![Integratieniveau](https://dash.yunohost.org/integration/etherpad_mypads.svg)](https://ci-apps.yunohost.org/ci/apps/etherpad_mypads/) ![Mate van functioneren](https://ci-apps.yunohost.org/ci/badges/etherpad_mypads.status.svg) ![Onderhoudsstatus](https://ci-apps.yunohost.org/ci/badges/etherpad_mypads.maintain.svg)

[![Etherpad MyPads met Yunohost installeren](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=etherpad_mypads)

*[Deze README in een andere taal lezen.](./ALL_README.md)*

> *Met dit pakket kun je Etherpad MyPads snel en eenvoudig op een YunoHost-server installeren.*  
> *Als je nog geen YunoHost hebt, lees dan [de installatiehandleiding](https://yunohost.org/install), om te zien hoe je 'm installeert.*

## Overzicht

Etherpad is a real-time collaborative editor scalable to thousands of simultaneous real time users. It provides full data export capabilities, and runs on your server, under your control.

This version of Etherpad is preconfigured with a collection of plugins: 

- [ep_mypads](https://www.npmjs.com/package/ep_mypads) - *Groups and private pads for etherpad*
- [ep_align](https://www.npmjs.com/package/ep_align) - *Add Left/Center/Right/Justify alignment*
- [ep_author_hover](https://www.npmjs.com/package/ep_author_hover) - *Display author names when hovereing text*
- [ep_delete_empty_pads](https://www.npmjs.com/package/ep_delete_empty_pads) - *Delete pads which were never edited*
- [ep_font_size](https://www.npmjs.com/package/ep_font_size) - *Be able to change font size*
- [ep_headings2](https://www.npmjs.com/package/ep_headings2) - *Be able to set text as headers*



**Geleverde versie:** 2.2.6~ynh1

**Demo:** <https://video.etherpad.com>

## Schermafdrukken

![Schermafdrukken van Etherpad MyPads](./doc/screenshots/etherpad_demo.gif)

## Documentatie en bronnen

- Officiele website van de app: <http://etherpad.org>
- Officiele beheerdersdocumentatie: <http://etherpad.org/doc/v1.9.0>
- Upstream app codedepot: <https://github.com/ether/etherpad-lite>
- YunoHost-store: <https://apps.yunohost.org/app/etherpad_mypads>
- Meld een bug: <https://github.com/YunoHost-Apps/etherpad_mypads_ynh/issues>

## Ontwikkelaarsinformatie

Stuur je pull request alsjeblieft naar de [`testing`-branch](https://github.com/YunoHost-Apps/etherpad_mypads_ynh/tree/testing).

Om de `testing`-branch uit te proberen, ga als volgt te werk:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/etherpad_mypads_ynh/tree/testing --debug
of
sudo yunohost app upgrade etherpad_mypads -u https://github.com/YunoHost-Apps/etherpad_mypads_ynh/tree/testing --debug
```

**Verdere informatie over app-packaging:** <https://yunohost.org/packaging_apps>
