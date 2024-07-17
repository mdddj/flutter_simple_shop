// To parse this JSON data, do
//
//     final nineNineParam = nineNineParamFromJson(jsonString);

import 'dart:convert';

NineNineParam nineNineParamFromJson(String str) =>
    NineNineParam.fromJson(json.decode(str));

String nineNineParamToJson(NineNineParam data) => json.encode(data.toJson());

/// 9快9包邮商品参数
class NineNineParam {
  NineNineParam({
    this.pageSize,
    this.nineCid,
    this.pageId,
  });

  String? pageSize;
  String? nineCid;
  String? pageId;

  factory NineNineParam.fromJson(Map<String, dynamic> json) => NineNineParam(
        pageSize: json["pageSize"],
        nineCid: json["nineCid"],
        pageId: json["pageId"],
      );

  Map<String, dynamic> toJson() => {
        "pageSize": pageSize,
        "nineCid": nineCid,
        "pageId": pageId,
      };
}
