// To parse this JSON data, do
//
//     final superSearchParam = superSearchParamFromJson(jsonString);

import 'dart:convert';

SuperSearchParam superSearchParamFromJson(String str) =>
    SuperSearchParam.fromJson(json.decode(str));

String superSearchParamToJson(SuperSearchParam data) =>
    json.encode(data.toJson());

class SuperSearchParam {
  SuperSearchParam({
    this.priceUpperLimit,
    required this.keyWords,
    this.endTkRate,
    required this.pageSize,
    this.sort,
    required this.type, //搜索类型：0-综合结果，1-大淘客商品，2-联盟商品
    required this.pageId,
    this.specialId,
    this.haitao,
    this.priceLowerLimit,
    this.hasCoupon,
    this.startTkRate,
    this.tmall,
    this.channelId,
  });

  String? priceUpperLimit;
  String? keyWords;
  String? endTkRate;
  String? pageSize;
  String? sort;
  String? type;
  String? pageId;
  String? specialId;
  String? haitao;
  String? priceLowerLimit;
  String? hasCoupon;
  String? startTkRate;
  String? tmall;
  String? channelId;

  factory SuperSearchParam.fromJson(Map<String, dynamic> json) =>
      SuperSearchParam(
        priceUpperLimit: json["priceUpperLimit"],
        keyWords: json["keyWords"],
        endTkRate: json["endTkRate"],
        pageSize: json["pageSize"],
        sort: json["sort"],
        type: json["type"],
        pageId: json["pageId"],
        specialId: json["specialId"],
        haitao: json["haitao"],
        priceLowerLimit: json["priceLowerLimit"],
        hasCoupon: json["hasCoupon"],
        startTkRate: json["startTkRate"],
        tmall: json["tmall"],
        channelId: json["channelId"],
      );

  Map<String, dynamic> toJson() => {
        "priceUpperLimit": priceUpperLimit,
        "keyWords": keyWords,
        "endTkRate": endTkRate,
        "pageSize": pageSize,
        "sort": sort,
        "type": type,
        "pageId": pageId,
        "specialId": specialId,
        "haitao": haitao,
        "priceLowerLimit": priceLowerLimit,
        "hasCoupon": hasCoupon,
        "startTkRate": startTkRate,
        "tmall": tmall,
        "channelId": channelId,
      };
}
