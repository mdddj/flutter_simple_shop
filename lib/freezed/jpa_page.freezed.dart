// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jpa_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JpaPage _$JpaPageFromJson(Map<String, dynamic> json) {
  return _JpaPage.fromJson(json);
}

/// @nodoc
mixin _$JpaPage {
  @JsonKey(name: 'content')
  IList<dynamic> get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'empty')
  bool get empty => throw _privateConstructorUsedError;
  @JsonKey(name: 'first')
  bool get first => throw _privateConstructorUsedError;
  @JsonKey(name: 'last')
  bool get last => throw _privateConstructorUsedError;
  @JsonKey(name: 'number')
  int get number => throw _privateConstructorUsedError;
  @JsonKey(name: 'numberOfElements')
  int get numberOfElements => throw _privateConstructorUsedError;
  @JsonKey(name: 'pageable')
  Pageable get pageable => throw _privateConstructorUsedError;
  @JsonKey(name: 'size')
  int get size => throw _privateConstructorUsedError;
  @JsonKey(name: 'sort')
  Sort get sort => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalElements')
  int get totalElements => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalPages')
  int get totalpages => throw _privateConstructorUsedError;

  /// Serializes this JpaPage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JpaPage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JpaPageCopyWith<JpaPage> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JpaPageCopyWith<$Res> {
  factory $JpaPageCopyWith(JpaPage value, $Res Function(JpaPage) then) =
      _$JpaPageCopyWithImpl<$Res, JpaPage>;
  @useResult
  $Res call(
      {@JsonKey(name: 'content') IList<dynamic> content,
      @JsonKey(name: 'empty') bool empty,
      @JsonKey(name: 'first') bool first,
      @JsonKey(name: 'last') bool last,
      @JsonKey(name: 'number') int number,
      @JsonKey(name: 'numberOfElements') int numberOfElements,
      @JsonKey(name: 'pageable') Pageable pageable,
      @JsonKey(name: 'size') int size,
      @JsonKey(name: 'sort') Sort sort,
      @JsonKey(name: 'totalElements') int totalElements,
      @JsonKey(name: 'totalPages') int totalpages});

  $PageableCopyWith<$Res> get pageable;
  $SortCopyWith<$Res> get sort;
}

