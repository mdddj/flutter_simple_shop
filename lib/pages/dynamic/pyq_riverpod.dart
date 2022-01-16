


// Flutter imports:
// Package imports:
import 'package:dataoke_sdk/dd_taoke_sdk.dart';
import 'package:dataoke_sdk/model/product.dart';
import 'package:dataoke_sdk/params/wechat_param.dart';
import 'package:flutter/material.dart';

class PyqState extends ChangeNotifier{

  int _page = 1;
  bool loading = false;
  List<Product> products =[];
  bool isQrcode = false;

  /// 设置值
  void setValue(bool val){
    isQrcode = val;
    notifyListeners();
  }

  //
  Future<void> fetchData({bool nextPage=false})async {
    if(!nextPage){
      loading = true;
      notifyListeners();
    }
    final result = await DdTaokeSdk.instance.getWechat(param: WechatParam(pageId: '$_page',sort: '2'));
    if(result!=null){
      products.addAll(result.list??[]);
    }
    loading = false;
    notifyListeners();
  }





  Future<void> nextPage() async {
    _page ++;
    await fetchData(nextPage: true);
  }

}
