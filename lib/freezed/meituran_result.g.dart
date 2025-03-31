// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meituran_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MeituanResult _$MeituanResultFromJson(Map<String, dynamic> json) =>
    _MeituanResult(
      data: json['data'] as String? ?? '',
      des: json['des'] as String? ?? '',
      status: (json['status'] as num?)?.toInt() ?? 0,
      successful: json['successful'] as bool? ?? false,
    );

Map<String, dynamic> _$MeituanResultToJson(_MeituanResult instance) =>
    <String, dynamic>{
      'data': instance.data,
      'des': instance.des,
      'status': instance.status,
      'successful': instance.successful,
    };
