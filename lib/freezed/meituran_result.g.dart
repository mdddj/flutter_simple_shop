// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meituran_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MeituanResult _$$_MeituanResultFromJson(Map<String, dynamic> json) =>
    _$_MeituanResult(
      data: json['data'] as String? ?? '',
      des: json['des'] as String? ?? '',
      status: json['status'] as int? ?? 0,
      successful: json['successful'] as bool? ?? false,
    );

Map<String, dynamic> _$$_MeituanResultToJson(_$_MeituanResult instance) =>
    <String, dynamic>{
      'data': instance.data,
      'des': instance.des,
      'status': instance.status,
      'successful': instance.successful,
    };
