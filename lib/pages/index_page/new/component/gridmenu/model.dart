part of '../../../../index.dart';

///
/// @Author 梁典典
/// @Github 开源地址 https://github.com/mdddj/flutter_simple_shop
/// @Description 功能描述 首页网格菜单模型
/// @Date 创建时间 2021年7月2日 10:58:59
///
class GridMenuModel {
  String title;
  String image;

  /// 如果是本地资源图片,必须是svg格式
  bool isAssets;

  VoidCallback onTap;
  Widget? icon;

  VoidCallback? onLongTap;

  GridMenuModel({required this.title, required this.image, required this.onTap, required this.isAssets, this.icon, this.onLongTap});
}
