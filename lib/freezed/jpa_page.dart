import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'jpa_page.freezed.dart';
part 'jpa_page.g.dart';


@freezed
class JpaPage with _$JpaPage {
  const JpaPage._();

  const factory JpaPage({
    @JsonKey(name: 'content') @Default(IListConst([]))  IList<dynamic> content,
      @JsonKey(name: 'empty') @Default(false)  bool empty,
      @JsonKey(name: 'first') @Default(false)  bool first,
      @JsonKey(name: 'last') @Default(false)  bool last,
      @JsonKey(name: 'number') @Default(0)  int number,
      @JsonKey(name: 'numberOfElements') @Default(0)  int numberOfElements,
      @JsonKey(name: 'pageable') @Default(Pageable())  Pageable pageable,
      @JsonKey(name: 'size') @Default(0)  int size,
      @JsonKey(name: 'sort') @Default(Sort())  Sort sort,
      @JsonKey(name: 'totalElements') @Default(0)  int totalElements,
      @JsonKey(name: 'totalPages') @Default(0)  int totalpages,
    }) = _JpaPage;
  
  factory JpaPage.fromJson(Map<String, dynamic> json) => _$JpaPageFromJson(json);

}


@freezed
class Pageable with _$Pageable {
  const Pageable._();

  const factory Pageable({
      @JsonKey(name: 'offset') @Default(0)  int offset,
      @JsonKey(name: 'pageNumber') @Default(0)  int pageNumber,
      @JsonKey(name: 'pageSize') @Default(0)  int pageSize,
      @JsonKey(name: 'paged') @Default(false)  bool paged,
      @JsonKey(name: 'sort') @Default(Sort())  Sort sort,
      @JsonKey(name: 'unpaged') @Default(false)  bool unpaged,
    }) = _Pageable;
  
  factory Pageable.fromJson(Map<String, dynamic> json) => _$PageableFromJson(json);

}


@freezed
class Sort with _$Sort {
  const Sort._();

  const factory Sort({
      @JsonKey(name: 'empty') @Default(false)  bool empty,
      @JsonKey(name: 'sorted') @Default(false)  bool sorted,
      @JsonKey(name: 'unsorted') @Default(false)  bool unsorted,
    }) = _Sort;
  
  factory Sort.fromJson(Map<String, dynamic> json) => _$SortFromJson(json);

}