/// @nodoc
class _$JpaPageCopyWithImpl<$Res, $Val extends JpaPage>
    implements $JpaPageCopyWith<$Res> {
  _$JpaPageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JpaPage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? empty = null,
    Object? first = null,
    Object? last = null,
    Object? number = null,
    Object? numberOfElements = null,
    Object? pageable = null,
    Object? size = null,
    Object? sort = null,
    Object? totalElements = null,
    Object? totalpages = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as IList<dynamic>,
      empty: null == empty
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as bool,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as bool,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfElements: null == numberOfElements
          ? _value.numberOfElements
          : numberOfElements // ignore: cast_nullable_to_non_nullable
              as int,
      pageable: null == pageable
          ? _value.pageable
          : pageable // ignore: cast_nullable_to_non_nullable
              as Pageable,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort,
      totalElements: null == totalElements
          ? _value.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int,
      totalpages: null == totalpages
          ? _value.totalpages
          : totalpages // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of JpaPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageableCopyWith<$Res> get pageable {
    return $PageableCopyWith<$Res>(_value.pageable, (value) {
      return _then(_value.copyWith(pageable: value) as $Val);
    });
  }

  /// Create a copy of JpaPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SortCopyWith<$Res> get sort {
    return $SortCopyWith<$Res>(_value.sort, (value) {
      return _then(_value.copyWith(sort: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JpaPageImplCopyWith<$Res> implements $JpaPageCopyWith<$Res> {
  factory _$$JpaPageImplCopyWith(
          _$JpaPageImpl value, $Res Function(_$JpaPageImpl) then) =
      __$$JpaPageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'content') IList<dynamic> content,
      @JsonKey(name: 'empty') bool empty,
      @JsonKey(name: 'first') bool first,
      @JsonKey(name: 'last') bool last,
      @JsonKey(name: 'number') int number,
      @JsonKey(name: 'numberOfElements') int numberOfElements,
      @JsonKey(name: 'pageable') Pageable pageable,
      @JsonKey(name: 'size') int size,
      @JsonKey(name: 'sort') Sort sort,
      @JsonKey(name: 'totalElements') int totalElements,
      @JsonKey(name: 'totalPages') int totalpages});

  @override
  $PageableCopyWith<$Res> get pageable;
  @override
  $SortCopyWith<$Res> get sort;
}

/// @nodoc
class __$$JpaPageImplCopyWithImpl<$Res>
    extends _$JpaPageCopyWithImpl<$Res, _$JpaPageImpl>
    implements _$$JpaPageImplCopyWith<$Res> {
  __$$JpaPageImplCopyWithImpl(
      _$JpaPageImpl _value, $Res Function(_$JpaPageImpl) _then)
      : super(_value, _then);

  /// Create a copy of JpaPage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? empty = null,
    Object? first = null,
    Object? last = null,
    Object? number = null,
    Object? numberOfElements = null,
    Object? pageable = null,
    Object? size = null,
    Object? sort = null,
    Object? totalElements = null,
    Object? totalpages = null,
  }) {
    return _then(_$JpaPageImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as IList<dynamic>,
      empty: null == empty
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as bool,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as bool,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfElements: null == numberOfElements
          ? _value.numberOfElements
          : numberOfElements // ignore: cast_nullable_to_non_nullable
              as int,
      pageable: null == pageable
          ? _value.pageable
          : pageable // ignore: cast_nullable_to_non_nullable
              as Pageable,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort,
      totalElements: null == totalElements
          ? _value.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int,
      totalpages: null == totalpages
          ? _value.totalpages
          : totalpages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JpaPageImpl extends _JpaPage {
  const _$JpaPageImpl(
      {@JsonKey(name: 'content') this.content = const IListConst([]),
      @JsonKey(name: 'empty') this.empty = false,
      @JsonKey(name: 'first') this.first = false,
      @JsonKey(name: 'last') this.last = false,
      @JsonKey(name: 'number') this.number = 0,
      @JsonKey(name: 'numberOfElements') this.numberOfElements = 0,
      @JsonKey(name: 'pageable') this.pageable = const Pageable(),
      @JsonKey(name: 'size') this.size = 0,
      @JsonKey(name: 'sort') this.sort = const Sort(),
      @JsonKey(name: 'totalElements') this.totalElements = 0,
      @JsonKey(name: 'totalPages') this.totalpages = 0})
      : super._();

  factory _$JpaPageImpl.fromJson(Map<String, dynamic> json) =>
      _$$JpaPageImplFromJson(json);

  @override
  @JsonKey(name: 'content')
  final IList<dynamic> content;
  @override
  @JsonKey(name: 'empty')
  final bool empty;
  @override
  @JsonKey(name: 'first')
  final bool first;
  @override
  @JsonKey(name: 'last')
  final bool last;
  @override
  @JsonKey(name: 'number')
  final int number;
  @override
  @JsonKey(name: 'numberOfElements')
  final int numberOfElements;
  @override
  @JsonKey(name: 'pageable')
  final Pageable pageable;
  @override
  @JsonKey(name: 'size')
  final int size;
  @override
  @JsonKey(name: 'sort')
  final Sort sort;
  @override
  @JsonKey(name: 'totalElements')
  final int totalElements;
  @override
  @JsonKey(name: 'totalPages')
  final int totalpages;

  @override
  String toString() {
    return 'JpaPage(content: $content, empty: $empty, first: $first, last: $last, number: $number, numberOfElements: $numberOfElements, pageable: $pageable, size: $size, sort: $sort, totalElements: $totalElements, totalpages: $totalpages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JpaPageImpl &&
            const DeepCollectionEquality().equals(other.content, content) &&
            (identical(other.empty, empty) || other.empty == empty) &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.last, last) || other.last == last) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.numberOfElements, numberOfElements) ||
                other.numberOfElements == numberOfElements) &&
            (identical(other.pageable, pageable) ||
                other.pageable == pageable) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.totalElements, totalElements) ||
                other.totalElements == totalElements) &&
            (identical(other.totalpages, totalpages) ||
                other.totalpages == totalpages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(content),
      empty,
      first,
      last,
      number,
      numberOfElements,
      pageable,
      size,
      sort,
      totalElements,
      totalpages);

  /// Create a copy of JpaPage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JpaPageImplCopyWith<_$JpaPageImpl> get copyWith =>
      __$$JpaPageImplCopyWithImpl<_$JpaPageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JpaPageImplToJson(
      this,
    );
  }
}

