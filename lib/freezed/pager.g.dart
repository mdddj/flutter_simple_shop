// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pager.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PagerImpl _$$PagerImplFromJson(Map<String, dynamic> json) => _$PagerImpl(
      routername: json['routerName'] as String? ?? '',
      params: json['params'] == null
          ? null
          : PagerParams.fromJson(json['params'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PagerImplToJson(_$PagerImpl instance) =>
    <String, dynamic>{
      'routerName': instance.routername,
      'params': instance.params,
    };

_$PagerParamsImpl _$$PagerParamsImplFromJson(Map<String, dynamic> json) =>
    _$PagerParamsImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PagerParamsImplToJson(_$PagerParamsImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$DynPageParamsImpl _$$DynPageParamsImplFromJson(Map<String, dynamic> json) =>
    _$DynPageParamsImpl(
      name: json['name'] as String,
      emptyText: json['emptyText'] as String? ?? '暂无动态，快去发布一条吧',
      style: $enumDecodeNullable(
              _$ResourceWidgetCardStyleEnumMap, json['style']) ??
          ResourceWidgetCardStyle.waterfall,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DynPageParamsImplToJson(_$DynPageParamsImpl instance) =>
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

_$DynWriteParamsImpl _$$DynWriteParamsImplFromJson(Map<String, dynamic> json) =>
    _$DynWriteParamsImpl(
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

Map<String, dynamic> _$$DynWriteParamsImplToJson(
        _$DynWriteParamsImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'productShare': instance.productShare,
      'title': instance.title,
      'disableSelectOtherCategory': instance.disableSelectOtherCategory,
      'hintText': instance.hintText,
      'runtimeType': instance.$type,
    };
