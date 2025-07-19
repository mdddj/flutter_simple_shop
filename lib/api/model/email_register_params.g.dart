// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_register_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EmailRegisterParams _$EmailRegisterParamsFromJson(Map<String, dynamic> json) =>
    _EmailRegisterParams(
      email: json['email'] as String? ?? '',
      code: json['code'] as String? ?? '',
      password: json['password'] as String? ?? '',
    );

Map<String, dynamic> _$EmailRegisterParamsToJson(
        _EmailRegisterParams instance) =>
    <String, dynamic>{
      'email': instance.email,
      'code': instance.code,
      'password': instance.password,
    };
