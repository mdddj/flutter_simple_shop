import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_info_model.freezed.dart';

part 'page_info_model.g.dart';

@freezed
sealed class Pageable with _$Pageable {
  const factory Pageable({
    @Default(PageableSort()) PageableSort sort,
    @Default(0) int offset,
    @Default(0) int pageNumber,
    @Default(0) int pageSize,
    @Default(false) bool unpaged,
    @Default(false) bool paged,
  }) = _Pageable;

  factory Pageable.fromJson(Map<String, dynamic> json) =>
      _$PageableFromJson(json);
}

@freezed
sealed class PageableSort with _$PageableSort {
  const PageableSort._();

  const factory PageableSort({@Default("") String ref}) = _PageableSort;

  factory PageableSort.fromJson(Map<String, dynamic> json) =>
      _$PageableSortFromJson(json);
}

@freezed
sealed class OrderAllDataSort with _$OrderAllDataSort {
  const factory OrderAllDataSort({
    @Default(false) bool sorted,
    @Default(false) bool unsorted,
    @Default(false) bool empty,
  }) = _OrderAllDataSort;

  factory OrderAllDataSort.fromJson(Map<String, dynamic> json) =>
      _$OrderAllDataSortFromJson(json);
}
