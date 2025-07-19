// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pager.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Pager _$PagerFromJson(Map<String, dynamic> json) => _Pager(
      routername: json['routerName'] as String? ?? '',
      params: json['params'] == null
          ? null
          : PagerParams.fromJson(json['params'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PagerToJson(_Pager instance) => <String, dynamic>{
      'routerName': instance.routername,
      'params': instance.params,
    };

DefaultPagerParams _$DefaultPagerParamsFromJson(Map<String, dynamic> json) =>
    DefaultPagerParams(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$DefaultPagerParamsToJson(DefaultPagerParams instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

DynPageParams _$DynPageParamsFromJson(Map<String, dynamic> json) =>
    DynPageParams(
      name: json['name'] as String,
      emptyText: json['emptyText'] as String? ?? '暂无动态，快去发布一条吧',
      style: $enumDecodeNullable(
              _$ResourceWidgetCardStyleEnumMap, json['style']) ??
          ResourceWidgetCardStyle.waterfall,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$DynPageParamsToJson(DynPageParams instance) =>
    <String, dynamic>{
      'name': instance.name,
      'emptyText': instance.emptyText,
      'style': _$ResourceWidgetCardStyleEnumMap[instance.style]!,
      'runtimeType': instance.$type,
    };

const _$ResourceWidgetCardStyleEnumMap = {
  ResourceWidgetCardStyle.waterfall: 'waterfall',
  ResourceWidgetCardStyle.card: 'card',
};

DynWriteParams _$DynWriteParamsFromJson(Map<String, dynamic> json) =>
    DynWriteParams(
      name: json['name'] as String,
      productShare: json['productShare'] == null
          ? null
          : ProductShare.fromJson(json['productShare'] as Map<String, dynamic>),
      title: json['title'] as String?,
      disableSelectOtherCategory:
          json['disableSelectOtherCategory'] as bool? ?? false,
      hintText: json['hintText'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$DynWriteParamsToJson(DynWriteParams instance) =>
    <String, dynamic>{
      'name': instance.name,
      'productShare': instance.productShare,
      'title': instance.title,
      'disableSelectOtherCategory': instance.disableSelectOtherCategory,
      'hintText': instance.hintText,
      'runtimeType': instance.$type,
    };
