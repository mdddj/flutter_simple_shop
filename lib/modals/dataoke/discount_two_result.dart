// To parse this JSON data, do
//
//     final discountTwoResult = discountTwoResultFromJson(jsonString);

import 'dart:convert';

import '../dd/product.dart';

DiscountTwoResult discountTwoResultFromJson(String str) =>
    DiscountTwoResult.fromJson(json.decode(str));

String discountTwoResultToJson(DiscountTwoResult data) =>
    json.encode(data.toJson());

class DiscountTwoResult {
  DiscountTwoResult({
    this.totalNum,
    this.list,
    this.pageId,
  });

  int? totalNum;
  List<Product>? list;
  String? pageId;

  factory DiscountTwoResult.fromJson(Map<String, dynamic> json) =>
      DiscountTwoResult(
        totalNum: json["totalNum"],
        list: List<Product>.from(json["list"].map(Product.fromJson)),
        pageId: json["pageId"],
      );

  Map<String, dynamic> toJson() => {
        "totalNum": totalNum,
        "list": jsonEncode(list),
        "pageId": pageId,
      };
}
