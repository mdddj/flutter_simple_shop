// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDetailModalImpl _$$UserDetailModalImplFromJson(
        Map<String, dynamic> json) =>
    _$UserDetailModalImpl(
      user: json['user'] == null
          ? null
          : MyUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserDetailModalImplToJson(
        _$UserDetailModalImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
    };
