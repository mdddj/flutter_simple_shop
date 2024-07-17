// To parse this JSON data, do
//
//     final hotSearchWorlds = hotSearchWorldsFromJson(jsonString);

import 'dart:convert';

List<HotSearchWorlds> hotSearchWorldsFromJson(String str) =>
    List<HotSearchWorlds>.from(json.decode(str).map(HotSearchWorlds.fromJson));

String hotSearchWorldsToJson(List<HotSearchWorlds> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HotSearchWorlds {
  HotSearchWorlds({
    this.wordDesc,
    this.rankNum,
    this.words,
    this.theme,
    this.pic,
    this.label,
    this.hotValue,
  });

  String? wordDesc;
  int? rankNum;
  String? words;
  String? theme;
  String? pic;
  String? label;
  int? hotValue;

  factory HotSearchWorlds.fromJson(dynamic json) => HotSearchWorlds(
        wordDesc: json["wordDesc"],
        rankNum: json["rankNum"],
        words: json["words"],
        theme: json["theme"],
        pic: json["pic"],
        label: json["label"],
        hotValue: json["hotValue"],
      );

  Map<String, dynamic> toJson() => {
        "wordDesc": wordDesc,
        "rankNum": rankNum,
        "words": words,
        "theme": theme,
        "pic": pic,
        "label": label,
        "hotValue": hotValue,
      };
}
