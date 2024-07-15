// To parse this JSON data, do
//
//     final discountTwoParam = discountTwoParamFromJson(jsonString);

import 'dart:convert';

DiscountTwoParam discountTwoParamFromJson(String str) =>
    DiscountTwoParam.fromJson(json.decode(str));

String discountTwoParamToJson(DiscountTwoParam data) =>
    json.encode(data.toJson());

class DiscountTwoParam {
  DiscountTwoParam({
    required this.pageSize,
    this.cids,
    required this.sort,
    required this.pageId,
  });

  String? pageSize;
  String? cids;
  String? sort;
  String? pageId;

  factory DiscountTwoParam.fromJson(Map<String, dynamic> json) =>
      DiscountTwoParam(
        pageSize: json["pageSize"],
        cids: json["cids"],
        sort: json["sort"],
        pageId: json["pageId"],
      );

  Map<String, dynamic> toJson() => {
        "pageSize": pageSize,
        "cids": cids,
        "sort": sort,
        "pageId": pageId,
      };
}
