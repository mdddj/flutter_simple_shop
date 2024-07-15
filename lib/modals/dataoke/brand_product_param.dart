// To parse this JSON data, do
//
//     final brandProductParam = brandProductParamFromJson(jsonString);

import 'dart:convert';

BrandProductParam brandProductParamFromJson(String str) =>
    BrandProductParam.fromJson(json.decode(str));

String brandProductParamToJson(BrandProductParam data) =>
    json.encode(data.toJson());

/// 品牌详情和品牌商品列表
class BrandProductParam {
  BrandProductParam({
    this.brandId,
    this.pageId,
    this.pageSize,
  });

  String? brandId;
  String? pageId;
  String? pageSize;

  factory BrandProductParam.fromJson(Map<String, dynamic> json) =>
      BrandProductParam(
        brandId: json["brandId"],
        pageId: json["pageId"],
        pageSize: json["pageSize"],
      );

  Map<String, dynamic> toJson() => {
        "brandId": brandId,
        "pageId": pageId,
        "pageSize": pageSize,
      };
}
