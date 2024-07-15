// To parse this JSON data, do
//
//     final speiderResult = speiderResultFromJson(jsonString);

import 'dart:convert';

SpeiderResult speiderResultFromJson(String str) =>
    SpeiderResult.fromJson(json.decode(str));

String speiderResultToJson(SpeiderResult data) => json.encode(data.toJson());

class SpeiderResult {
  SpeiderResult({
    this.goScroll,
    this.totalNum,
    this.list,
    this.pageId,
  });

  bool? goScroll;
  int? totalNum;
  List<SpeiderListElement>? list;
  String? pageId;

  factory SpeiderResult.fromJson(Map<String, dynamic> json) => SpeiderResult(
        goScroll: json["goScroll"],
        totalNum: json["totalNum"],
        list: List<SpeiderListElement>.from(
            json["list"].map(SpeiderListElement.fromJson)),
        pageId: json["pageId"],
      );

  Map<String, dynamic> toJson() => {
        "goScroll": goScroll,
        "totalNum": totalNum,
        "list": List<dynamic>.from(list!.map((x) => x.toJson())),
        "pageId": pageId,
      };
}

class SpeiderListElement {
  SpeiderListElement({
    this.itemId,
    this.img,
    this.remark,
    this.updateTime,
    this.title,
    this.url,
  });

  String? itemId;
  String? img;
  String? remark;
  DateTime? updateTime;
  String? title;
  String? url;

  factory SpeiderListElement.fromJson(dynamic json) => SpeiderListElement(
        itemId: json["itemId"],
        img: json["img"],
        remark: json["remark"],
        updateTime: DateTime.parse(json["updateTime"]),
        title: json["title"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "itemId": itemId,
        "img": img,
        "remark": remark,
        "updateTime": updateTime!.toIso8601String(),
        "title": title,
        "url": url,
      };
}

///------------------------整点抢购返回结果对象

SpeiderWithTimeResult speiderWithTimeResultFromJson(String str) =>
    SpeiderWithTimeResult.fromJson(json.decode(str));

String speiderWithTimeResultToJson(SpeiderWithTimeResult data) =>
    json.encode(data.toJson());

class SpeiderWithTimeResult {
  SpeiderWithTimeResult({
    this.curTime,
    this.totalNum,
    this.selectTime,
    this.list,
    this.pageId,
    this.timeOption,
  });

  int? curTime;
  int? totalNum;
  int? selectTime;
  List<SpeiderItemWithTimeItem>? list;
  String? pageId;
  List<TimeOption>? timeOption;

  factory SpeiderWithTimeResult.fromJson(Map<String, dynamic> json) {
    final totalNumber = json["totalNum"] as int;
    return SpeiderWithTimeResult(
      curTime: json["curTime"],
      totalNum: totalNumber,
      selectTime: json["selectTime"],
      list: totalNumber != 0
          ? List<SpeiderItemWithTimeItem>.from(
              json["list"].map(SpeiderItemWithTimeItem.fromJson))
          : [],
      pageId: json["pageId"],
      timeOption: json["timeOption"] != null
          ? List<TimeOption>.from(json["timeOption"].map(TimeOption.fromJson))
          : [],
    );
  }

  Map<String, dynamic> toJson() => {
        "curTime": curTime,
        "totalNum": totalNum,
        "selectTime": selectTime,
        "list": List<dynamic>.from(list!.map((x) => x.toJson())),
        "pageId": pageId,
        "timeOption": List<dynamic>.from(timeOption!.map((x) => x.toJson())),
      };
}

class SpeiderItemWithTimeItem {
  SpeiderItemWithTimeItem({
    this.couponEndTime,
    this.itemId,
    this.img,
    this.commissionRate,
    this.activityPrice,
    this.price,
    this.couponStartTime,
    this.remark,
    this.couponPrice,
    this.type,
    this.title,
    this.url,
  });

  String? couponEndTime;
  String? itemId;
  String? img;
  double? commissionRate;
  double? activityPrice;
  double? price;
  String? couponStartTime;
  String? remark;
  int? couponPrice;
  String? type;
  String? title;
  String? url;

  factory SpeiderItemWithTimeItem.fromJson(dynamic json) =>
      SpeiderItemWithTimeItem(
        couponEndTime: json["couponEndTime"],
        itemId: json["itemId"],
        img: json["img"],
        commissionRate: json["commissionRate"].toDouble(),
        activityPrice: json["activityPrice"].toDouble(),
        price: json["price"].toDouble(),
        couponStartTime: json["couponStartTime"],
        remark: json["remark"],
        couponPrice: json["couponPrice"],
        type: json["type"],
        title: json["title"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "couponEndTime": couponEndTime,
        "itemId": itemId,
        "img": img,
        "commissionRate": commissionRate,
        "activityPrice": activityPrice,
        "price": price,
        "couponStartTime": couponStartTime,
        "remark": remark,
        "couponPrice": couponPrice,
        "type": type,
        "title": title,
        "url": url,
      };
}

class TimeOption {
  TimeOption({
    this.label,
    this.value,
  });

  String? label;
  int? value;

  factory TimeOption.fromJson(dynamic json) => TimeOption(
        label: json["label"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "label": label,
        "value": value,
      };
}
