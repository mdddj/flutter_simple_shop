// To parse this JSON data, do
//
//     final nineNineResult = nineNineResultFromJson(jsonString);

import 'dart:convert';

import '../dd/product.dart';

NineNineResult nineNineResultFromJson(String str) =>
    NineNineResult.fromJson(json.decode(str));

String nineNineResultToJson(NineNineResult data) => json.encode(data.toJson());

class NineNineResult {
  NineNineResult({
    this.totalNum,
    this.list,
    this.pageId,
  });

  int? totalNum;
  List<Product>? list;
  String? pageId;

  factory NineNineResult.fromJson(Map<String, dynamic> json) => NineNineResult(
        totalNum: json["totalNum"],
        list: List<Product>.from(json["list"].map(Product.fromJson)),
        pageId: json["pageId"],
      );

  Map<String, dynamic> toJson() => {
        "totalNum": totalNum,
        "list": List<dynamic>.from(list!.map((x) => x.toJson())),
        "pageId": pageId,
      };
}
