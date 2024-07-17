// To parse this JSON data, do
//
//     final ddqResult = ddqResultFromJson(jsonString);

import 'dart:convert';

import '../dd/product.dart';

DdqResult ddqResultFromJson(String str) => DdqResult.fromJson(json.decode(str));

String ddqResultToJson(DdqResult data) => json.encode(data.toJson());

class DdqResult {
  DdqResult({
    this.roundsList,
    this.goodsList,
    this.ddqTime,
    this.status,
  });

  List<RoundsList>? roundsList;
  List<Product>? goodsList;
  DateTime? ddqTime;
  int? status;

  factory DdqResult.fromJson(Map<String, dynamic> json) => DdqResult(
        roundsList:
            List<RoundsList>.from(json["roundsList"].map(RoundsList.fromJson)),
        goodsList: List<Product>.from(json["goodsList"].map(Product.fromJson)),
        ddqTime: DateTime.parse(json["ddqTime"]),
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "roundsList": List<dynamic>.from(roundsList!.map((x) => x.toJson())),
        "goodsList": jsonEncode(goodsList),
        "ddqTime": ddqTime!.toIso8601String(),
        "status": status,
      };
}

class RoundsList {
  RoundsList({
    this.ddqTime,
    this.status,
  });

  DateTime? ddqTime;
  int? status;

  factory RoundsList.fromJson(dynamic json) => RoundsList(
        ddqTime: DateTime.parse(json["ddqTime"]),
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "ddqTime": ddqTime!.toIso8601String(),
        "status": status,
      };
}
