// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Pageable _$PageableFromJson(Map<String, dynamic> json) => _Pageable(
      sort: json['sort'] == null
          ? const PageableSort()
          : PageableSort.fromJson(json['sort'] as Map<String, dynamic>),
      offset: (json['offset'] as num?)?.toInt() ?? 0,
      pageNumber: (json['pageNumber'] as num?)?.toInt() ?? 0,
      pageSize: (json['pageSize'] as num?)?.toInt() ?? 0,
      unpaged: json['unpaged'] as bool? ?? false,
      paged: json['paged'] as bool? ?? false,
    );

Map<String, dynamic> _$PageableToJson(_Pageable instance) => <String, dynamic>{
      'sort': instance.sort,
      'offset': instance.offset,
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'unpaged': instance.unpaged,
      'paged': instance.paged,
    };

_PageableSort _$PageableSortFromJson(Map<String, dynamic> json) =>
    _PageableSort(
      ref: json['ref'] as String? ?? "",
    );

Map<String, dynamic> _$PageableSortToJson(_PageableSort instance) =>
    <String, dynamic>{
      'ref': instance.ref,
    };

_OrderAllDataSort _$OrderAllDataSortFromJson(Map<String, dynamic> json) =>
    _OrderAllDataSort(
      sorted: json['sorted'] as bool? ?? false,
      unsorted: json['unsorted'] as bool? ?? false,
      empty: json['empty'] as bool? ?? false,
    );

Map<String, dynamic> _$OrderAllDataSortToJson(_OrderAllDataSort instance) =>
    <String, dynamic>{
      'sorted': instance.sorted,
      'unsorted': instance.unsorted,
      'empty': instance.empty,
    };
