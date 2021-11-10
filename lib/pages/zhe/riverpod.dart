// Flutter imports:
// Package imports:
import 'package:dd_taoke_sdk/dd_taoke_sdk.dart';
import 'package:dd_taoke_sdk/model/product.dart';
import 'package:dd_taoke_sdk/params/discount_two_param.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import '../../provider/riverpod/category_riverpod.dart';

final zheRiverpod = ChangeNotifierProvider((ref) => ZheState());

class ZheState extends ChangeNotifier {
  int _page = 1;
  final int _pageSize = 20;
  String cid = '';

  bool loading = true;

  List<Product> products = [];

  /// 加载商品
  Future<bool> fetchData() async {
    final result = await DdTaokeSdk.instance.getDiscountTwoProduct(param: DiscountTwoParam(pageSize: '$_pageSize', sort: '2', pageId: '$_page', cids: cid));
    if (result != null) {
      products.addAll(result.list ?? []);
    }
    loading = false;
    notifyListeners();

    return result != null && (result.list ?? []).length < _pageSize;
  }

  void onTabChange(int index) {
    final categorys = Get.context!.read(categoryRiverpod).categorys;
    if (index == 0) {
      cid = '';
    } else {
      cid = '${categorys[index - 1].cid}';
    }

    products.clear();
    loading = true;
    notifyListeners();

    fetchData();
  }

  // 下一页
  // 返回 是否还有下一页
  Future<bool> nextPage() async {
    _page++;
    return await fetchData();
  }

  // 刷新
  Future<void> refresh() async {
    _page = 1;
    products.clear();
    loading = true;
    notifyListeners();
    await fetchData();
  }
}
