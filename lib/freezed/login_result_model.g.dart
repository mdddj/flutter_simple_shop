// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginResultModel _$LoginResultModelFromJson(Map<String, dynamic> json) =>
    _LoginResultModel(
      token: json['token'] as String,
      user: MyUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResultModelToJson(_LoginResultModel instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user': instance.user,
    };