abstract class _JpaPage extends JpaPage {
  const factory _JpaPage(
      {@JsonKey(name: 'content') final IList<dynamic> content,
      @JsonKey(name: 'empty') final bool empty,
      @JsonKey(name: 'first') final bool first,
      @JsonKey(name: 'last') final bool last,
      @JsonKey(name: 'number') final int number,
      @JsonKey(name: 'numberOfElements') final int numberOfElements,
      @JsonKey(name: 'pageable') final Pageable pageable,
      @JsonKey(name: 'size') final int size,
      @JsonKey(name: 'sort') final Sort sort,
      @JsonKey(name: 'totalElements') final int totalElements,
      @JsonKey(name: 'totalPages') final int totalpages}) = _$JpaPageImpl;
  const _JpaPage._() : super._();

  factory _JpaPage.fromJson(Map<String, dynamic> json) = _$JpaPageImpl.fromJson;

  @override
  @JsonKey(name: 'content')
  IList<dynamic> get content;
  @override
  @JsonKey(name: 'empty')
  bool get empty;
  @override
  @JsonKey(name: 'first')
  bool get first;
  @override
  @JsonKey(name: 'last')
  bool get last;
  @override
  @JsonKey(name: 'number')
  int get number;
  @override
  @JsonKey(name: 'numberOfElements')
  int get numberOfElements;
  @override
  @JsonKey(name: 'pageable')
  Pageable get pageable;
  @override
  @JsonKey(name: 'size')
  int get size;
  @override
  @JsonKey(name: 'sort')
  Sort get sort;
  @override
  @JsonKey(name: 'totalElements')
  int get totalElements;
  @override
  @JsonKey(name: 'totalPages')
  int get totalpages;

  /// Create a copy of JpaPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JpaPageImplCopyWith<_$JpaPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Pageable _$PageableFromJson(Map<String, dynamic> json) {
  return _Pageable.fromJson(json);
}

