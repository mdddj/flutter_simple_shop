// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Pageable _$PageableFromJson(Map<String, dynamic> json) {
  return _Pageable.fromJson(json);
}

/// @nodoc
mixin _$Pageable {
  PageableSort get sort => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  bool get unpaged => throw _privateConstructorUsedError;
  bool get paged => throw _privateConstructorUsedError;

  /// Serializes this Pageable to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Pageable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PageableCopyWith<Pageable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageableCopyWith<$Res> {
  factory $PageableCopyWith(Pageable value, $Res Function(Pageable) then) =
      _$PageableCopyWithImpl<$Res, Pageable>;
  @useResult
  $Res call(
      {PageableSort sort,
      int offset,
      int pageNumber,
      int pageSize,
      bool unpaged,
      bool paged});

  $PageableSortCopyWith<$Res> get sort;
}

/// @nodoc
class _$PageableCopyWithImpl<$Res, $Val extends Pageable>
    implements $PageableCopyWith<$Res> {
  _$PageableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Pageable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sort = null,
    Object? offset = null,
    Object? pageNumber = null,
    Object? pageSize = null,
    Object? unpaged = null,
    Object? paged = null,
  }) {
    return _then(_value.copyWith(
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as PageableSort,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      unpaged: null == unpaged
          ? _value.unpaged
          : unpaged // ignore: cast_nullable_to_non_nullable
              as bool,
      paged: null == paged
          ? _value.paged
          : paged // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of Pageable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageableSortCopyWith<$Res> get sort {
    return $PageableSortCopyWith<$Res>(_value.sort, (value) {
      return _then(_value.copyWith(sort: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PageableImplCopyWith<$Res>
    implements $PageableCopyWith<$Res> {
  factory _$$PageableImplCopyWith(
          _$PageableImpl value, $Res Function(_$PageableImpl) then) =
      __$$PageableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PageableSort sort,
      int offset,
      int pageNumber,
      int pageSize,
      bool unpaged,
      bool paged});

  @override
  $PageableSortCopyWith<$Res> get sort;
}

/// @nodoc
class __$$PageableImplCopyWithImpl<$Res>
    extends _$PageableCopyWithImpl<$Res, _$PageableImpl>
    implements _$$PageableImplCopyWith<$Res> {
  __$$PageableImplCopyWithImpl(
      _$PageableImpl _value, $Res Function(_$PageableImpl) _then)
      : super(_value, _then);

  /// Create a copy of Pageable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sort = null,
    Object? offset = null,
    Object? pageNumber = null,
    Object? pageSize = null,
    Object? unpaged = null,
    Object? paged = null,
  }) {
    return _then(_$PageableImpl(
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as PageableSort,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      unpaged: null == unpaged
          ? _value.unpaged
          : unpaged // ignore: cast_nullable_to_non_nullable
              as bool,
      paged: null == paged
          ? _value.paged
          : paged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PageableImpl implements _Pageable {
  const _$PageableImpl(
      {this.sort = const PageableSort(),
      this.offset = 0,
      this.pageNumber = 0,
      this.pageSize = 0,
      this.unpaged = false,
      this.paged = false});

  factory _$PageableImpl.fromJson(Map<String, dynamic> json) =>
      _$$PageableImplFromJson(json);

  @override
  @JsonKey()
  final PageableSort sort;
  @override
  @JsonKey()
  final int offset;
  @override
  @JsonKey()
  final int pageNumber;
  @override
  @JsonKey()
  final int pageSize;
  @override
  @JsonKey()
  final bool unpaged;
  @override
  @JsonKey()
  final bool paged;

  @override
  String toString() {
    return 'Pageable(sort: $sort, offset: $offset, pageNumber: $pageNumber, pageSize: $pageSize, unpaged: $unpaged, paged: $paged)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageableImpl &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.unpaged, unpaged) || other.unpaged == unpaged) &&
            (identical(other.paged, paged) || other.paged == paged));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, sort, offset, pageNumber, pageSize, unpaged, paged);

  /// Create a copy of Pageable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PageableImplCopyWith<_$PageableImpl> get copyWith =>
      __$$PageableImplCopyWithImpl<_$PageableImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PageableImplToJson(
      this,
    );
  }
}

abstract class _Pageable implements Pageable {
  const factory _Pageable(
      {final PageableSort sort,
      final int offset,
      final int pageNumber,
      final int pageSize,
      final bool unpaged,
      final bool paged}) = _$PageableImpl;

  factory _Pageable.fromJson(Map<String, dynamic> json) =
      _$PageableImpl.fromJson;

  @override
  PageableSort get sort;
  @override
  int get offset;
  @override
  int get pageNumber;
  @override
  int get pageSize;
  @override
  bool get unpaged;
  @override
  bool get paged;

  /// Create a copy of Pageable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PageableImplCopyWith<_$PageableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PageableSort _$PageableSortFromJson(Map<String, dynamic> json) {
  return _PageableSort.fromJson(json);
}

/// @nodoc
mixin _$PageableSort {
  String get ref => throw _privateConstructorUsedError;

  /// Serializes this PageableSort to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PageableSort
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PageableSortCopyWith<PageableSort> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageableSortCopyWith<$Res> {
  factory $PageableSortCopyWith(
          PageableSort value, $Res Function(PageableSort) then) =
      _$PageableSortCopyWithImpl<$Res, PageableSort>;
  @useResult
  $Res call({String ref});
}

/// @nodoc
class _$PageableSortCopyWithImpl<$Res, $Val extends PageableSort>
    implements $PageableSortCopyWith<$Res> {
  _$PageableSortCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PageableSort
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ref = null,
  }) {
    return _then(_value.copyWith(
      ref: null == ref
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PageableSortImplCopyWith<$Res>
    implements $PageableSortCopyWith<$Res> {
  factory _$$PageableSortImplCopyWith(
          _$PageableSortImpl value, $Res Function(_$PageableSortImpl) then) =
      __$$PageableSortImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ref});
}

/// @nodoc
class __$$PageableSortImplCopyWithImpl<$Res>
    extends _$PageableSortCopyWithImpl<$Res, _$PageableSortImpl>
    implements _$$PageableSortImplCopyWith<$Res> {
  __$$PageableSortImplCopyWithImpl(
      _$PageableSortImpl _value, $Res Function(_$PageableSortImpl) _then)
      : super(_value, _then);

  /// Create a copy of PageableSort
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ref = null,
  }) {
    return _then(_$PageableSortImpl(
      ref: null == ref
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PageableSortImpl extends _PageableSort {
  const _$PageableSortImpl({this.ref = ""}) : super._();

  factory _$PageableSortImpl.fromJson(Map<String, dynamic> json) =>
      _$$PageableSortImplFromJson(json);

  @override
  @JsonKey()
  final String ref;

  @override
  String toString() {
    return 'PageableSort(ref: $ref)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageableSortImpl &&
            (identical(other.ref, ref) || other.ref == ref));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ref);

  /// Create a copy of PageableSort
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PageableSortImplCopyWith<_$PageableSortImpl> get copyWith =>
      __$$PageableSortImplCopyWithImpl<_$PageableSortImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PageableSortImplToJson(
      this,
    );
  }
}

abstract class _PageableSort extends PageableSort {
  const factory _PageableSort({final String ref}) = _$PageableSortImpl;
  const _PageableSort._() : super._();

  factory _PageableSort.fromJson(Map<String, dynamic> json) =
      _$PageableSortImpl.fromJson;

  @override
  String get ref;

  /// Create a copy of PageableSort
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PageableSortImplCopyWith<_$PageableSortImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderAllDataSort _$OrderAllDataSortFromJson(Map<String, dynamic> json) {
  return _OrderAllDataSort.fromJson(json);
}

/// @nodoc
mixin _$OrderAllDataSort {
  bool get sorted => throw _privateConstructorUsedError;
  bool get unsorted => throw _privateConstructorUsedError;
  bool get empty => throw _privateConstructorUsedError;

  /// Serializes this OrderAllDataSort to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderAllDataSort
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderAllDataSortCopyWith<OrderAllDataSort> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderAllDataSortCopyWith<$Res> {
  factory $OrderAllDataSortCopyWith(
          OrderAllDataSort value, $Res Function(OrderAllDataSort) then) =
      _$OrderAllDataSortCopyWithImpl<$Res, OrderAllDataSort>;
  @useResult
  $Res call({bool sorted, bool unsorted, bool empty});
}

/// @nodoc
class _$OrderAllDataSortCopyWithImpl<$Res, $Val extends OrderAllDataSort>
    implements $OrderAllDataSortCopyWith<$Res> {
  _$OrderAllDataSortCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderAllDataSort
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sorted = null,
    Object? unsorted = null,
    Object? empty = null,
  }) {
    return _then(_value.copyWith(
      sorted: null == sorted
          ? _value.sorted
          : sorted // ignore: cast_nullable_to_non_nullable
              as bool,
      unsorted: null == unsorted
          ? _value.unsorted
          : unsorted // ignore: cast_nullable_to_non_nullable
              as bool,
      empty: null == empty
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderAllDataSortImplCopyWith<$Res>
    implements $OrderAllDataSortCopyWith<$Res> {
  factory _$$OrderAllDataSortImplCopyWith(_$OrderAllDataSortImpl value,
          $Res Function(_$OrderAllDataSortImpl) then) =
      __$$OrderAllDataSortImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool sorted, bool unsorted, bool empty});
}

/// @nodoc
class __$$OrderAllDataSortImplCopyWithImpl<$Res>
    extends _$OrderAllDataSortCopyWithImpl<$Res, _$OrderAllDataSortImpl>
    implements _$$OrderAllDataSortImplCopyWith<$Res> {
  __$$OrderAllDataSortImplCopyWithImpl(_$OrderAllDataSortImpl _value,
      $Res Function(_$OrderAllDataSortImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderAllDataSort
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sorted = null,
    Object? unsorted = null,
    Object? empty = null,
  }) {
    return _then(_$OrderAllDataSortImpl(
      sorted: null == sorted
          ? _value.sorted
          : sorted // ignore: cast_nullable_to_non_nullable
              as bool,
      unsorted: null == unsorted
          ? _value.unsorted
          : unsorted // ignore: cast_nullable_to_non_nullable
              as bool,
      empty: null == empty
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderAllDataSortImpl implements _OrderAllDataSort {
  const _$OrderAllDataSortImpl(
      {this.sorted = false, this.unsorted = false, this.empty = false});

  factory _$OrderAllDataSortImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderAllDataSortImplFromJson(json);

  @override
  @JsonKey()
  final bool sorted;
  @override
  @JsonKey()
  final bool unsorted;
  @override
  @JsonKey()
  final bool empty;

  @override
  String toString() {
    return 'OrderAllDataSort(sorted: $sorted, unsorted: $unsorted, empty: $empty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderAllDataSortImpl &&
            (identical(other.sorted, sorted) || other.sorted == sorted) &&
            (identical(other.unsorted, unsorted) ||
                other.unsorted == unsorted) &&
            (identical(other.empty, empty) || other.empty == empty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sorted, unsorted, empty);

  /// Create a copy of OrderAllDataSort
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderAllDataSortImplCopyWith<_$OrderAllDataSortImpl> get copyWith =>
      __$$OrderAllDataSortImplCopyWithImpl<_$OrderAllDataSortImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderAllDataSortImplToJson(
      this,
    );
  }
}

abstract class _OrderAllDataSort implements OrderAllDataSort {
  const factory _OrderAllDataSort(
      {final bool sorted,
      final bool unsorted,
      final bool empty}) = _$OrderAllDataSortImpl;

  factory _OrderAllDataSort.fromJson(Map<String, dynamic> json) =
      _$OrderAllDataSortImpl.fromJson;

  @override
  bool get sorted;
  @override
  bool get unsorted;
  @override
  bool get empty;

  /// Create a copy of OrderAllDataSort
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderAllDataSortImplCopyWith<_$OrderAllDataSortImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
