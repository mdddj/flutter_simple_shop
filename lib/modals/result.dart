// To parse this JSON data, do
//
//     final result = resultFromJson(jsonString);

// Dart imports:
import 'dart:convert';

Result resultFromJson(String str) => Result.fromJson(json.decode(str));

String resultToJson(Result data) => json.encode(data.toJson());

class Result {
  int? code;
  String? msg;
  String? data;

  Result({
    this.code,
    this.msg,
    this.data,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    code: json['code'],
    msg: json['msg'],
    data: json['data'],
  );

  Map<String, dynamic> toJson() => {
    'code': code,
    'msg': msg,
    'data': data,
  };
}