/// @nodoc
mixin _$Pageable {
  @JsonKey(name: 'offset')
  int get offset => throw _privateConstructorUsedError;
  @JsonKey(name: 'pageNumber')
  int get pageNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'pageSize')
  int get pageSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'paged')
  bool get paged => throw _privateConstructorUsedError;
  @JsonKey(name: 'sort')
  Sort get sort => throw _privateConstructorUsedError;
  @JsonKey(name: 'unpaged')
  bool get unpaged => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'offset') int offset,
      @JsonKey(name: 'pageNumber') int pageNumber,
      @JsonKey(name: 'pageSize') int pageSize,
      @JsonKey(name: 'paged') bool paged,
      @JsonKey(name: 'sort') Sort sort,
      @JsonKey(name: 'unpaged') bool unpaged});

  $SortCopyWith<$Res> get sort;
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
    Object? offset = null,
    Object? pageNumber = null,
    Object? pageSize = null,
    Object? paged = null,
    Object? sort = null,
    Object? unpaged = null,
  }) {
    return _then(_value.copyWith(
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
      paged: null == paged
          ? _value.paged
          : paged // ignore: cast_nullable_to_non_nullable
              as bool,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort,
      unpaged: null == unpaged
          ? _value.unpaged
          : unpaged // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of Pageable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SortCopyWith<$Res> get sort {
    return $SortCopyWith<$Res>(_value.sort, (value) {
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
      {@JsonKey(name: 'offset') int offset,
      @JsonKey(name: 'pageNumber') int pageNumber,
      @JsonKey(name: 'pageSize') int pageSize,
      @JsonKey(name: 'paged') bool paged,
      @JsonKey(name: 'sort') Sort sort,
      @JsonKey(name: 'unpaged') bool unpaged});

  @override
  $SortCopyWith<$Res> get sort;
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
    Object? offset = null,
    Object? pageNumber = null,
    Object? pageSize = null,
    Object? paged = null,
    Object? sort = null,
    Object? unpaged = null,
  }) {
    return _then(_$PageableImpl(
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
      paged: null == paged
          ? _value.paged
          : paged // ignore: cast_nullable_to_non_nullable
              as bool,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort,
      unpaged: null == unpaged
          ? _value.unpaged
          : unpaged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PageableImpl extends _Pageable {
  const _$PageableImpl(
      {@JsonKey(name: 'offset') this.offset = 0,
      @JsonKey(name: 'pageNumber') this.pageNumber = 0,
      @JsonKey(name: 'pageSize') this.pageSize = 0,
      @JsonKey(name: 'paged') this.paged = false,
      @JsonKey(name: 'sort') this.sort = const Sort(),
      @JsonKey(name: 'unpaged') this.unpaged = false})
      : super._();

  factory _$PageableImpl.fromJson(Map<String, dynamic> json) =>
      _$$PageableImplFromJson(json);

  @override
  @JsonKey(name: 'offset')
  final int offset;
  @override
  @JsonKey(name: 'pageNumber')
  final int pageNumber;
  @override
  @JsonKey(name: 'pageSize')
  final int pageSize;
  @override
  @JsonKey(name: 'paged')
  final bool paged;
  @override
  @JsonKey(name: 'sort')
  final Sort sort;
  @override
  @JsonKey(name: 'unpaged')
  final bool unpaged;

  @override
  String toString() {
    return 'Pageable(offset: $offset, pageNumber: $pageNumber, pageSize: $pageSize, paged: $paged, sort: $sort, unpaged: $unpaged)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageableImpl &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.paged, paged) || other.paged == paged) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.unpaged, unpaged) || other.unpaged == unpaged));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, offset, pageNumber, pageSize, paged, sort, unpaged);

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

abstract class _Pageable extends Pageable {
  const factory _Pageable(
      {@JsonKey(name: 'offset') final int offset,
      @JsonKey(name: 'pageNumber') final int pageNumber,
      @JsonKey(name: 'pageSize') final int pageSize,
      @JsonKey(name: 'paged') final bool paged,
      @JsonKey(name: 'sort') final Sort sort,
      @JsonKey(name: 'unpaged') final bool unpaged}) = _$PageableImpl;
  const _Pageable._() : super._();

  factory _Pageable.fromJson(Map<String, dynamic> json) =
      _$PageableImpl.fromJson;

  @override
  @JsonKey(name: 'offset')
  int get offset;
  @override
  @JsonKey(name: 'pageNumber')
  int get pageNumber;
  @override
  @JsonKey(name: 'pageSize')
  int get pageSize;
  @override
  @JsonKey(name: 'paged')
  bool get paged;
  @override
  @JsonKey(name: 'sort')
  Sort get sort;
  @override
  @JsonKey(name: 'unpaged')
  bool get unpaged;

  /// Create a copy of Pageable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PageableImplCopyWith<_$PageableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Sort _$SortFromJson(Map<String, dynamic> json) {
  return _Sort.fromJson(json);
}

/// @nodoc
mixin _$Sort {
  @JsonKey(name: 'empty')
  bool get empty => throw _privateConstructorUsedError;
  @JsonKey(name: 'sorted')
  bool get sorted => throw _privateConstructorUsedError;
  @JsonKey(name: 'unsorted')
  bool get unsorted => throw _privateConstructorUsedError;

  /// Serializes this Sort to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SortCopyWith<Sort> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SortCopyWith<$Res> {
  factory $SortCopyWith(Sort value, $Res Function(Sort) then) =
      _$SortCopyWithImpl<$Res, Sort>;
  @useResult
  $Res call(
      {@JsonKey(name: 'empty') bool empty,
      @JsonKey(name: 'sorted') bool sorted,
      @JsonKey(name: 'unsorted') bool unsorted});
}

/// @nodoc
class _$SortCopyWithImpl<$Res, $Val extends Sort>
    implements $SortCopyWith<$Res> {
  _$SortCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? empty = null,
    Object? sorted = null,
    Object? unsorted = null,
  }) {
    return _then(_value.copyWith(
      empty: null == empty
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
      sorted: null == sorted
          ? _value.sorted
          : sorted // ignore: cast_nullable_to_non_nullable
              as bool,
      unsorted: null == unsorted
          ? _value.unsorted
          : unsorted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SortImplCopyWith<$Res> implements $SortCopyWith<$Res> {
  factory _$$SortImplCopyWith(
          _$SortImpl value, $Res Function(_$SortImpl) then) =
      __$$SortImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'empty') bool empty,
      @JsonKey(name: 'sorted') bool sorted,
      @JsonKey(name: 'unsorted') bool unsorted});
}

/// @nodoc
class __$$SortImplCopyWithImpl<$Res>
    extends _$SortCopyWithImpl<$Res, _$SortImpl>
    implements _$$SortImplCopyWith<$Res> {
  __$$SortImplCopyWithImpl(_$SortImpl _value, $Res Function(_$SortImpl) _then)
      : super(_value, _then);

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? empty = null,
    Object? sorted = null,
    Object? unsorted = null,
  }) {
    return _then(_$SortImpl(
      empty: null == empty
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
      sorted: null == sorted
          ? _value.sorted
          : sorted // ignore: cast_nullable_to_non_nullable
              as bool,
      unsorted: null == unsorted
          ? _value.unsorted
          : unsorted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SortImpl extends _Sort {
  const _$SortImpl(
      {@JsonKey(name: 'empty') this.empty = false,
      @JsonKey(name: 'sorted') this.sorted = false,
      @JsonKey(name: 'unsorted') this.unsorted = false})
      : super._();

  factory _$SortImpl.fromJson(Map<String, dynamic> json) =>
      _$$SortImplFromJson(json);

  @override
  @JsonKey(name: 'empty')
  final bool empty;
  @override
  @JsonKey(name: 'sorted')
  final bool sorted;
  @override
  @JsonKey(name: 'unsorted')
  final bool unsorted;

  @override
  String toString() {
    return 'Sort(empty: $empty, sorted: $sorted, unsorted: $unsorted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortImpl &&
            (identical(other.empty, empty) || other.empty == empty) &&
            (identical(other.sorted, sorted) || other.sorted == sorted) &&
            (identical(other.unsorted, unsorted) ||
                other.unsorted == unsorted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, empty, sorted, unsorted);

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SortImplCopyWith<_$SortImpl> get copyWith =>
      __$$SortImplCopyWithImpl<_$SortImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SortImplToJson(
      this,
    );
  }
}

abstract class _Sort extends Sort {
  const factory _Sort(
      {@JsonKey(name: 'empty') final bool empty,
      @JsonKey(name: 'sorted') final bool sorted,
      @JsonKey(name: 'unsorted') final bool unsorted}) = _$SortImpl;
  const _Sort._() : super._();

  factory _Sort.fromJson(Map<String, dynamic> json) = _$SortImpl.fromJson;

  @override
  @JsonKey(name: 'empty')
  bool get empty;
  @override
  @JsonKey(name: 'sorted')
  bool get sorted;
  @override
  @JsonKey(name: 'unsorted')
  bool get unsorted;

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SortImplCopyWith<_$SortImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
