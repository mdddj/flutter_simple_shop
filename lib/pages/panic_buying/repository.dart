// Flutter imports:
// Package imports:
import 'package:dataoke_sdk/dd_taoke_sdk.dart';
import 'package:dataoke_sdk/model/category.dart';
import 'package:dataoke_sdk/model/product.dart';
import 'package:dataoke_sdk/params/top_param.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

// Project imports:
import '../../provider/riverpod/category_riverpod.dart';


//数据模型
class PanicBuyingModel extends ChangeNotifier {
  List<Category> cates = [];
  List<Product> products = [];
  int _page = 1;
  bool changeLoading = false;

  String rankType = '1';
  String cid = '';

  /// 页面初始化
  Future<void> init() async {
    tabChanged(0);
  }

  // 加载实时榜单商品
  Future<bool> loadRealTimeProduct() async {
    final result = await DdTaokeSdk.instance.getTopProducts(
        param: TopParam(
            rankType: rankType, pageId: '$_page', cid: cid, pageSize: '20'));
    if (result.isNotEmpty) {
      products.addAll(result);
    }
    changeLoading = false;
    notifyListeners();
    return result.length < 20;
  }

  // 选项卡被切换
  void tabChanged(int index) {
    products.clear();
    changeLoading = true;
    notifyListeners();
    if (index == 1) {
      rankType = '2';
      cid = '';
    } else {
      rankType = '1';
      cid = '';
    }
    if (index > 1) {
      /// 获取选中哪个分类
      final categorys = Get.context!.read<CategoryState>().categorys;
      final _cid = categorys[index - 2].cid;
      cid = '$_cid';
    }
    loadRealTimeProduct();
  }

  /// 下一页
  /// true 表示没有下一页了
  Future<bool> nextPage() async {
    _page++;
    return await loadRealTimeProduct();
  }
}
