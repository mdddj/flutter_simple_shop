<p align="center">
    <a href="https://jq.qq.com/?_wv=1027&k=Z0AHodXB"><img src="https://badgen.net/badge/QQ%E7%BE%A4/667186542/pink" /></a>
    <a href="https://itbug.shop"><img src="https://badgen.net/badge/%E5%85%B8%E5%85%B8%E7%9A%84%E5%B0%8F%E5%8D%96%E9%83%A8/v2.1.0/red" /></a>
    <a href="https://flutter.dev/docs/get-started/install/windows"><img src="https://badgen.net/badge/flutter/v3.0.5/red" /></a>
    <a href="https://github.com/mdddj/flutter_simple_shop/stargazers"><img src="https://badgen.net/github/stars/mdddj/flutter_simple_shop" /></a>
    <a href="https://github.com/mdddj/flutter_simple_shop/network/members"><img src="https://badgen.net/github/forks/mdddj/flutter_simple_shop" /></a>
</>

<p align="center">
    <img src="https://static.saintic.com/picbed/huang/2020/12/14/1607875349615.png">
</p>


如果运行没有数据,在`main.dart`第`27`行替换为下面的代码
```dart
const apiHost = 'https://itbug.shop';
const apiPort = '443';
```

运行环境 (如果不匹配有可能跑不起来)
```dart
[✓] Flutter (Channel stable, 3.0.5, on macOS 12.4 21F79 darwin-arm (Rosetta),
    locale zh-Hans-CN)
```


---

 app 可视化后台管理：https://github.com/mdddj/ddxmb-admin

# APP 应用名：典典的小卖部

- 接口来自于大淘客，折淘客，淘宝联盟等等
- 支持淘宝、拼多多、京东、唯品会、饿了么、美团等优惠券领取
- 支持 Android、Ios 双端编译

| SDK 文档             | [![pub](https://badgen.net/pub/v/dd_taoke_sdk)](https://pub.dev/packages/dd_taoke_sdk) |
| -------------------- | -------------------------------------------------------------------------------------- |
| Web 管理后台         | [Github (Antd Pro React TypeScript 版)](https://github.com/mdddj/ddxmb-admin)          |
| Getx 重构版          | [典典的小卖部 getx 重构版本](https://github.com/mdddj/simple_shop_v2)                  |
| jetpack compose 版本 | [jetpack compose (kotlin) 版本](https://github.com/mdddj/dd_simple_shop_jetpack)       |



[//]: # ()
[//]: # (| 网络监测工具                      | [![pub]&#40;https://badgen.net/pub/v/flutter_network_connection&#41;]&#40;https://pub.dev/packages/flutter_network_connection&#41;   |)

[//]: # (| --------------------------------- | -------------------------------------------------------------------------------------------------------------------- |)

[//]: # (| 扫码枪 Spp 模式获取数据           | [![pub]&#40;https://badgen.net/pub/v/scanner_gun&#41;]&#40;https://pub.dev/packages/scanner_gun&#41;                                 |)

[//]: # (| 息屏显示方法封装                  | [![pub]&#40;https://badgen.net/pub/v/flutter_lifecycle_by_resume&#41;]&#40;https://pub.dev/packages/flutter_lifecycle_by_resume&#41; |)

[//]: # (| 商米手持 pda 端扫描数据获取插件   | [![pub]&#40;https://badgen.net/pub/v/sm_scan&#41;]&#40;https://pub.dev/packages/sm_scan&#41;                                         |)

[//]: # (| 新大陆手持 pda 端扫描数据获取插件 | [![pub]&#40;https://badgen.net/pub/v/xindalu_scan_flutter&#41;]&#40;https://pub.dev/packages/xindalu_scan_flutter&#41;               |)

## 关于本项目

**这是我入门 flutter 写的项目，一边学一边写，肯定有很多不合理的地方，还望各位大佬勿喷！谢谢 有问题也可以提交 iss, 或者加 flutter 学习群提问，看到都会回复的，群号 667186542**



# 项目截图

v2.0 新增 (
点击查看大图): [[品牌列表](https://static.saintic.com/picbed/huang/2020/12/13/1607873908351.jpg)][[品牌详情](https://static.saintic.com/picbed/huang/2020/12/13/1607873911435.jpg)]

| 一些                                                                                       | 截图                                                                                       | 预览                                                                                       |
| :----------------------------------------------------------------------------------------- | :----------------------------------------------------------------------------------------- | :----------------------------------------------------------------------------------------- |
| ![1598619522755.jpg](https://static.saintic.com/picbed/huang/2020/08/28/1598619522755.jpg) | ![1598619524192.jpg](https://static.saintic.com/picbed/huang/2020/08/28/1598619524192.jpg) | ![1598619524535.jpg](https://static.saintic.com/picbed/huang/2020/08/28/1598619524535.jpg) |
| ![1598619524394.jpg](https://static.saintic.com/picbed/huang/2020/08/28/1598619524394.jpg) | ![1598619519325.jpg](https://static.saintic.com/picbed/huang/2020/08/28/1598619519325.jpg) | ![1598619513469.jpg](https://static.saintic.com/picbed/huang/2020/08/28/1598619513469.jpg) |
| ![1598619516304.jpg](https://static.saintic.com/picbed/huang/2020/08/28/1598619516304.jpg) | ![1598619516278.jpg](https://static.saintic.com/picbed/huang/2020/08/28/1598619516278.jpg) | ![1598619478353.jpg](https://static.saintic.com/picbed/huang/2020/08/28/1598619478353.jpg) |
| ![1598619478848.jpg](https://static.saintic.com/picbed/huang/2020/08/28/1598619478848.jpg) | ![1598619472801.jpg](https://static.saintic.com/picbed/huang/2020/08/28/1598619472801.jpg) | ![1598619476671.jpg](https://static.saintic.com/picbed/huang/2020/08/28/1598619476671.jpg) |
| ![1598619475878.jpg](https://static.saintic.com/picbed/huang/2020/08/28/1598619475878.jpg) | -                                                                                          | -                                                                                          |

# 请喝咖啡

![1603946039040.png](https://static.saintic.com/picbed/huang/2020/10/29/1603946039040.png)

在web中构建
```dart
flutter build web --dart-define=FLUTTER_WEB_CANVASKIT_URL=https://unpkg.zhimg.com/canvaskit-wasm@0.24.0/bin/
```
