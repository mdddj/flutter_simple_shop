// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginParamsImpl _$$LoginParamsImplFromJson(Map<String, dynamic> json) =>
    _$LoginParamsImpl(
      logintype: json['loginType'] as String? ?? '',
      password: json['password'] as String? ?? '',
      loginnumber: json['loginNumber'] as String? ?? '',
    );

Map<String, dynamic> _$$LoginParamsImplToJson(_$LoginParamsImpl instance) =>
    <String, dynamic>{
      'loginType': instance.logintype,
      'password': instance.password,
      'loginNumber': instance.loginnumber,
    };
