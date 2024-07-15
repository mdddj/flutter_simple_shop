// To parse this JSON data, do
//
//     final couponsDetailParam = couponsDetailParamFromJson(jsonString);

import 'dart:convert';

CouponsDetailParam couponsDetailParamFromJson(String str) =>
    CouponsDetailParam.fromJson(json.decode(str));

String couponsDetailParamToJson(CouponsDetailParam data) =>
    json.encode(data.toJson());

class CouponsDetailParam {
  CouponsDetailParam({
    this.rebateType,
    this.xid,
    required this.goodsId,
    this.externalId,
    this.pid,
    this.couponId,
    this.channelId,
    this.specialId,
  });

  String? rebateType;
  String? xid;
  String? goodsId;
  String? externalId;
  String? pid;
  String? couponId;
  String? channelId;
  String? specialId;

  factory CouponsDetailParam.fromJson(Map<String, dynamic> json) =>
      CouponsDetailParam(
        rebateType: json["rebateType"],
        xid: json["xid"],
        goodsId: json["goodsId"],
        externalId: json["externalId"],
        pid: json["pid"],
        couponId: json["couponId"],
        channelId: json["channelId"],
        specialId: json["specialId"],
      );

  Map<String, dynamic> toJson() => {
        "rebateType": rebateType,
        "xid": xid,
        "goodsId": goodsId,
        "externalId": externalId,
        "pid": pid,
        "couponId": couponId,
        "channelId": channelId,
        "specialId": specialId,
      };
}
