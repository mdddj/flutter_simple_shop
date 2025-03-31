// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserDetailModal _$UserDetailModalFromJson(Map<String, dynamic> json) =>
    _UserDetailModal(
      user:
          json['user'] == null
              ? null
              : MyUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserDetailModalToJson(_UserDetailModal instance) =>
    <String, dynamic>{'user': instance.user};
