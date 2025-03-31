// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddMeetParams _$AddMeetParamsFromJson(Map<String, dynamic> json) =>
    _AddMeetParams(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      age: (json['age'] as num?)?.toInt() ?? 0,
      soulname: json['soulName'] as String? ?? '',
      soulcodeimage: json['soulCodeImage'] as String? ?? '',
      mianjiinfo: json['mianjiInfo'] as String? ?? '',
      location: json['location'] as String? ?? '',
      tolocation: json['toLocation'] as String? ?? '',
      aboutdiandian: json['aboutDiandian'] as String? ?? '',
      state: (json['state'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$AddMeetParamsToJson(_AddMeetParams instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'age': instance.age,
      'soulName': instance.soulname,
      'soulCodeImage': instance.soulcodeimage,
      'mianjiInfo': instance.mianjiinfo,
      'location': instance.location,
      'toLocation': instance.tolocation,
      'aboutDiandian': instance.aboutdiandian,
      'state': instance.state,
    };
