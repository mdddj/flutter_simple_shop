// To parse this JSON data, do
//
//     final taobaoOnePriceParam = taobaoOnePriceParamFromJson(jsonString);

import 'dart:convert';

TaobaoOnePriceParam taobaoOnePriceParamFromJson(String str) =>
    TaobaoOnePriceParam.fromJson(json.decode(str));

String taobaoOnePriceParamToJson(TaobaoOnePriceParam data) =>
    json.encode(data.toJson());

class TaobaoOnePriceParam {
  TaobaoOnePriceParam({
    this.pageSize,
    required this.pageId,
    this.type,
    this.channelId,
  });

  String? pageSize;
  String? pageId;
  String? type;
  String? channelId;

  factory TaobaoOnePriceParam.fromJson(Map<String, dynamic> json) =>
      TaobaoOnePriceParam(
        pageSize: json["pageSize"],
        pageId: json["pageId"],
        type: json["type"],
        channelId: json["channelID"],
      );

  Map<String, dynamic> toJson() => {
        "pageSize": pageSize,
        "pageId": pageId,
        "type": type,
        "channelID": channelId,
      };
}
