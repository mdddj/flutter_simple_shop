// Flutter imports:
// Package imports:
import 'package:dataoke_sdk/dd_taoke_sdk.dart';
import 'package:dataoke_sdk/model/product.dart';
import 'package:dataoke_sdk/params/product_list_param.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final indexRiverpod = ChangeNotifierProvider<IndexState>((ref) => IndexState());

/// 首页状态
class IndexState extends ChangeNotifier {
  bool indexLoading = false;

  List<Product> products = [];
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
    notifyListeners();
  }

  Future<void> nextPage() async {
    _page++;
    await fetch();
  }
}
