// Flutter imports:
// Package imports:
import 'package:dataoke_sdk/dataoke_sdk.dart';
import 'package:dataoke_sdk/model/category.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import '../../provider/riverpod/category_riverpod.dart';

final panicBuyingModelRiverpod = ChangeNotifierProvider(PanicBuyingModel.new);
//数据模型
class PanicBuyingModel extends ChangeNotifier {
  final Ref ref;

  List<Category> cates = [];
  List<ProductModel> products = [];
  int _page = 1;
  bool changeLoading = false;

  String rankType = '1';
  String cid = '';

  PanicBuyingModel(this.ref);

  /// 页面初始化
  Future<void> init(BuildContext context) async {
    tabChanged(0,context);
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
  void tabChanged(int index,BuildContext context) {
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
      final categorys = ref.read(categoryRiverpod).categorys;
      final myCid = categorys[index - 2].cid;
      cid = '$myCid';
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
