// Flutter imports:
// Package imports:
import 'package:dataoke_sdk/dataoke_sdk.dart';
import 'package:flutter/material.dart';


class SearchState extends ChangeNotifier {
  String type = '0';
  int page = 1;
  int pageSize = 20;
  String searchKeyWorlds = '';
  bool initLoading = false;

  List<Product> products = []; // 产品列表

  // 加载数据
  // 初始化
  Future<void> loadData({String? worlds}) async {
    if (worlds != null) {
      searchKeyWorlds = worlds;
      products.clear();
      page = 1;
      initLoading = true;
      notifyListeners();
    }
    final result = await DdTaokeSdk.instance.superSearch(
        param: SuperSearchParam(
            keyWords: searchKeyWorlds,
            pageSize: '$pageSize',
            type: type,
            pageId: '$page'));
    if (result != null) {
      products.addAll(result.list ?? []);
      page++;
      initLoading = false;
      notifyListeners();
    }
  }

  /// 加载下一页
  Future<void> nextPage() async {
    final result = await DdTaokeSdk.instance.superSearch(
        param: SuperSearchParam(
            keyWords: searchKeyWorlds,
            pageSize: '$pageSize',
            type: type,
            pageId: '$page'));
    if (result != null) {
      products.addAll(result.list ?? []);
      page++;
      notifyListeners();
    }
  }
}
