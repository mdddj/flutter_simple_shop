import 'package:dataoke_sdk/dataoke_sdk.dart';
import 'package:dataoke_sdk/model/category.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../util/color_util.dart';


final indexProviderRiverpod = ChangeNotifierProvider((ref) => IndexProvider());

/// 首页状态管理
class IndexProvider extends ChangeNotifier {
  Color topBackground = Colors.pinkAccent;
  List<Category> categorys = [];
  List<Carousel> carousel = [];
  BrandListResult? storeData; // 首页显示的品牌
  Map<int?, Color> brandBgColorMap = {}; // 背景颜色

  int currIndex = 1;

  void setCurrIndex(int value) {
    currIndex = value;
    notifyListeners();
  }

  IndexProvider() {
    init();
  }

  /// 初始化
  Future<void> init() async {
    await fetchCategorys();
    await fetchTopics();
    await fetchStores();
  }

  /// 加载超级分类菜单
  Future<void> fetchCategorys() async {
    categorys.clear();
    final result = await DdTaokeSdk.instance.getCategorys();
    categorys.addAll(result);
    notifyListeners();
  }

  /// 获取首页的轮播图
  Future<void> fetchTopics() async {
    final result = await DdTaokeSdk.instance.getCarousel();
    carousel.addAll(result);
    notifyListeners();
  }

  /// 获取品牌栏目列表
  Future<void> fetchStores() async {
    final result = await DdTaokeSdk.instance.getBrandList(
        param: BrandListParam(
            cid: categorys[0].cid.toString(), pageId: '1', pageSize: '1'));
    storeData = result;
    await getBrandBgColors();
    notifyListeners();
  }

  /// 获取品牌logo的主要背景颜色
  Future<void> getBrandBgColors() async {
    if (storeData != null) {
      if (storeData!.lists!.isNotEmpty) {
        for (final info in storeData!.lists!) {
          var color = await ColorUtil.getImageMainColor(info.brandLogo!);
          brandBgColorMap[info.brandId] = color;
        }
        notifyListeners();
      }
    }
  }
}
