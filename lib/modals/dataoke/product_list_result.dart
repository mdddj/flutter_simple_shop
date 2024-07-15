// To parse this JSON data, do
//
//     final productList = productListFromJson(jsonString);

import 'dart:convert';

import 'package:dd_js_util/dd_js_util.dart';

import '../dd/product.dart';

ProductListResult productListFromJson(String str) {
  try {
    return ProductListResult.fromJson(json.decode(str));
  } catch (_) {
    throw const BaseApiException.businessException(message: '转换数据异常');
  }
}

String productListToJson(ProductListResult data) => json.encode(data.toJson());

class ProductListResult {
  ProductListResult({
    this.goScroll,
    this.totalNum,
    this.list,
    this.pageId,
  });

  bool? goScroll;
  int? totalNum;
  List<Product>? list;
  String? pageId;

  factory ProductListResult.fromJson(Map<String, dynamic> json) =>
      ProductListResult(
        goScroll: json["goScroll"],
        totalNum: json["totalNum"],
        list: List<Product>.from(json["list"].map(Product.fromJson)),
        pageId: json["pageId"],
      );

  Map<String, dynamic> toJson() => {
        "goScroll": goScroll,
        "totalNum": totalNum,
        "list": List<dynamic>.from(list!.map((x) => x.toJson())),
        "pageId": pageId,
      };
}
