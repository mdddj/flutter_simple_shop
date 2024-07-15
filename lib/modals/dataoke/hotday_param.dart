// To parse this JSON data, do
//
//     final hotdayParam = hotdayParamFromJson(jsonString);

import 'dart:convert';

HotdayParam hotdayParamFromJson(String str) =>
    HotdayParam.fromJson(json.decode(str));

String hotdayParamToJson(HotdayParam data) => json.encode(data.toJson());

class HotdayParam {
  HotdayParam({
    this.priceCid,
    required this.pageSize,
    this.cids,
    required this.pageId,
  });

  String? priceCid;
  String? pageSize;
  String? cids;
  String? pageId;

  factory HotdayParam.fromJson(Map<String, dynamic> json) => HotdayParam(
        priceCid: json["PriceCid"],
        pageSize: json["pageSize"],
        cids: json["cids"],
        pageId: json["pageId"],
      );

  Map<String, dynamic> toJson() => {
        "PriceCid": priceCid,
        "pageSize": pageSize,
        "cids": cids,
        "pageId": pageId,
      };
}
