// To parse this JSON data, do
//
//     final halfdayResult = halfdayResultFromJson(jsonString);

import 'dart:convert';

HalfdayResult halfdayResultFromJson(String str) =>
    HalfdayResult.fromJson(json.decode(str));

String halfdayResultToJson(HalfdayResult data) => json.encode(data.toJson());

class HalfdayResult {
  HalfdayResult({
    this.halfPriceInfo,
    this.sessionsList,
  });

  HalfPriceInfo? halfPriceInfo;
  List<SessionsList>? sessionsList;

  factory HalfdayResult.fromJson(Map<String, dynamic> json) => HalfdayResult(
        halfPriceInfo: HalfPriceInfo.fromJson(json["halfPriceInfo"]),
        sessionsList: List<SessionsList>.from(
            json["sessionsList"].map(SessionsList.fromJson)),
      );

  Map<String, dynamic> toJson() => {
        "halfPriceInfo": halfPriceInfo!.toJson(),
        "sessionsList":
            List<dynamic>.from(sessionsList!.map((x) => x.toJson())),
      };
}

class HalfPriceInfo {
  HalfPriceInfo({
    this.banner,
    this.list,
  });

  String? banner;
  List<HalfPriceListElement>? list;

  factory HalfPriceInfo.fromJson(Map<String, dynamic> json) => HalfPriceInfo(
        banner: json["banner"],
        list: List<HalfPriceListElement>.from(
            json["list"].map(HalfPriceListElement.fromJson)),
      );

  Map<String, dynamic> toJson() => {
        "banner": banner,
        "list": List<dynamic>.from(list!.map((x) => x.toJson())),
      };
}

class HalfPriceListElement {
  HalfPriceListElement({
    this.commissionRate,
    this.todaySellNum,
    this.restCount,
    this.updateTime,
    this.hdLeixing,
    this.itemId,
    this.picUrl,
    this.activityId,
    this.yijuhua,
    this.couponAmount,
    this.isMamaQuan,
    this.qiangNum,
    this.top,
    this.useQuan,
    this.price,
    this.name,
    this.startTime,
    this.serverTime,
    this.id,
    this.itemSoldNum,
    this.activityType,
    this.tmall,
  });

  double? commissionRate;
  String? todaySellNum;
  int? restCount;
  DateTime? updateTime;
  int? hdLeixing;
  String? itemId;
  String? picUrl;
  int? activityId;
  String? yijuhua;
  int? couponAmount;
  int? isMamaQuan;
  int? qiangNum;
  int? top;
  int? useQuan;
  double? price;
  String? name;
  DateTime? startTime;
  DateTime? serverTime;
  int? id;
  int? itemSoldNum;
  int? activityType;
  int? tmall;

  factory HalfPriceListElement.fromJson(dynamic json) => HalfPriceListElement(
        commissionRate: json["commissionRate"].toDouble(),
        todaySellNum: json["todaySellNum"],
        restCount: json["restCount"],
        updateTime: DateTime.parse(json["updateTime"]),
        hdLeixing: json["hdLeixing"],
        itemId: json["itemId"],
        picUrl: json["picUrl"],
        activityId: json["activityId"],
        yijuhua: json["yijuhua"],
        couponAmount: json["couponAmount"] is double
            ? (json["couponAmount"] as double).round()
            : json["couponAmount"],
        isMamaQuan: json["isMamaQuan"],
        qiangNum: json["qiangNum"],
        top: json["top"],
        useQuan: json["useQuan"],
        price: json["price"].toDouble(),
        name: json["name"],
        startTime: DateTime.parse(json["startTime"]),
        serverTime: DateTime.parse(json["serverTime"]),
        id: json["id"],
        itemSoldNum: json["itemSoldNum"],
        activityType: json["activityType"],
        tmall: json["tmall"],
      );

  Map<String, dynamic> toJson() => {
        "commissionRate": commissionRate,
        "todaySellNum": todaySellNum,
        "restCount": restCount,
        "updateTime": updateTime!.toIso8601String(),
        "hdLeixing": hdLeixing,
        "itemId": itemId,
        "picUrl": picUrl,
        "activityId": activityId,
        "yijuhua": yijuhua,
        "couponAmount": couponAmount,
        "isMamaQuan": isMamaQuan,
        "qiangNum": qiangNum,
        "top": top,
        "useQuan": useQuan,
        "price": price,
        "name": name,
        "startTime": startTime!.toIso8601String(),
        "serverTime": serverTime!.toIso8601String(),
        "id": id,
        "itemSoldNum": itemSoldNum,
        "activityType": activityType,
        "tmall": tmall,
      };
}

class SessionsList {
  SessionsList({
    this.hpdTime,
    this.status,
  });

  String? hpdTime;
  String? status;

  factory SessionsList.fromJson(dynamic json) => SessionsList(
        hpdTime: json["hpdTime"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "hpdTime": hpdTime,
        "status": status,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    reverseMap ??= map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
