// Flutter imports:
// Package imports:
import 'package:dataoke_sdk/dd_taoke_sdk.dart';
import 'package:dataoke_sdk/model/carousel_model.dart';
import 'package:dataoke_sdk/model/product.dart';
import 'package:dataoke_sdk/params/product_list_param.dart';
import 'package:flutter/material.dart';


/// 首页状态
class IndexState extends ChangeNotifier {
  bool indexLoading = false;

  List<Product> products = [];

  // 首页推广轮播图
  List<Carousel> carousel = [];


  int _page = 1;

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
