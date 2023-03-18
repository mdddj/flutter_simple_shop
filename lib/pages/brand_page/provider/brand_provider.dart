// Flutter imports:
// Package imports:
import 'package:dataoke_sdk/dataoke_sdk.dart';
import 'package:dd_js_util/api/request_params.dart';
import 'package:flutter/material.dart';

// Project imports:
import '../models/brand_detail_model.dart';

class BrandProvider extends ChangeNotifier {
  int page = 1;
  int size = 10;
  String cid = '';
  List<ListElement> lists = [];
  String brandId = '';
  int pageId = 1;
  int pageSize = 20;
  BrandDetailModel? brandDetailModel;
  List<BrandDetailGoodsList> brandGoodsList = [];
  Color detailBgColor = Colors.white;

  /// 加载品牌列表
  Future<void> refresh() async {
    lists.clear();
    page = 1;
    final result = await DdTaokeSdk.instance.getBrandList(
        param: BrandListParam(cid: cid, pageId: '$page', pageSize: '$size'), requestParamsBuilder: (RequestParams requestParams) {
          return requestParams;
    });
    if (result != null) {
      lists.addAll(result.lists ?? []);
    }
    notifyListeners();
  }

  /// 加载下一页
  Future<void> load() async {
    page = page + 1;
    final result = await DdTaokeSdk.instance.getBrandList(
        param: BrandListParam(cid: cid, pageId: '$page', pageSize: '$size'), requestParamsBuilder: (RequestParams requestParams) {
          return requestParams;
    });
    if (result != null) {
      lists.addAll(result.lists ?? []);
    }
    notifyListeners();
  }

  /// 加载品牌页面
  /// 首次
  Future<void> detail(String brandId) async {
    if (brandDetailModel != null) {
      brandDetailModel = brandDetailModel;
    }
    notifyListeners();
  }

  // 返回值表示是否还有下一页
  Future<bool> detailNextPage() async {
    pageId = pageId = 1;
    notifyListeners();
    return false;
  }

  void emptyDetail() {
    brandDetailModel = null;
    brandGoodsList.clear();
  }
}
