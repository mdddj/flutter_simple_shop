// Flutter imports:
// Package imports:
import 'package:dataoke_sdk/dd_taoke_sdk.dart';
import 'package:dataoke_sdk/model/product.dart';
import 'package:dataoke_sdk/params/nine_nine_param.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final jiujiuRiverpod =
    ChangeNotifierProvider<JiujiuState>((ref) => JiujiuState());

class JiujiuState extends ChangeNotifier {
  String type = '-1';
  int page = 1;
  bool loading = false;

  List<Product> products = [];

  ///初始化
  Future<void> init() async {
    if (page == 1) {
      products.clear();
      loading = true;
      notifyListeners();
    }
    final result = await DdTaokeSdk.instance.getNineNineProducts(
        param: NineNineParam(nineCid: type, pageId: '$page', pageSize: '20'));
    if (result != null) {
      products.addAll(result.list ?? []);
      page++;
      loading = false;
      notifyListeners();
    }
  }

  Future<void> changeIndex(int index) async {
    switch (index) {
      case 0:
        type = '-1';
        break;
      case 1:
        type = '1';
        break;
      case 2:
        type = '2';
        break;
      case 3:
        type = '3';
        break;
      default:
        break;
    }
    page = 1;
    await init();
  }

  /// 加载下一页
  Future<void> nextPage() async {
    await init();
  }

  /// 刷新
  Future<void> refresh() async {
    page = 1;
    await init();
  }
}
