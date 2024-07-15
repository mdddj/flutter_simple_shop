// To parse this JSON data, do
//
//     final brandListParam = brandListParamFromJson(jsonString);

import 'dart:convert';

BrandListParam brandListParamFromJson(String str) =>
    BrandListParam.fromJson(json.decode(str));

String brandListParamToJson(BrandListParam data) => json.encode(data.toJson());

class BrandListParam {
  BrandListParam({
    required this.cid,
    required this.pageId,
    required this.pageSize,
  });

  String? cid;
  String? pageId;
  String? pageSize;

  factory BrandListParam.fromJson(Map<String, dynamic> json) => BrandListParam(
        cid: json["cid"],
        pageId: json["pageId"],
        pageSize: json["pageSize"],
      );

  Map<String, dynamic> toJson() => {
        "cid": cid,
        "pageId": pageId,
        "pageSize": pageSize,
      };
}
