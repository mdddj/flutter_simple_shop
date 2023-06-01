// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddMeetParams _$$_AddMeetParamsFromJson(Map<String, dynamic> json) =>
    _$_AddMeetParams(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      age: json['age'] as int? ?? 0,
      soulname: json['soulName'] as String? ?? '',
      soulcodeimage: json['soulCodeImage'] as String? ?? '',
      mianjiinfo: json['mianjiInfo'] as String? ?? '',
      location: json['location'] as String? ?? '',
      tolocation: json['toLocation'] as String? ?? '',
      aboutdiandian: json['aboutDiandian'] as String? ?? '',
      state: json['state'] as int? ?? 0,
    );

Map<String, dynamic> _$$_AddMeetParamsToJson(_$_AddMeetParams instance) =>
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
