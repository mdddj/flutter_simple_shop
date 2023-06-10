// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pager.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pager _$$_PagerFromJson(Map<String, dynamic> json) => _$_Pager(
      routername: json['routerName'] as String? ?? '',
      params: json['params'] == null
          ? null
          : PagerParams.fromJson(json['params'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PagerToJson(_$_Pager instance) => <String, dynamic>{
      'routerName': instance.routername,
      'params': instance.params,
    };

_$_PagerParams _$$_PagerParamsFromJson(Map<String, dynamic> json) =>
    _$_PagerParams(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_PagerParamsToJson(_$_PagerParams instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$DynPageParams _$$DynPageParamsFromJson(Map<String, dynamic> json) =>
    _$DynPageParams(
      name: json['name'] as String,
      emptyText: json['emptyText'] as String? ?? '暂无动态，快去发布一条吧',
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DynPageParamsToJson(_$DynPageParams instance) =>
    <String, dynamic>{
      'name': instance.name,
      'emptyText': instance.emptyText,
      'runtimeType': instance.$type,
    };

_$DynWriteParams _$$DynWriteParamsFromJson(Map<String, dynamic> json) =>
    _$DynWriteParams(
      name: json['name'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DynWriteParamsToJson(_$DynWriteParams instance) =>
    <String, dynamic>{
      'name': instance.name,
      'runtimeType': instance.$type,
    };
