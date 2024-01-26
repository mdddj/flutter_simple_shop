// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResultModelImpl _$$LoginResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginResultModelImpl(
      token: json['token'] as String,
      user: MyUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginResultModelImplToJson(
        _$LoginResultModelImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user': instance.user,
    };
