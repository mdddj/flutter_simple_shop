<p align="center">
    <img src="https://static.saintic.com/picbed/huang/2020/12/14/1607875349615.png">
</p>

<p align="center">
    <a href="https://jq.qq.com/?_wv=1027&k=Z0AHodXB"><img src="https://badgen.net/badge/QQ%E7%BE%A4/706438100/pink" /></a>
    <a href="https://itbug.shop"><img src="https://badgen.net/badge/%E5%85%B8%E5%85%B8%E7%9A%84%E5%B0%8F%E5%8D%96%E9%83%A8/v3.0.0/red" /></a>
    <a href="https://flutter.dev/docs/get-started/install/windows"><img src="https://badgen.net/badge/flutter/3.32.0/red" /></a>
    <a href="https://github.com/mdddj/flutter_simple_shop/stargazers"><img src="https://badgen.net/github/stars/mdddj/flutter_simple_shop" /></a>
    <a href="https://github.com/mdddj/flutter_simple_shop/network/members"><img src="https://badgen.net/github/forks/mdddj/flutter_simple_shop" /></a>
</p>


> 建议flutter版本: 3.32.0

## 1 配套资源

* 商城预览: <a href='https://q.itbug.shop'>(web端)</a>
* 接口文档: <a href='https://apifox.com/apidoc/shared-6f74775d-40ca-4a07-ad1e-dd9c8480f927'>
  Apifox</a>
* 服务端:   <a href='https://github.com/mdddj/dd_server'>服务端源码(Java21+Springboot3.x)</a>
* 后台管理: <a href='https://github.com/mdddj/dd_server/tree/main/dd_server_admin'>后台管理源码(
  React18+Antd Pro)</a>
* 博客前台: <a href='https://github.com/mdddj/blog'>博客前台源码</a> - <a href='https://itbug.shop'>
  博客预览</a>

> 服务端支持docker构建,需要准备mysql,Redis数据库,资源存储使用minio

## 2 测试服务接口

修改`lib/main.dart`,仅供学习,有很多bug没修复

```dart

const apiHost = 'https://api.itbug.shop';
const apiPort = '443';
```

## 3 关于本项目

淘宝客APP,在线商城,你需要准备一些账号

* 大淘客账号 (使用了部分api)
* 折淘客账号 (使用了部分api)
* 淘宝联盟账号 (收钱用)

## 4 系统设计

* 系统定时任务,没5秒查询一下渠道订单,如果查询到数据,会插入到本地数据库中,并关联用户
* 接口数据来自大淘客,和折淘客,可以在web后台绑定自己的apikey

- [x] 用户管理
- [x] 权限管理
- [x] 企业管理
- [x] 文章管理(博客)
- [x] 群组管理(频道)
- [x] 订单管理
- [x] 文件管理
- [x] 账号管理
- [x] app版本管理
- [x] 友情链接
- [x] 字典管理
- [x] 项目管理
- [x] 配置管理管理

## 5 项目截图

| 一些                                                                                         | 截图                                                                                         | 预览                                                                                         |
|:-------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------|
| ![1598619522755.jpg](https://static.saintic.com/picbed/huang/2020/08/28/1598619522755.jpg) | ![1598619524192.jpg](https://static.saintic.com/picbed/huang/2020/08/28/1598619524192.jpg) | ![1598619524535.jpg](https://static.saintic.com/picbed/huang/2020/08/28/1598619524535.jpg) |
| ![1598619524394.jpg](https://static.saintic.com/picbed/huang/2020/08/28/1598619524394.jpg) | ![1598619519325.jpg](https://static.saintic.com/picbed/huang/2020/08/28/1598619519325.jpg) | ![1598619513469.jpg](https://static.saintic.com/picbed/huang/2020/08/28/1598619513469.jpg) |
| ![1598619516304.jpg](https://static.saintic.com/picbed/huang/2020/08/28/1598619516304.jpg) | ![1598619516278.jpg](https://static.saintic.com/picbed/huang/2020/08/28/1598619516278.jpg) | ![1598619478353.jpg](https://static.saintic.com/picbed/huang/2020/08/28/1598619478353.jpg) |
| ![1598619478848.jpg](https://static.saintic.com/picbed/huang/2020/08/28/1598619478848.jpg) | ![1598619472801.jpg](https://static.saintic.com/picbed/huang/2020/08/28/1598619472801.jpg) | ![1598619476671.jpg](https://static.saintic.com/picbed/huang/2020/08/28/1598619476671.jpg) |
| ![1598619475878.jpg](https://static.saintic.com/picbed/huang/2020/08/28/1598619475878.jpg) | -                                                                                          | -                                                                                          |

## 快速开发工具

- <a href='https://flutterx.itbug.shop/'>FlutterX</a>
- <a href='https://mdddj.github.io/kotlin-spring-tool-doc'>SpringbootKotlinTool</a>

## 构建web应用

```dart
flutter build
web --dart-define=FLUTTER_WEB_CANVASKIT_URL=https: //unpkg.zhimg.com/canvaskit-wasm@0.24.0/bin/
```

## flutter web 全局加载器

首次加载更新

```html

<link rel="stylesheet" href="css/uikit.min.css"/>
<style>
    .container {
        display: flex;
        justify-content: center;
        align-items: center;
        padding-top: 150px;
    }


</style>


<body class="container">
<div style="text-align: center">
    <div><span uk-spinner="ratio: 4.5"></span></div>
    <div style="margin-top: 12px">加载中</div>
</div>
<script src="js/uikit.min.js"></script>
```

## 请喝咖啡

![1603946039040.png](https://static.saintic.com/picbed/huang/2020/10/29/1603946039040.png)