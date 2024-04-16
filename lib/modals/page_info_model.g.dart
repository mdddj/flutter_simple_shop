// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PageableImpl _$$PageableImplFromJson(Map<String, dynamic> json) =>
    _$PageableImpl(
      sort: json['sort'] == null
          ? const PageableSort()
          : PageableSort.fromJson(json['sort'] as Map<String, dynamic>),
      offset: json['offset'] as int? ?? 0,
      pageNumber: json['pageNumber'] as int? ?? 0,
      pageSize: json['pageSize'] as int? ?? 0,
      unpaged: json['unpaged'] as bool? ?? false,
      paged: json['paged'] as bool? ?? false,
    );

Map<String, dynamic> _$$PageableImplToJson(_$PageableImpl instance) =>
    <String, dynamic>{
      'sort': instance.sort,
      'offset': instance.offset,
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'unpaged': instance.unpaged,
      'paged': instance.paged,
    };

_$PageableSortImpl _$$PageableSortImplFromJson(Map<String, dynamic> json) =>
    _$PageableSortImpl(
      ref: json['ref'] as String? ?? "",
    );

Map<String, dynamic> _$$PageableSortImplToJson(_$PageableSortImpl instance) =>
    <String, dynamic>{
      'ref': instance.ref,
    };

_$OrderAllDataSortImpl _$$OrderAllDataSortImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderAllDataSortImpl(
      sorted: json['sorted'] as bool? ?? false,
      unsorted: json['unsorted'] as bool? ?? false,
      empty: json['empty'] as bool? ?? false,
    );

Map<String, dynamic> _$$OrderAllDataSortImplToJson(
        _$OrderAllDataSortImpl instance) =>
    <String, dynamic>{
      'sorted': instance.sorted,
      'unsorted': instance.unsorted,
      'empty': instance.empty,
    };
