<!--
Важно: этот README был автоматически сгенерирован <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Он НЕ ДОЛЖЕН редактироваться вручную.
-->

# Etherpad MyPads для YunoHost

[![Уровень интеграции](https://dash.yunohost.org/integration/etherpad_mypads.svg)](https://ci-apps.yunohost.org/ci/apps/etherpad_mypads/) ![Состояние работы](https://ci-apps.yunohost.org/ci/badges/etherpad_mypads.status.svg) ![Состояние сопровождения](https://ci-apps.yunohost.org/ci/badges/etherpad_mypads.maintain.svg)

[![Установите Etherpad MyPads с YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=etherpad_mypads)

*[Прочтите этот README на других языках.](./ALL_README.md)*

> *Этот пакет позволяет Вам установить Etherpad MyPads быстро и просто на YunoHost-сервер.*  
> *Если у Вас нет YunoHost, пожалуйста, посмотрите [инструкцию](https://yunohost.org/install), чтобы узнать, как установить его.*

## Обзор

Etherpad is a real-time collaborative editor scalable to thousands of simultaneous real time users. It provides full data export capabilities, and runs on your server, under your control.

This version of Etherpad is preconfigured with a collection of plugins: 

- [ep_mypads](https://www.npmjs.com/package/ep_mypads) - *Groups and private pads for etherpad*
- [ep_align](https://www.npmjs.com/package/ep_align) - *Add Left/Center/Right/Justify alignment*
- [ep_author_hover](https://www.npmjs.com/package/ep_author_hover) - *Display author names when hovereing text*
- [ep_delete_empty_pads](https://www.npmjs.com/package/ep_delete_empty_pads) - *Delete pads which were never edited*
- [ep_font_size](https://www.npmjs.com/package/ep_font_size) - *Be able to change font size*
- [ep_headings2](https://www.npmjs.com/package/ep_headings2) - *Be able to set text as headers*



**Поставляемая версия:** 2.2.6~ynh1

**Демо-версия:** <https://video.etherpad.com>

## Снимки экрана

![Снимок экрана Etherpad MyPads](./doc/screenshots/etherpad_demo.gif)

## Документация и ресурсы

- Официальный веб-сайт приложения: <http://etherpad.org>
- Официальная документация администратора: <http://etherpad.org/doc/v1.9.0>
- Репозиторий кода главной ветки приложения: <https://github.com/ether/etherpad-lite>
- Магазин YunoHost: <https://apps.yunohost.org/app/etherpad_mypads>
- Сообщите об ошибке: <https://github.com/YunoHost-Apps/etherpad_mypads_ynh/issues>

## Информация для разработчиков

Пришлите Ваш запрос на слияние в [ветку `testing`](https://github.com/YunoHost-Apps/etherpad_mypads_ynh/tree/testing).

Чтобы попробовать ветку `testing`, пожалуйста, сделайте что-то вроде этого:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/etherpad_mypads_ynh/tree/testing --debug
или
sudo yunohost app upgrade etherpad_mypads -u https://github.com/YunoHost-Apps/etherpad_mypads_ynh/tree/testing --debug
```

**Больше информации о пакетировании приложений:** <https://yunohost.org/packaging_apps>
