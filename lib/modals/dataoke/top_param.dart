// To parse this JSON data, do
//
//     final topParam = topParamFromJson(jsonString);

import 'dart:convert';

TopParam topParamFromJson(String str) => TopParam.fromJson(json.decode(str));

String topParamToJson(TopParam data) => json.encode(data.toJson());

class TopParam {
  TopParam({
    required this.rankType,
    this.pageSize,
    required this.pageId,
    this.cid,
  });

  String? rankType;
  String? pageSize;
  String? pageId;
  String? cid;

  factory TopParam.fromJson(Map<String, dynamic> json) => TopParam(
        rankType: json["rankType"],
        pageSize: json["pageSize"],
        pageId: json["pageId"],
        cid: json["cid"],
      );

  Map<String, dynamic> toJson() => {
        "rankType": rankType,
        "pageSize": pageSize,
        "pageId": pageId,
        "cid": cid,
      };
}
