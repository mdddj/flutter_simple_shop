// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meituran_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeituanResultImpl _$$MeituanResultImplFromJson(Map<String, dynamic> json) =>
    _$MeituanResultImpl(
      data: json['data'] as String? ?? '',
      des: json['des'] as String? ?? '',
      status: (json['status'] as num?)?.toInt() ?? 0,
      successful: json['successful'] as bool? ?? false,
    );

Map<String, dynamic> _$$MeituanResultImplToJson(_$MeituanResultImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'des': instance.des,
      'status': instance.status,
      'successful': instance.successful,
    };
