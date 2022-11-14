// Flutter imports:
// Package imports:
import 'package:dataoke_sdk/dataoke_sdk.dart';
import 'package:flutter/material.dart';


/// 首页状态
class IndexState extends ChangeNotifier {
  bool indexLoading = false;

  List<Product> products = [];

  // 首页推广轮播图
  List<Carousel> carousel = [];

  // 每日榜单的商品列表
  List<Product> hotDayProducts = [];

  int _page = 1;

  // 获取畅销榜单商品
  Future<void> getHotDayProducts() async {
    final result =  await DdTaokeSdk.instance.getHotDayProduct(param: HotdayParam(pageSize: '50', pageId: '1'));
    hotDayProducts = result?.list??[];
    notifyListeners();
  }

  /// 改变首页loading状态
  void changeLoadingState(bool value) {
    indexLoading = value;
    notifyListeners();
  }

  Future<void> fetch() async {
    final result = await DdTaokeSdk.instance
        .getProducts(param: ProductListParam(pageId: '$_page'));
    if (result != null) {
      products.addAll(result.list ?? []);
    }
    await getAllCarousel();
    await getHotDayProducts();
    notifyListeners();
  }

  // 加载轮播图
  Future<void> getAllCarousel() async {
   final result = await DdTaokeSdk.instance.getCarousel();
   carousel = result;
  }

  Future<void> nextPage() async {
    _page++;
    await fetch();
  }
}
