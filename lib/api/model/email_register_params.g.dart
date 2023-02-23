// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_register_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmailRegisterParams _$$_EmailRegisterParamsFromJson(
        Map<String, dynamic> json) =>
    _$_EmailRegisterParams(
      email: json['email'] as String? ?? '',
      code: json['code'] as String? ?? '',
      password: json['password'] as String? ?? '',
    );

Map<String, dynamic> _$$_EmailRegisterParamsToJson(
        _$_EmailRegisterParams instance) =>
    <String, dynamic>{
      'email': instance.email,
      'code': instance.code,
      'password': instance.password,
    };
