part of '../../index.dart';

/// 2020年11月18日09:45:15
/// 轮播图模型设计
/// v2.0
class IndexCarouselItemModel {
  String? imageUrl; // 图片地址
  String? title; // 标题
  String? intro; // 介绍
  String? clickType; // 点击事件跳转类型
  String? params;
  VoidCallback? onTap;

  IndexCarouselItemModel({this.imageUrl, this.title, this.intro, this.clickType, this.params, this.onTap}); // 参数
}
