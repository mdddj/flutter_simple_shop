// To parse this JSON data, do
//
//     final taobaoOnePriceResult = taobaoOnePriceResultFromJson(jsonString);

import 'dart:convert';

List<TaobaoOnePriceResult> taobaoOnePriceResultFromJson(String str) =>
    List<TaobaoOnePriceResult>.from(
        json.decode(str).map(TaobaoOnePriceResult.fromJson));

String taobaoOnePriceResultToJson(List<TaobaoOnePriceResult> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TaobaoOnePriceResult {
  TaobaoOnePriceResult({
    this.promotionSceneId,
    this.activityEndTime,
    this.materialLink,
    this.activityLink,
    this.activityName,
    this.activityStartTime,
    this.id,
    this.type,
    this.activityInfo,
  });

  String? promotionSceneId;
  DateTime? activityEndTime;
  String? materialLink;
  String? activityLink;
  String? activityName;
  DateTime? activityStartTime;
  int? id;
  int? type;
  String? activityInfo;

  factory TaobaoOnePriceResult.fromJson(dynamic json) => TaobaoOnePriceResult(
        promotionSceneId: json["promotionSceneId"],
        activityEndTime: DateTime.parse(json["activityEndTime"]),
        materialLink: json["materialLink"],
        activityLink: json["activityLink"],
        activityName: json["activityName"],
        activityStartTime: DateTime.parse(json["activityStartTime"]),
        id: json["id"],
        type: json["type"],
        activityInfo: json["activityInfo"],
      );

  Map<String, dynamic> toJson() => {
        "promotionSceneId": promotionSceneId,
        "activityEndTime": activityEndTime!.toIso8601String(),
        "materialLink": materialLink,
        "activityLink": activityLink,
        "activityName": activityName,
        "activityStartTime": activityStartTime!.toIso8601String(),
        "id": id,
        "type": type,
        "activityInfo": activityInfo,
      };
}
