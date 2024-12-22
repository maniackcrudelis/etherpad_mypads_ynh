<!--
注意：此 README 由 <https://github.com/YunoHost/apps/tree/master/tools/readme_generator> 自动生成
请勿手动编辑。
-->

# YunoHost 上的 Etherpad MyPads

[![集成程度](https://apps.yunohost.org/badge/integration/etherpad_mypads)](https://ci-apps.yunohost.org/ci/apps/etherpad_mypads/)
![工作状态](https://apps.yunohost.org/badge/state/etherpad_mypads)
![维护状态](https://apps.yunohost.org/badge/maintained/etherpad_mypads)

[![使用 YunoHost 安装 Etherpad MyPads](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=etherpad_mypads)

*[阅读此 README 的其它语言版本。](./ALL_README.md)*

> *通过此软件包，您可以在 YunoHost 服务器上快速、简单地安装 Etherpad MyPads。*  
> *如果您还没有 YunoHost，请参阅[指南](https://yunohost.org/install)了解如何安装它。*

## 概况

Etherpad is a real-time collaborative editor scalable to thousands of simultaneous real time users. It provides full data export capabilities, and runs on your server, under your control.

This version of Etherpad is preconfigured with a collection of plugins: 

- [ep_mypads](https://www.npmjs.com/package/ep_mypads) - *Groups and private pads for etherpad*
- [ep_align](https://www.npmjs.com/package/ep_align) - *Add Left/Center/Right/Justify alignment*
- [ep_author_hover](https://www.npmjs.com/package/ep_author_hover) - *Display author names when hovereing text*
- [ep_delete_empty_pads](https://www.npmjs.com/package/ep_delete_empty_pads) - *Delete pads which were never edited*
- [ep_font_size](https://www.npmjs.com/package/ep_font_size) - *Be able to change font size*
- [ep_headings2](https://www.npmjs.com/package/ep_headings2) - *Be able to set text as headers*



**分发版本：** 2.2.7~ynh1

**演示：** <https://video.etherpad.com>

## 截图

![Etherpad MyPads 的截图](./doc/screenshots/etherpad_demo.gif)

## 文档与资源

- 官方应用网站： <http://etherpad.org>
- 官方管理文档： <http://etherpad.org/doc/v1.9.0>
- 上游应用代码库： <https://github.com/ether/etherpad-lite>
- YunoHost 商店： <https://apps.yunohost.org/app/etherpad_mypads>
- 报告 bug： <https://github.com/YunoHost-Apps/etherpad_mypads_ynh/issues>

## 开发者信息

请向 [`testing` 分支](https://github.com/YunoHost-Apps/etherpad_mypads_ynh/tree/testing) 发送拉取请求。

如要尝试 `testing` 分支，请这样操作：

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/etherpad_mypads_ynh/tree/testing --debug
或
sudo yunohost app upgrade etherpad_mypads -u https://github.com/YunoHost-Apps/etherpad_mypads_ynh/tree/testing --debug
```

**有关应用打包的更多信息：** <https://yunohost.org/packaging_apps>
