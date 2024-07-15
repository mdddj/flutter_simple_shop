import 'dart:convert';

import 'package:dd_js_util/dd_js_util.dart';

import '../dd/product.dart';

class WechatResult {
  WechatResult({
    this.totalNum,
    this.list,
    this.pageId,
  });

  factory WechatResult.fromJson(Map<String, dynamic> jsonRes) {
    final List<Product>? list = jsonRes['list'] is List ? <Product>[] : null;
    if (list != null) {
      for (final dynamic item in jsonRes['list']) {
        if (item != null) {
          list.add(Product.fromJson(asT<Map<String, dynamic>>(item)!));
        }
      }
    }

    return WechatResult(
      totalNum: asT<int>(jsonRes['totalNum']),
      list: list,
      pageId: asT<String>(jsonRes['pageId']),
    );
  }

  int? totalNum;
  List<Product>? list;
  String? pageId;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'totalNum': totalNum,
        'list': list,
        'pageId': pageId,
      };

  @override
  String toString() {
    return json.encode(this);
  }
}
