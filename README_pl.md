<!--
To README zostało automatycznie wygenerowane przez <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Nie powinno być ono edytowane ręcznie.
-->

# Etherpad MyPads dla YunoHost

[![Poziom integracji](https://apps.yunohost.org/badge/integration/etherpad_mypads)](https://ci-apps.yunohost.org/ci/apps/etherpad_mypads/)
![Status działania](https://apps.yunohost.org/badge/state/etherpad_mypads)
![Status utrzymania](https://apps.yunohost.org/badge/maintained/etherpad_mypads)

[![Zainstaluj Etherpad MyPads z YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=etherpad_mypads)

*[Przeczytaj plik README w innym języku.](./ALL_README.md)*

> *Ta aplikacja pozwala na szybką i prostą instalację Etherpad MyPads na serwerze YunoHost.*  
> *Jeżeli nie masz YunoHost zapoznaj się z [poradnikiem](https://yunohost.org/install) instalacji.*

## Przegląd

Etherpad is a real-time collaborative editor scalable to thousands of simultaneous real time users. It provides full data export capabilities, and runs on your server, under your control.

This version of Etherpad is preconfigured with a collection of plugins: 

- [ep_mypads](https://www.npmjs.com/package/ep_mypads) - *Groups and private pads for etherpad*
- [ep_align](https://www.npmjs.com/package/ep_align) - *Add Left/Center/Right/Justify alignment*
- [ep_author_hover](https://www.npmjs.com/package/ep_author_hover) - *Display author names when hovereing text*
- [ep_delete_empty_pads](https://www.npmjs.com/package/ep_delete_empty_pads) - *Delete pads which were never edited*
- [ep_font_size](https://www.npmjs.com/package/ep_font_size) - *Be able to change font size*
- [ep_headings2](https://www.npmjs.com/package/ep_headings2) - *Be able to set text as headers*



**Dostarczona wersja:** 2.2.6~ynh1

**Demo:** <https://video.etherpad.com>

## Zrzuty ekranu

![Zrzut ekranu z Etherpad MyPads](./doc/screenshots/etherpad_demo.gif)

## Dokumentacja i zasoby

- Oficjalna strona aplikacji: <http://etherpad.org>
- Oficjalna dokumentacja dla administratora: <http://etherpad.org/doc/v1.9.0>
- Repozytorium z kodem źródłowym: <https://github.com/ether/etherpad-lite>
- Sklep YunoHost: <https://apps.yunohost.org/app/etherpad_mypads>
- Zgłaszanie błędów: <https://github.com/YunoHost-Apps/etherpad_mypads_ynh/issues>

## Informacje od twórców

Wyślij swój pull request do [gałęzi `testing`](https://github.com/YunoHost-Apps/etherpad_mypads_ynh/tree/testing).

Aby wypróbować gałąź `testing` postępuj zgodnie z instrukcjami:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/etherpad_mypads_ynh/tree/testing --debug
lub
sudo yunohost app upgrade etherpad_mypads -u https://github.com/YunoHost-Apps/etherpad_mypads_ynh/tree/testing --debug
```

**Więcej informacji o tworzeniu paczek aplikacji:** <https://yunohost.org/packaging_apps>
