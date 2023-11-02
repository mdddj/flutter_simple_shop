part of '../../index.dart';

/// 2020年11月17日 22:41:38
/// 首页网格菜单模型
/// v2.0
class IndexGridMenuItemModel {
  String title; // 标题
  String iconUrl; // icon 网络地址
  IndexGridMenuItemModelClickModel clickType; // 响应事件类型
  Map<String, String>? params;
  Widget? widget; // 跳转到的页面
  VoidCallback? onTap; // 点击事件

  IndexGridMenuItemModel(this.title, this.iconUrl, this.clickType, {this.params, this.widget, this.onTap}); // 参数
}

/// 点击事件响应类型
enum IndexGridMenuItemModelClickModel {
  browser, // 跳转到浏览器BROWSER
  innerView, // 跳转到APP页面内INNER_VIEW
  taobao, // 跳转到淘宝appTAOBAO
}
