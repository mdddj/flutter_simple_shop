// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginParams _$$_LoginParamsFromJson(Map<String, dynamic> json) =>
    _$_LoginParams(
      logintype: json['loginType'] as String? ?? '',
      password: json['password'] as String? ?? '',
      loginnumber: json['loginNumber'] as String? ?? '',
    );

Map<String, dynamic> _$$_LoginParamsToJson(_$_LoginParams instance) =>
    <String, dynamic>{
      'loginType': instance.logintype,
      'password': instance.password,
      'loginNumber': instance.loginnumber,
    };
