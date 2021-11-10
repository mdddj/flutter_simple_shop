
import 'package:dd_taoke_sdk/jd_api.dart';
import 'package:dd_taoke_sdk/model/jd/jd_req_param.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';

import '../common/components/jd/product_model.dart';

final jdProductsProvider = ChangeNotifierProvider<JdProductsProviderState>(
    (ref) => JdProductsProviderState());

/// 京东产品的状态
class JdProductsProviderState extends ChangeNotifier {
  List<JdNativeProduct> products = [];
  String? selectProductTypeId;

  /// 设置当前选中的类别
  void setSelectProductTypeId(String? id) {
    selectProductTypeId = id;
    notifyListeners();
  }

  /// 加载京东返回的数据
  Future<void> fetchData() async {
    if (selectProductTypeId != null) {
      final result = await JdApi.instance
          .getProducts(JdReqParam(eliteId: int.parse(selectProductTypeId!)));
      try {
        products.addAll(jdNativeProductCovert(result));
      } catch (e,s) {
        Logger().e('$e\n$s');
      }
      notifyListeners();
    }
  }
}
