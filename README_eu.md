<!--
Ohart ongi: README hau automatikoki sortu da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>ri esker
EZ editatu eskuz.
-->

# Etherpad MyPads YunoHost-erako

[![Integrazio maila](https://apps.yunohost.org/badge/integration/etherpad_mypads)](https://ci-apps.yunohost.org/ci/apps/etherpad_mypads/)
![Funtzionamendu egoera](https://apps.yunohost.org/badge/state/etherpad_mypads)
![Mantentze egoera](https://apps.yunohost.org/badge/maintained/etherpad_mypads)

[![Instalatu Etherpad MyPads YunoHost-ekin](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=etherpad_mypads)

*[Irakurri README hau beste hizkuntzatan.](./ALL_README.md)*

> *Pakete honek Etherpad MyPads YunoHost zerbitzari batean azkar eta zailtasunik gabe instalatzea ahalbidetzen dizu.*  
> *YunoHost ez baduzu, kontsultatu [gida](https://yunohost.org/install) nola instalatu ikasteko.*

## Aurreikuspena

Etherpad is a real-time collaborative editor scalable to thousands of simultaneous real time users. It provides full data export capabilities, and runs on your server, under your control.

This version of Etherpad is preconfigured with a collection of plugins: 

- [ep_mypads](https://www.npmjs.com/package/ep_mypads) - *Groups and private pads for etherpad*
- [ep_align](https://www.npmjs.com/package/ep_align) - *Add Left/Center/Right/Justify alignment*
- [ep_author_hover](https://www.npmjs.com/package/ep_author_hover) - *Display author names when hovereing text*
- [ep_delete_empty_pads](https://www.npmjs.com/package/ep_delete_empty_pads) - *Delete pads which were never edited*
- [ep_font_size](https://www.npmjs.com/package/ep_font_size) - *Be able to change font size*
- [ep_headings2](https://www.npmjs.com/package/ep_headings2) - *Be able to set text as headers*



**Paketatutako bertsioa:** 2.2.7~ynh1

**Demoa:** <https://video.etherpad.com>

## Pantaila-argazkiak

![Etherpad MyPads(r)en pantaila-argazkia](./doc/screenshots/etherpad_demo.gif)

## Dokumentazioa eta baliabideak

- Aplikazioaren webgune ofiziala: <http://etherpad.org>
- Administratzaileen dokumentazio ofiziala: <http://etherpad.org/doc/v1.9.0>
- Jatorrizko aplikazioaren kode-gordailua: <https://github.com/ether/etherpad-lite>
- YunoHost Denda: <https://apps.yunohost.org/app/etherpad_mypads>
- Eman errore baten berri: <https://github.com/YunoHost-Apps/etherpad_mypads_ynh/issues>

## Garatzaileentzako informazioa

Bidali `pull request`a [`testing` abarrera](https://github.com/YunoHost-Apps/etherpad_mypads_ynh/tree/testing).

`testing` abarra probatzeko, ondorengoa egin:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/etherpad_mypads_ynh/tree/testing --debug
edo
sudo yunohost app upgrade etherpad_mypads -u https://github.com/YunoHost-Apps/etherpad_mypads_ynh/tree/testing --debug
```

**Informazio gehiago aplikazioaren paketatzeari buruz:** <https://yunohost.org/packaging_apps>
