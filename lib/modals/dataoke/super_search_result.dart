// To parse this JSON data, do
//
//     final superSearchResult = superSearchResultFromJson(jsonString);

import 'dart:convert';

import '../dd/product.dart';

SuperSearchResult superSearchResultFromJson(String str) =>
    SuperSearchResult.fromJson(json.decode(str));

String superSearchResultToJson(SuperSearchResult data) =>
    json.encode(data.toJson());

class SuperSearchResult {
  SuperSearchResult({
    this.totalNum,
    this.brandList,
    this.list,
    this.pageId,
  });

  int? totalNum;
  List<BrandList>? brandList;
  List<Product>? list;
  int? pageId;

  factory SuperSearchResult.fromJson(Map<String, dynamic> json) =>
      SuperSearchResult(
        totalNum: json["totalNum"],
        brandList:
            List<BrandList>.from(json["brandList"].map(BrandList.fromJson)),
        list: List<Product>.from(json["list"].map(Product.fromJson)),
        pageId: json["pageId"],
      );

  Map<String, dynamic> toJson() => {
        "totalNum": totalNum,
        "brandList": jsonEncode(brandList),
        "list": jsonEncode(list),
        "pageId": pageId,
      };
}

class BrandList {
  BrandList({
    this.brandName,
    this.brandId,
    this.brandLogo,
  });

  String? brandName;
  String? brandId;
  String? brandLogo;

  factory BrandList.fromJson(dynamic json) => BrandList(
        brandName: json["brandName"],
        brandId: json["brandId"],
        brandLogo: json["brandLogo"],
      );

  Map<String, dynamic> toJson() => {
        "brandName": brandName,
        "brandId": brandId,
        "brandLogo": brandLogo,
      };
}
