// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jpa_page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_JpaPage _$JpaPageFromJson(Map<String, dynamic> json) => _JpaPage(
  content:
      json['content'] == null
          ? const IListConst([])
          : IList<dynamic>.fromJson(json['content'], (value) => value),
  empty: json['empty'] as bool? ?? false,
  first: json['first'] as bool? ?? false,
  last: json['last'] as bool? ?? false,
  number: (json['number'] as num?)?.toInt() ?? 0,
  numberOfElements: (json['numberOfElements'] as num?)?.toInt() ?? 0,
  pageable:
      json['pageable'] == null
          ? const Pageable()
          : Pageable.fromJson(json['pageable'] as Map<String, dynamic>),
  size: (json['size'] as num?)?.toInt() ?? 0,
  sort:
      json['sort'] == null
          ? const Sort()
          : Sort.fromJson(json['sort'] as Map<String, dynamic>),
  totalElements: (json['totalElements'] as num?)?.toInt() ?? 0,
  totalpages: (json['totalPages'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$JpaPageToJson(_JpaPage instance) => <String, dynamic>{
  'content': instance.content.toJson((value) => value),
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

_Pageable _$PageableFromJson(Map<String, dynamic> json) => _Pageable(
  offset: (json['offset'] as num?)?.toInt() ?? 0,
  pageNumber: (json['pageNumber'] as num?)?.toInt() ?? 0,
  pageSize: (json['pageSize'] as num?)?.toInt() ?? 0,
  paged: json['paged'] as bool? ?? false,
  sort:
      json['sort'] == null
          ? const Sort()
          : Sort.fromJson(json['sort'] as Map<String, dynamic>),
  unpaged: json['unpaged'] as bool? ?? false,
);

Map<String, dynamic> _$PageableToJson(_Pageable instance) => <String, dynamic>{
  'offset': instance.offset,
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'paged': instance.paged,
  'sort': instance.sort,
  'unpaged': instance.unpaged,
};

_Sort _$SortFromJson(Map<String, dynamic> json) => _Sort(
  empty: json['empty'] as bool? ?? false,
  sorted: json['sorted'] as bool? ?? false,
  unsorted: json['unsorted'] as bool? ?? false,
);

Map<String, dynamic> _$SortToJson(_Sort instance) => <String, dynamic>{
  'empty': instance.empty,
  'sorted': instance.sorted,
  'unsorted': instance.unsorted,
};
