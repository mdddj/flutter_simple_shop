// To parse this JSON data, do
//
//     final commentParam = commentParamFromJson(jsonString);

import 'dart:convert';

CommentParam commentParamFromJson(String str) =>
    CommentParam.fromJson(json.decode(str));

String commentParamToJson(CommentParam data) => json.encode(data.toJson());

class CommentParam {
  CommentParam({
    this.haopingType,
    this.goodsId,
    this.id,
    this.sort,
    this.type,
  });

  String? haopingType;
  String? goodsId;
  String? id;
  String? sort;
  String? type;

  factory CommentParam.fromJson(Map<String, dynamic> json) => CommentParam(
        haopingType: json["haopingType"],
        goodsId: json["goodsId"],
        id: json["id"],
        sort: json["sort"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "haopingType": haopingType,
        "goodsId": goodsId,
        "id": id,
        "sort": sort,
        "type": type,
      };
}
