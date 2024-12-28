<!--
Nota bene : ce README est automatiquement généré par <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Il NE doit PAS être modifié à la main.
-->

# Etherpad MyPads pour YunoHost

[![Niveau d’intégration](https://apps.yunohost.org/badge/integration/etherpad_mypads)](https://ci-apps.yunohost.org/ci/apps/etherpad_mypads/)
![Statut du fonctionnement](https://apps.yunohost.org/badge/state/etherpad_mypads)
![Statut de maintenance](https://apps.yunohost.org/badge/maintained/etherpad_mypads)

[![Installer Etherpad MyPads avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=etherpad_mypads)

*[Lire le README dans d'autres langues.](./ALL_README.md)*

> *Ce package vous permet d’installer Etherpad MyPads rapidement et simplement sur un serveur YunoHost.*  
> *Si vous n’avez pas YunoHost, consultez [ce guide](https://yunohost.org/install) pour savoir comment l’installer et en profiter.*

## Vue d’ensemble

Etherpad est un éditeur collaboratif en temps réel évolutif pour des milliers d'utilisateurs simultanés en temps réel. Il fournit des capacités complètes d'exportation de données et s'exécute sur votre serveur, sous votre contrôle.

Cette version d'Etherpad est préconfigurée avec une collection de plugins:

- [ep_mypads](https://www.npmjs.com/package/ep_mypads) - *Groupes et pads privés pour Etherpad*
- [ep_align](https://www.npmjs.com/package/ep_align) - *Ajout de l'alignement à gauche/centre/droit/justifié*
- [ep_author_hover](https://www.npmjs.com/package/ep_author_hover) - *Affichage de l'auteur lorsqu'on passe la souris au dessus d'un texte*
- [ep_delete_empty_pads](https://www.npmjs.com/package/ep_delete_empty_pads) - *Suppression des pads qui n'ont jamais été édités*
- [ep_font_size](https://www.npmjs.com/package/ep_font_size) - *Possibilité de changer la taille de la police*
- [ep_headings2](https://www.npmjs.com/package/ep_headings2) - *Possibilité de définir des titres*


**Version incluse :** 2.2.7~ynh1

**Démo :** <https://video.etherpad.com>

## Captures d’écran

![Capture d’écran de Etherpad MyPads](./doc/screenshots/etherpad_demo.gif)

## Documentations et ressources

- Site officiel de l’app : <http://etherpad.org>
- Documentation officielle de l’admin : <http://etherpad.org/doc/v1.9.0>
- Dépôt de code officiel de l’app : <https://github.com/ether/etherpad-lite>
- YunoHost Store : <https://apps.yunohost.org/app/etherpad_mypads>
- Signaler un bug : <https://github.com/YunoHost-Apps/etherpad_mypads_ynh/issues>

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche `testing`](https://github.com/YunoHost-Apps/etherpad_mypads_ynh/tree/testing).

Pour essayer la branche `testing`, procédez comme suit :

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/etherpad_mypads_ynh/tree/testing --debug
ou
sudo yunohost app upgrade etherpad_mypads -u https://github.com/YunoHost-Apps/etherpad_mypads_ynh/tree/testing --debug
```

**Plus d’infos sur le packaging d’applications :** <https://yunohost.org/packaging_apps>
