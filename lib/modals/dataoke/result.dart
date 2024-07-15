// To parse this JSON data, do
//
//     final ddTaokeResult = ddTaokeResultFromJson(jsonString);

import 'dart:convert';

import 'package:dd_js_util/dd_js_util.dart';

DdTaokeResult ddTaokeResultFromJson(String str) =>
    DdTaokeResult.fromJson(json.decode(str));

String ddTaokeResultToJson(DdTaokeResult data) => json.encode(data.toJson());

class DdTaokeResult {
  DdTaokeResult(
      {required this.state, required this.message, this.data, this.otherData});

  int state;
  String message;
  String? data;
  dynamic otherData;

  factory DdTaokeResult.fromJson(Map<String, dynamic> json) {
    var data = json["data"] is Map<String, dynamic>
        ? jsonEncode(json['data'])
        : (json['data'] is String
            ? json['data'].toString()
            : jsonEncode(json['data']));
    return DdTaokeResult(
        state: json["state"],
        message: json["message"],
        data: data,
        otherData: json['data']);
  }

  Map<String, dynamic> toJson() => {
        "state": state,
        "message": message,
        "data": data,
        'otherData': otherData.toString()
      };
}

class ErrorRoot {
  ErrorRoot({
    required this.codes,
    required this.arguments,
    required this.defaultMessage,
    required this.objectName,
    required this.field,
    required this.rejectedValue,
    required this.bindingFailure,
    required this.code,
  });

  factory ErrorRoot.fromJson(Map<String, dynamic> jsonRes) {
    final List<String>? codes = jsonRes['codes'] is List ? <String>[] : null;
    if (codes != null) {
      for (final dynamic item in jsonRes['codes']!) {
        if (item != null) {
          tryCatch(() {
            codes.add(asT<String>(item)!);
          });
        }
      }
    }

    final List<Arguments> arguments =
        jsonRes['arguments'] is List ? <Arguments>[] : <Arguments>[];
    for (final dynamic item in jsonRes['arguments']!) {
      if (item != null) {
        tryCatch(() {
          arguments.add(Arguments.fromJson(asT<Map<String, dynamic>>(item)!));
        });
      }
    }
    return ErrorRoot(
      codes: codes!,
      arguments: arguments,
      defaultMessage: asT<String>(jsonRes['defaultMessage'])!,
      objectName: asT<String>(jsonRes['objectName'])!,
      field: asT<String>(jsonRes['field'])!,
      rejectedValue: asT<Object>(jsonRes['rejectedValue'])!,
      bindingFailure: asT<bool>(jsonRes['bindingFailure'])!,
      code: asT<String>(jsonRes['code'])!,
    );
  }

  List<String> codes;
  List<Arguments> arguments;
  String defaultMessage;
  String objectName;
  String field;
  Object rejectedValue;
  bool bindingFailure;
  String code;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'codes': codes,
        'arguments': arguments,
        'defaultMessage': defaultMessage,
        'objectName': objectName,
        'field': field,
        'rejectedValue': rejectedValue,
        'bindingFailure': bindingFailure,
        'code': code,
      };

  ErrorRoot clone() => ErrorRoot.fromJson(
      asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}

class Arguments {
  Arguments({
    required this.codes,
    required this.arguments,
    required this.defaultMessage,
    required this.code,
  });

  factory Arguments.fromJson(Map<String, dynamic> jsonRes) {
    final List<String>? codes = jsonRes['codes'] is List ? <String>[] : null;
    if (codes != null) {
      for (final dynamic item in jsonRes['codes']!) {
        if (item != null) {
          tryCatch(() {
            codes.add(asT<String>(item)!);
          });
        }
      }
    }
    return Arguments(
      codes: codes!,
      arguments: asT<Object>(jsonRes['arguments'])!,
      defaultMessage: asT<String>(jsonRes['defaultMessage'])!,
      code: asT<String>(jsonRes['code'])!,
    );
  }

  List<String> codes;
  Object arguments;
  String defaultMessage;
  String code;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'codes': codes,
        'arguments': arguments,
        'defaultMessage': defaultMessage,
        'code': code,
      };

  Arguments clone() => Arguments.fromJson(
      asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}
