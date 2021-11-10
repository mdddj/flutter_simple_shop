// To parse this JSON data, do
//
//     final couponInfo = couponInfoFromJson(jsonString);

// Dart imports:
import 'dart:convert';

CouponInfo couponInfoFromJson(String str) => CouponInfo.fromJson(json.decode(str));

String couponInfoToJson(CouponInfo data) => json.encode(data.toJson());

class CouponInfo {
  int? time;
  int? code;
  String? msg;
  CouponData? data;

  CouponInfo({
    this.time,
    this.code,
    this.msg,
    this.data,
  });

  factory CouponInfo.fromJson(Map<String, dynamic> json) => CouponInfo(
    time: json['time'],
    code: json['code'],
    msg: json['msg'],
    data: CouponData.fromJson(json['data']),
  );

  Map<String, dynamic> toJson() => {
    'time': time,
    'code': code,
    'msg': msg,
    'data': data!.toJson(),
  };
}

class CouponData {
  String? couponClickUrl;
  String? couponEndTime;
  String? couponInfo;
  String? couponStartTime;
  String? itemId;
  String? couponTotalCount;
  String? couponRemainCount;
  String? itemUrl;
  String? tpwd;
  String? maxCommissionRate;
  String? shortUrl;

  CouponData({
    this.couponClickUrl,
    this.couponEndTime,
    this.couponInfo,
    this.couponStartTime,
    this.itemId,
    this.couponTotalCount,
    this.couponRemainCount,
    this.itemUrl,
    this.tpwd,
    this.maxCommissionRate,
    this.shortUrl,
  });

  factory CouponData.fromJson(Map<String, dynamic> json) => CouponData(
    couponClickUrl: json['couponClickUrl'],
    couponEndTime: json['couponEndTime'],
    couponInfo: json['couponInfo'],
    couponStartTime:json['couponStartTime'],
    itemId: json['itemId'],
    couponTotalCount: json['couponTotalCount'],
    couponRemainCount: json['couponRemainCount'],
    itemUrl: json['itemUrl'],
    tpwd: json['tpwd'],
    maxCommissionRate: json['maxCommissionRate'],
    shortUrl: json['shortUrl'],
  );

  Map<String, dynamic> toJson() => {
    'couponClickUrl': couponClickUrl,
    'couponEndTime': couponEndTime,
    'couponInfo': couponInfo,
    'couponStartTime': couponStartTime,
    'itemId': itemId,
    'couponTotalCount': couponTotalCount,
    'couponRemainCount': couponRemainCount,
    'itemUrl': itemUrl,
    'tpwd': tpwd,
    'maxCommissionRate': maxCommissionRate,
    'shortUrl': shortUrl,
  };
}
