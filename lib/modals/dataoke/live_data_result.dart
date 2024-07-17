// To parse this JSON data, do
//
//     final liveDataResult = liveDataResultFromJson(jsonString);

import 'dart:convert';

import '../dd/product.dart';

LiveDataResult liveDataResultFromJson(String str) =>
    LiveDataResult.fromJson(json.decode(str));

String liveDataResultToJson(LiveDataResult data) => json.encode(data.toJson());

class LiveDataResult {
  LiveDataResult({
    this.totalNum,
    this.list,
    this.pageId,
  });

  int? totalNum;
  List<Product>? list;
  String? pageId;

  factory LiveDataResult.fromJson(Map<String, dynamic> json) => LiveDataResult(
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
