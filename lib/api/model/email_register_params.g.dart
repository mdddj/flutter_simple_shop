// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_register_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmailRegisterParamsImpl _$$EmailRegisterParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$EmailRegisterParamsImpl(
      email: json['email'] as String? ?? '',
      code: json['code'] as String? ?? '',
      password: json['password'] as String? ?? '',
    );

Map<String, dynamic> _$$EmailRegisterParamsImplToJson(
        _$EmailRegisterParamsImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'code': instance.code,
      'password': instance.password,
    };
