<!--
NOTA: Este README foi creado automáticamente por <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
NON debe editarse manualmente.
-->

# Etherpad MyPads para YunoHost

[![Nivel de integración](https://dash.yunohost.org/integration/etherpad_mypads.svg)](https://ci-apps.yunohost.org/ci/apps/etherpad_mypads/) ![Estado de funcionamento](https://ci-apps.yunohost.org/ci/badges/etherpad_mypads.status.svg) ![Estado de mantemento](https://ci-apps.yunohost.org/ci/badges/etherpad_mypads.maintain.svg)

[![Instalar Etherpad MyPads con YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=etherpad_mypads)

*[Le este README en outros idiomas.](./ALL_README.md)*

> *Este paquete permíteche instalar Etherpad MyPads de xeito rápido e doado nun servidor YunoHost.*  
> *Se non usas YunoHost, le a [documentación](https://yunohost.org/install) para saber como instalalo.*

## Vista xeral

Etherpad is a real-time collaborative editor scalable to thousands of simultaneous real time users. It provides full data export capabilities, and runs on your server, under your control.

This version of Etherpad is preconfigured with a collection of plugins: 

- [ep_mypads](https://www.npmjs.com/package/ep_mypads) - *Groups and private pads for etherpad*
- [ep_align](https://www.npmjs.com/package/ep_align) - *Add Left/Center/Right/Justify alignment*
- [ep_author_hover](https://www.npmjs.com/package/ep_author_hover) - *Display author names when hovereing text*
- [ep_delete_empty_pads](https://www.npmjs.com/package/ep_delete_empty_pads) - *Delete pads which were never edited*
- [ep_font_size](https://www.npmjs.com/package/ep_font_size) - *Be able to change font size*
- [ep_headings2](https://www.npmjs.com/package/ep_headings2) - *Be able to set text as headers*



**Versión proporcionada:** 2.2.6~ynh1

**Demo:** <https://video.etherpad.com>

## Capturas de pantalla

![Captura de pantalla de Etherpad MyPads](./doc/screenshots/etherpad_demo.gif)

## Documentación e recursos

- Web oficial da app: <http://etherpad.org>
- Documentación oficial para admin: <http://etherpad.org/doc/v1.9.0>
- Repositorio de orixe do código: <https://github.com/ether/etherpad-lite>
- Tenda YunoHost: <https://apps.yunohost.org/app/etherpad_mypads>
- Informar dun problema: <https://github.com/YunoHost-Apps/etherpad_mypads_ynh/issues>

## Info de desenvolvemento

Envía a túa colaboración á [rama `testing`](https://github.com/YunoHost-Apps/etherpad_mypads_ynh/tree/testing).

Para probar a rama `testing`, procede deste xeito:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/etherpad_mypads_ynh/tree/testing --debug
ou
sudo yunohost app upgrade etherpad_mypads -u https://github.com/YunoHost-Apps/etherpad_mypads_ynh/tree/testing --debug
```

**Máis info sobre o empaquetado da app:** <https://yunohost.org/packaging_apps>
