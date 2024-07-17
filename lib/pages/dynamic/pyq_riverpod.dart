import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../modals/dd/product.dart';

final pyqRiverpod = ChangeNotifierProvider((ref) => PyqState());

class PyqState extends ChangeNotifier {
  int _page = 1;
  bool loading = false;
  List<Product> products = [];
  bool isQrcode = false;

  /// 设置值
  void setValue(bool val) {
    isQrcode = val;
    notifyListeners();
  }

  //
  Future<void> fetchData({bool nextPage = false}) async {
    // if (!nextPage) {
    //   loading = true;
    //   notifyListeners();
    // }
    // final result = await DdTaokeSdk.instance.getWechat(
    //     param: WechatParam(pageId: '$_page', sort: '2'),
    //     requestParamsBuilder: (RequestParams requestParams) {
    //       return requestParams;
    //     });
    // if (result != null) {
    //   products.addAll(result.list ?? []);
    // }
    // loading = false;
    // notifyListeners();
  }

  Future<void> nextPage() async {
    _page++;
    await fetchData(nextPage: true);
  }
}
