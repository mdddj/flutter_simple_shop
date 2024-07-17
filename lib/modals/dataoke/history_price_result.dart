// To parse this JSON data, do
//
//     final historyPriceResult = historyPriceResultFromJson(jsonString);

import 'dart:convert';

HistoryPriceResult historyPriceResultFromJson(String str) =>
    HistoryPriceResult.fromJson(json.decode(str));

String historyPriceResultToJson(HistoryPriceResult data) =>
    json.encode(data.toJson());

class HistoryPriceResult {
  HistoryPriceResult({
    this.historicalPrice,
    this.commissionRate,
    this.brandName,
    this.couponConditions,
    this.originalPrice,
    this.goodsId,
    this.itemLink,
    this.dailySales,
    this.title,
    this.dtitle,
    this.couponTotalNum,
    this.commissionType,
    this.monthSales,
    this.couponEndTime,
    this.twoHoursSales,
    this.marketingMainPic,
    this.couponStartTime,
    this.brandId,
    this.couponReceiveNum,
    this.mainPic,
    this.couponPrice,
    this.id,
    this.desc,
  });

  List<HistoricalPrice>? historicalPrice;
  double? commissionRate;
  String? brandName;
  String? couponConditions;
  double? originalPrice;
  String? goodsId;
  String? itemLink;
  int? dailySales;
  String? title;
  String? dtitle;
  int? couponTotalNum;
  int? commissionType;
  int? monthSales;
  DateTime? couponEndTime;
  int? twoHoursSales;
  String? marketingMainPic;
  DateTime? couponStartTime;
  int? brandId;
  int? couponReceiveNum;
  String? mainPic;
  double? couponPrice;
  int? id;
  String? desc;

  factory HistoryPriceResult.fromJson(Map<String, dynamic> json) =>
      HistoryPriceResult(
        historicalPrice: List<HistoricalPrice>.from(
            json["historicalPrice"].map(HistoricalPrice.fromJson)),
        commissionRate: json["commissionRate"].toDouble(),
        brandName: json["brandName"],
        couponConditions: json["couponConditions"],
        originalPrice: json["originalPrice"].toDouble(),
        goodsId: json["goodsId"],
        itemLink: json["itemLink"],
        dailySales: json["dailySales"],
        title: json["title"],
        dtitle: json["dtitle"],
        couponTotalNum: json["couponTotalNum"],
        commissionType: json["commissionType"],
        monthSales: json["monthSales"],
        couponEndTime: DateTime.parse(json["couponEndTime"]),
        twoHoursSales: json["twoHoursSales"],
        marketingMainPic: json["marketingMainPic"],
        couponStartTime: DateTime.parse(json["couponStartTime"]),
        brandId: json["brandId"],
        couponReceiveNum: json["couponReceiveNum"],
        mainPic: json["mainPic"],
        couponPrice: json["couponPrice"] is int
            ? json["couponPrice"].toDouble()
            : json["couponPrice"],
        id: json["id"],
        desc: json["desc"],
      );

  Map<String, dynamic> toJson() => {
        "historicalPrice":
            List<dynamic>.from(historicalPrice!.map((x) => x.toJson())),
        "commissionRate": commissionRate,
        "brandName": brandName,
        "couponConditions": couponConditions,
        "originalPrice": originalPrice,
        "goodsId": goodsId,
        "itemLink": itemLink,
        "dailySales": dailySales,
        "title": title,
        "dtitle": dtitle,
        "couponTotalNum": couponTotalNum,
        "commissionType": commissionType,
        "monthSales": monthSales,
        "couponEndTime": couponEndTime!.toIso8601String(),
        "twoHoursSales": twoHoursSales,
        "marketingMainPic": marketingMainPic,
        "couponStartTime": couponStartTime!.toIso8601String(),
        "brandId": brandId,
        "couponReceiveNum": couponReceiveNum,
        "mainPic": mainPic,
        "couponPrice": couponPrice,
        "id": id,
        "desc": desc,
      };
}

class HistoricalPrice {
  HistoricalPrice({
    this.date,
    this.actualPrice,
  });

  DateTime? date;
  double? actualPrice;

  factory HistoricalPrice.fromJson(dynamic json) => HistoricalPrice(
        date: DateTime.parse(json["date"]),
        actualPrice: json["actualPrice"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "date": date!.toIso8601String(),
        "actualPrice": actualPrice,
      };
}
