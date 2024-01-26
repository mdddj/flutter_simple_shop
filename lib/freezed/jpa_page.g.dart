// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jpa_page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JpaPageImpl _$$JpaPageImplFromJson(Map<String, dynamic> json) =>
    _$JpaPageImpl(
      content: json['content'] == null
          ? const IListConst([])
          : IList<dynamic>.fromJson(json['content'], (value) => value),
      empty: json['empty'] as bool? ?? false,
      first: json['first'] as bool? ?? false,
      last: json['last'] as bool? ?? false,
      number: json['number'] as int? ?? 0,
      numberOfElements: json['numberOfElements'] as int? ?? 0,
      pageable: json['pageable'] == null
          ? const Pageable()
          : Pageable.fromJson(json['pageable'] as Map<String, dynamic>),
      size: json['size'] as int? ?? 0,
      sort: json['sort'] == null
          ? const Sort()
          : Sort.fromJson(json['sort'] as Map<String, dynamic>),
      totalElements: json['totalElements'] as int? ?? 0,
      totalpages: json['totalPages'] as int? ?? 0,
    );

Map<String, dynamic> _$$JpaPageImplToJson(_$JpaPageImpl instance) =>
    <String, dynamic>{
      'content': instance.content.toJson(
        (value) => value,
      ),
      'empty': instance.empty,
      'first': instance.first,
      'last': instance.last,
      'number': instance.number,
      'numberOfElements': instance.numberOfElements,
      'pageable': instance.pageable,
      'size': instance.size,
      'sort': instance.sort,
      'totalElements': instance.totalElements,
      'totalPages': instance.totalpages,
    };

_$PageableImpl _$$PageableImplFromJson(Map<String, dynamic> json) =>
    _$PageableImpl(
      offset: json['offset'] as int? ?? 0,
      pageNumber: json['pageNumber'] as int? ?? 0,
      pageSize: json['pageSize'] as int? ?? 0,
      paged: json['paged'] as bool? ?? false,
      sort: json['sort'] == null
          ? const Sort()
          : Sort.fromJson(json['sort'] as Map<String, dynamic>),
      unpaged: json['unpaged'] as bool? ?? false,
    );

Map<String, dynamic> _$$PageableImplToJson(_$PageableImpl instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'paged': instance.paged,
      'sort': instance.sort,
      'unpaged': instance.unpaged,
    };

_$SortImpl _$$SortImplFromJson(Map<String, dynamic> json) => _$SortImpl(
      empty: json['empty'] as bool? ?? false,
      sorted: json['sorted'] as bool? ?? false,
      unsorted: json['unsorted'] as bool? ?? false,
    );

Map<String, dynamic> _$$SortImplToJson(_$SortImpl instance) =>
    <String, dynamic>{
      'empty': instance.empty,
      'sorted': instance.sorted,
      'unsorted': instance.unsorted,
    };
