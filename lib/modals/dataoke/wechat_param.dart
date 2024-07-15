// To parse this JSON data, do
//
//     final wechatParam = wechatParamFromJson(jsonString);

import 'dart:convert';

WechatParam wechatParamFromJson(String str) =>
    WechatParam.fromJson(json.decode(str));

String wechatParamToJson(WechatParam data) => json.encode(data.toJson());

class WechatParam {
  WechatParam({
    this.subcid,
    this.pre,
    this.freeshipRemoteDistrict,
    this.goodsId,
    this.pageSize,
    this.sort,
    required this.pageId,
    this.cid,
  });

  String? subcid;
  String? pre;
  String? freeshipRemoteDistrict;
  String? goodsId;
  String? pageSize;
  String? sort;
  String? pageId;
  String? cid;

  factory WechatParam.fromJson(Map<String, dynamic> json) => WechatParam(
        subcid: json["subcid"],
        pre: json["pre"],
        freeshipRemoteDistrict: json["freeshipRemoteDistrict"],
        goodsId: json["goodsId"],
        pageSize: json["pageSize"],
        sort: json["sort"],
        pageId: json["pageId"],
        cid: json["cid"],
      );

  Map<String, dynamic> toJson() => {
        "subcid": subcid,
        "pre": pre,
        "freeshipRemoteDistrict": freeshipRemoteDistrict,
        "goodsId": goodsId,
        "pageSize": pageSize,
        "sort": sort,
        "pageId": pageId,
        "cid": cid,
      };
}
