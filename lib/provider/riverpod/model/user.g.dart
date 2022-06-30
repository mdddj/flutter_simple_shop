// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDetailModal _$$_UserDetailModalFromJson(Map<String, dynamic> json) =>
    _$_UserDetailModal(
      user: json['user'] == null
          ? null
          : MyUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserDetailModalToJson(_$_UserDetailModal instance) =>
    <String, dynamic>{
      'user': instance.user,
    };
