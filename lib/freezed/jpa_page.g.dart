// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jpa_page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JpaPage _$$_JpaPageFromJson(Map<String, dynamic> json) => _$_JpaPage(
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

Map<String, dynamic> _$$_JpaPageToJson(_$_JpaPage instance) =>
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

_$_Pageable _$$_PageableFromJson(Map<String, dynamic> json) => _$_Pageable(
      offset: json['offset'] as int? ?? 0,
      pageNumber: json['pageNumber'] as int? ?? 0,
      pageSize: json['pageSize'] as int? ?? 0,
      paged: json['paged'] as bool? ?? false,
      sort: json['sort'] == null
          ? const Sort()
          : Sort.fromJson(json['sort'] as Map<String, dynamic>),
      unpaged: json['unpaged'] as bool? ?? false,
    );

Map<String, dynamic> _$$_PageableToJson(_$_Pageable instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'paged': instance.paged,
      'sort': instance.sort,
      'unpaged': instance.unpaged,
    };

_$_Sort _$$_SortFromJson(Map<String, dynamic> json) => _$_Sort(
      empty: json['empty'] as bool? ?? false,
      sorted: json['sorted'] as bool? ?? false,
      unsorted: json['unsorted'] as bool? ?? false,
    );

Map<String, dynamic> _$$_SortToJson(_$_Sort instance) => <String, dynamic>{
      'empty': instance.empty,
      'sorted': instance.sorted,
      'unsorted': instance.unsorted,
    };
