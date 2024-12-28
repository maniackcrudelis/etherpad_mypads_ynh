<!--
Este archivo README esta generado automaticamente<https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
No se debe editar a mano.
-->

# Etherpad MyPads para Yunohost

[![Nivel de integración](https://apps.yunohost.org/badge/integration/etherpad_mypads)](https://ci-apps.yunohost.org/ci/apps/etherpad_mypads/)
![Estado funcional](https://apps.yunohost.org/badge/state/etherpad_mypads)
![Estado En Mantención](https://apps.yunohost.org/badge/maintained/etherpad_mypads)

[![Instalar Etherpad MyPads con Yunhost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=etherpad_mypads)

*[Leer este README en otros idiomas.](./ALL_README.md)*

> *Este paquete le permite instalarEtherpad MyPads rapidamente y simplement en un servidor YunoHost.*  
> *Si no tiene YunoHost, visita [the guide](https://yunohost.org/install) para aprender como instalarla.*

## Descripción general

Etherpad is a real-time collaborative editor scalable to thousands of simultaneous real time users. It provides full data export capabilities, and runs on your server, under your control.

This version of Etherpad is preconfigured with a collection of plugins: 

- [ep_mypads](https://www.npmjs.com/package/ep_mypads) - *Groups and private pads for etherpad*
- [ep_align](https://www.npmjs.com/package/ep_align) - *Add Left/Center/Right/Justify alignment*
- [ep_author_hover](https://www.npmjs.com/package/ep_author_hover) - *Display author names when hovereing text*
- [ep_delete_empty_pads](https://www.npmjs.com/package/ep_delete_empty_pads) - *Delete pads which were never edited*
- [ep_font_size](https://www.npmjs.com/package/ep_font_size) - *Be able to change font size*
- [ep_headings2](https://www.npmjs.com/package/ep_headings2) - *Be able to set text as headers*



**Versión actual:** 2.2.7~ynh1

**Demo:** <https://video.etherpad.com>

## Capturas

![Captura de Etherpad MyPads](./doc/screenshots/etherpad_demo.gif)

## Documentaciones y recursos

- Sitio web oficial: <http://etherpad.org>
- Documentación administrador oficial: <http://etherpad.org/doc/v1.9.0>
- Repositorio del código fuente oficial de la aplicación : <https://github.com/ether/etherpad-lite>
- Catálogo YunoHost: <https://apps.yunohost.org/app/etherpad_mypads>
- Reportar un error: <https://github.com/YunoHost-Apps/etherpad_mypads_ynh/issues>

## Información para desarrolladores

Por favor enviar sus correcciones a la [rama `testing`](https://github.com/YunoHost-Apps/etherpad_mypads_ynh/tree/testing).

Para probar la rama `testing`, sigue asÍ:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/etherpad_mypads_ynh/tree/testing --debug
o
sudo yunohost app upgrade etherpad_mypads -u https://github.com/YunoHost-Apps/etherpad_mypads_ynh/tree/testing --debug
```

**Mas informaciones sobre el empaquetado de aplicaciones:** <https://yunohost.org/packaging_apps>
