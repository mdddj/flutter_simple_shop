// To parse this JSON data, do
//
//     final heartbeat = heartbeatFromJson(jsonString);

// Dart imports:
import 'dart:convert';

Result resultFromJson(String str) => Result.fromJson(json.decode(str));

String resultToJson(Result data) => json.encode(data.toJson());

class Result {
  Result({
    this.state,
    this.message,
    this.data,
  });

  int? state;
  String? message;
  String? data;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    state: json['state'],
    message: json['message'],
    data: json['data'],
  );

  Map<String, dynamic> toJson() => {
    'state': state,
    'message': message,
    'data': data,
  };
}
