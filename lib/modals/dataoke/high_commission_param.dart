// To parse this JSON data, do
//
//     final highCommissionParam = highCommissionParamFromJson(jsonString);

import 'dart:convert';

HighCommissionParam highCommissionParamFromJson(String str) =>
    HighCommissionParam.fromJson(json.decode(str));

String highCommissionParamToJson(HighCommissionParam data) =>
    json.encode(data.toJson());

class HighCommissionParam {
  HighCommissionParam({
    this.cid,
    required this.pageId,
    required this.pageSize,
    this.sort,
  });

  String? cid;
  String? pageId;
  String? pageSize;
  String? sort;

  factory HighCommissionParam.fromJson(Map<String, dynamic> json) =>
      HighCommissionParam(
        cid: json["cid"],
        pageId: json["pageId"],
        pageSize: json["pageSize"],
        sort: json["sort"],
      );

  Map<String, dynamic> toJson() => {
        "cid": cid,
        "pageId": pageId,
        "pageSize": pageSize,
        "sort": sort,
      };
}
