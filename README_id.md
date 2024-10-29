<!--
N.B.: README ini dibuat secara otomatis oleh <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Ini TIDAK boleh diedit dengan tangan.
-->

# Etherpad MyPads untuk YunoHost

[![Tingkat integrasi](https://dash.yunohost.org/integration/etherpad_mypads.svg)](https://ci-apps.yunohost.org/ci/apps/etherpad_mypads/) ![Status kerja](https://ci-apps.yunohost.org/ci/badges/etherpad_mypads.status.svg) ![Status pemeliharaan](https://ci-apps.yunohost.org/ci/badges/etherpad_mypads.maintain.svg)

[![Pasang Etherpad MyPads dengan YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=etherpad_mypads)

*[Baca README ini dengan bahasa yang lain.](./ALL_README.md)*

> *Paket ini memperbolehkan Anda untuk memasang Etherpad MyPads secara cepat dan mudah pada server YunoHost.*  
> *Bila Anda tidak mempunyai YunoHost, silakan berkonsultasi dengan [panduan](https://yunohost.org/install) untuk mempelajari bagaimana untuk memasangnya.*

## Ringkasan

Etherpad is a real-time collaborative editor scalable to thousands of simultaneous real time users. It provides full data export capabilities, and runs on your server, under your control.

This version of Etherpad is preconfigured with a collection of plugins: 

- [ep_mypads](https://www.npmjs.com/package/ep_mypads) - *Groups and private pads for etherpad*
- [ep_align](https://www.npmjs.com/package/ep_align) - *Add Left/Center/Right/Justify alignment*
- [ep_author_hover](https://www.npmjs.com/package/ep_author_hover) - *Display author names when hovereing text*
- [ep_delete_empty_pads](https://www.npmjs.com/package/ep_delete_empty_pads) - *Delete pads which were never edited*
- [ep_font_size](https://www.npmjs.com/package/ep_font_size) - *Be able to change font size*
- [ep_headings2](https://www.npmjs.com/package/ep_headings2) - *Be able to set text as headers*



**Versi terkirim:** 2.2.6~ynh1

**Demo:** <https://video.etherpad.com>

## Tangkapan Layar

![Tangkapan Layar pada Etherpad MyPads](./doc/screenshots/etherpad_demo.gif)

## Dokumentasi dan sumber daya

- Website aplikasi resmi: <http://etherpad.org>
- Dokumentasi admin resmi: <http://etherpad.org/doc/v1.9.0>
- Depot kode aplikasi hulu: <https://github.com/ether/etherpad-lite>
- Gudang YunoHost: <https://apps.yunohost.org/app/etherpad_mypads>
- Laporkan bug: <https://github.com/YunoHost-Apps/etherpad_mypads_ynh/issues>

## Info developer

Silakan kirim pull request ke [`testing` branch](https://github.com/YunoHost-Apps/etherpad_mypads_ynh/tree/testing).

Untuk mencoba branch `testing`, silakan dilanjutkan seperti:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/etherpad_mypads_ynh/tree/testing --debug
atau
sudo yunohost app upgrade etherpad_mypads -u https://github.com/YunoHost-Apps/etherpad_mypads_ynh/tree/testing --debug
```

**Info lebih lanjut mengenai pemaketan aplikasi:** <https://yunohost.org/packaging_apps>
