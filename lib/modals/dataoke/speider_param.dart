// To parse this JSON data, do
//
//     final speiderParam = speiderParamFromJson(jsonString);

import 'dart:convert';

SpeiderParam speiderParamFromJson(String str) =>
    SpeiderParam.fromJson(json.decode(str));

String speiderParamToJson(SpeiderParam data) => json.encode(data.toJson());

class SpeiderParam {
  SpeiderParam({this.pageSize, this.topic, this.pageId, this.selectTime});

  String? pageSize;
  String? topic;
  String? pageId;
  String? selectTime;

  factory SpeiderParam.fromJson(Map<String, dynamic> json) => SpeiderParam(
      pageSize: json["pageSize"],
      topic: json["topic"],
      pageId: json["pageId"],
      selectTime: json['selectTime']);

  Map<String, dynamic> toJson() => {
        "pageSize": pageSize,
        "topic": topic,
        "pageId": pageId,
        "selectTime": selectTime
      };
}
