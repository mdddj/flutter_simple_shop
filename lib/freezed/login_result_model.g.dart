// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginResultModel _$$_LoginResultModelFromJson(Map<String, dynamic> json) =>
    _$_LoginResultModel(
      token: json['token'] as String,
      user: MyUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LoginResultModelToJson(_$_LoginResultModel instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user': instance.user,
    };
