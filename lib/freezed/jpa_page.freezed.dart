// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jpa_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JpaPage {
  @JsonKey(name: 'content')
  IList<dynamic> get content;
  @JsonKey(name: 'empty')
  bool get empty;
  @JsonKey(name: 'first')
  bool get first;
  @JsonKey(name: 'last')
  bool get last;
  @JsonKey(name: 'number')
  int get number;
  @JsonKey(name: 'numberOfElements')
  int get numberOfElements;
  @JsonKey(name: 'pageable')
  Pageable get pageable;
  @JsonKey(name: 'size')
  int get size;
  @JsonKey(name: 'sort')
  Sort get sort;
  @JsonKey(name: 'totalElements')
  int get totalElements;
  @JsonKey(name: 'totalPages')
  int get totalpages;

  /// Create a copy of JpaPage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $JpaPageCopyWith<JpaPage> get copyWith =>
      _$JpaPageCopyWithImpl<JpaPage>(this as JpaPage, _$identity);

  /// Serializes this JpaPage to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is JpaPage &&
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

  @override
  String toString() {
    return 'JpaPage(content: $content, empty: $empty, first: $first, last: $last, number: $number, numberOfElements: $numberOfElements, pageable: $pageable, size: $size, sort: $sort, totalElements: $totalElements, totalpages: $totalpages)';
  }
}

/// @nodoc
abstract mixin class $JpaPageCopyWith<$Res> {
  factory $JpaPageCopyWith(JpaPage value, $Res Function(JpaPage) _then) =
      _$JpaPageCopyWithImpl;
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
class _$JpaPageCopyWithImpl<$Res> implements $JpaPageCopyWith<$Res> {
  _$JpaPageCopyWithImpl(this._self, this._then);

  final JpaPage _self;
  final $Res Function(JpaPage) _then;

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
    return _then(_self.copyWith(
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as IList<dynamic>,
      empty: null == empty
          ? _self.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
      first: null == first
          ? _self.first
          : first // ignore: cast_nullable_to_non_nullable
              as bool,
      last: null == last
          ? _self.last
          : last // ignore: cast_nullable_to_non_nullable
              as bool,
      number: null == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfElements: null == numberOfElements
          ? _self.numberOfElements
          : numberOfElements // ignore: cast_nullable_to_non_nullable
              as int,
      pageable: null == pageable
          ? _self.pageable
          : pageable // ignore: cast_nullable_to_non_nullable
              as Pageable,
      size: null == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      sort: null == sort
          ? _self.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort,
      totalElements: null == totalElements
          ? _self.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int,
      totalpages: null == totalpages
          ? _self.totalpages
          : totalpages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of JpaPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageableCopyWith<$Res> get pageable {
    return $PageableCopyWith<$Res>(_self.pageable, (value) {
      return _then(_self.copyWith(pageable: value));
    });
  }

  /// Create a copy of JpaPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SortCopyWith<$Res> get sort {
    return $SortCopyWith<$Res>(_self.sort, (value) {
      return _then(_self.copyWith(sort: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _JpaPage extends JpaPage {
  const _JpaPage(
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
  factory _JpaPage.fromJson(Map<String, dynamic> json) =>
      _$JpaPageFromJson(json);

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

  /// Create a copy of JpaPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$JpaPageCopyWith<_JpaPage> get copyWith =>
      __$JpaPageCopyWithImpl<_JpaPage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$JpaPageToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JpaPage &&
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

  @override
  String toString() {
    return 'JpaPage(content: $content, empty: $empty, first: $first, last: $last, number: $number, numberOfElements: $numberOfElements, pageable: $pageable, size: $size, sort: $sort, totalElements: $totalElements, totalpages: $totalpages)';
  }
}

/// @nodoc
abstract mixin class _$JpaPageCopyWith<$Res> implements $JpaPageCopyWith<$Res> {
  factory _$JpaPageCopyWith(_JpaPage value, $Res Function(_JpaPage) _then) =
      __$JpaPageCopyWithImpl;
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
class __$JpaPageCopyWithImpl<$Res> implements _$JpaPageCopyWith<$Res> {
  __$JpaPageCopyWithImpl(this._self, this._then);

  final _JpaPage _self;
  final $Res Function(_JpaPage) _then;

  /// Create a copy of JpaPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_JpaPage(
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as IList<dynamic>,
      empty: null == empty
          ? _self.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
      first: null == first
          ? _self.first
          : first // ignore: cast_nullable_to_non_nullable
              as bool,
      last: null == last
          ? _self.last
          : last // ignore: cast_nullable_to_non_nullable
              as bool,
      number: null == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfElements: null == numberOfElements
          ? _self.numberOfElements
          : numberOfElements // ignore: cast_nullable_to_non_nullable
              as int,
      pageable: null == pageable
          ? _self.pageable
          : pageable // ignore: cast_nullable_to_non_nullable
              as Pageable,
      size: null == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      sort: null == sort
          ? _self.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort,
      totalElements: null == totalElements
          ? _self.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int,
      totalpages: null == totalpages
          ? _self.totalpages
          : totalpages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of JpaPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageableCopyWith<$Res> get pageable {
    return $PageableCopyWith<$Res>(_self.pageable, (value) {
      return _then(_self.copyWith(pageable: value));
    });
  }

  /// Create a copy of JpaPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SortCopyWith<$Res> get sort {
    return $SortCopyWith<$Res>(_self.sort, (value) {
      return _then(_self.copyWith(sort: value));
    });
  }
}

/// @nodoc
mixin _$Pageable {
  @JsonKey(name: 'offset')
  int get offset;
  @JsonKey(name: 'pageNumber')
  int get pageNumber;
  @JsonKey(name: 'pageSize')
  int get pageSize;
  @JsonKey(name: 'paged')
  bool get paged;
  @JsonKey(name: 'sort')
  Sort get sort;
  @JsonKey(name: 'unpaged')
  bool get unpaged;

  /// Create a copy of Pageable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PageableCopyWith<Pageable> get copyWith =>
      _$PageableCopyWithImpl<Pageable>(this as Pageable, _$identity);

  /// Serializes this Pageable to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Pageable &&
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

  @override
  String toString() {
    return 'Pageable(offset: $offset, pageNumber: $pageNumber, pageSize: $pageSize, paged: $paged, sort: $sort, unpaged: $unpaged)';
  }
}

/// @nodoc
abstract mixin class $PageableCopyWith<$Res> {
  factory $PageableCopyWith(Pageable value, $Res Function(Pageable) _then) =
      _$PageableCopyWithImpl;
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
class _$PageableCopyWithImpl<$Res> implements $PageableCopyWith<$Res> {
  _$PageableCopyWithImpl(this._self, this._then);

  final Pageable _self;
  final $Res Function(Pageable) _then;

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
    return _then(_self.copyWith(
      offset: null == offset
          ? _self.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      pageNumber: null == pageNumber
          ? _self.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _self.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      paged: null == paged
          ? _self.paged
          : paged // ignore: cast_nullable_to_non_nullable
              as bool,
      sort: null == sort
          ? _self.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort,
      unpaged: null == unpaged
          ? _self.unpaged
          : unpaged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of Pageable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SortCopyWith<$Res> get sort {
    return $SortCopyWith<$Res>(_self.sort, (value) {
      return _then(_self.copyWith(sort: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Pageable extends Pageable {
  const _Pageable(
      {@JsonKey(name: 'offset') this.offset = 0,
      @JsonKey(name: 'pageNumber') this.pageNumber = 0,
      @JsonKey(name: 'pageSize') this.pageSize = 0,
      @JsonKey(name: 'paged') this.paged = false,
      @JsonKey(name: 'sort') this.sort = const Sort(),
      @JsonKey(name: 'unpaged') this.unpaged = false})
      : super._();
  factory _Pageable.fromJson(Map<String, dynamic> json) =>
      _$PageableFromJson(json);

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

  /// Create a copy of Pageable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PageableCopyWith<_Pageable> get copyWith =>
      __$PageableCopyWithImpl<_Pageable>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PageableToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Pageable &&
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

  @override
  String toString() {
    return 'Pageable(offset: $offset, pageNumber: $pageNumber, pageSize: $pageSize, paged: $paged, sort: $sort, unpaged: $unpaged)';
  }
}

/// @nodoc
abstract mixin class _$PageableCopyWith<$Res>
    implements $PageableCopyWith<$Res> {
  factory _$PageableCopyWith(_Pageable value, $Res Function(_Pageable) _then) =
      __$PageableCopyWithImpl;
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
class __$PageableCopyWithImpl<$Res> implements _$PageableCopyWith<$Res> {
  __$PageableCopyWithImpl(this._self, this._then);

  final _Pageable _self;
  final $Res Function(_Pageable) _then;

  /// Create a copy of Pageable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? offset = null,
    Object? pageNumber = null,
    Object? pageSize = null,
    Object? paged = null,
    Object? sort = null,
    Object? unpaged = null,
  }) {
    return _then(_Pageable(
      offset: null == offset
          ? _self.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      pageNumber: null == pageNumber
          ? _self.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _self.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      paged: null == paged
          ? _self.paged
          : paged // ignore: cast_nullable_to_non_nullable
              as bool,
      sort: null == sort
          ? _self.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort,
      unpaged: null == unpaged
          ? _self.unpaged
          : unpaged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of Pageable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SortCopyWith<$Res> get sort {
    return $SortCopyWith<$Res>(_self.sort, (value) {
      return _then(_self.copyWith(sort: value));
    });
  }
}

/// @nodoc
mixin _$Sort {
  @JsonKey(name: 'empty')
  bool get empty;
  @JsonKey(name: 'sorted')
  bool get sorted;
  @JsonKey(name: 'unsorted')
  bool get unsorted;

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SortCopyWith<Sort> get copyWith =>
      _$SortCopyWithImpl<Sort>(this as Sort, _$identity);

  /// Serializes this Sort to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Sort &&
            (identical(other.empty, empty) || other.empty == empty) &&
            (identical(other.sorted, sorted) || other.sorted == sorted) &&
            (identical(other.unsorted, unsorted) ||
                other.unsorted == unsorted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, empty, sorted, unsorted);

  @override
  String toString() {
    return 'Sort(empty: $empty, sorted: $sorted, unsorted: $unsorted)';
  }
}

/// @nodoc
abstract mixin class $SortCopyWith<$Res> {
  factory $SortCopyWith(Sort value, $Res Function(Sort) _then) =
      _$SortCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'empty') bool empty,
      @JsonKey(name: 'sorted') bool sorted,
      @JsonKey(name: 'unsorted') bool unsorted});
}

/// @nodoc
class _$SortCopyWithImpl<$Res> implements $SortCopyWith<$Res> {
  _$SortCopyWithImpl(this._self, this._then);

  final Sort _self;
  final $Res Function(Sort) _then;

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? empty = null,
    Object? sorted = null,
    Object? unsorted = null,
  }) {
    return _then(_self.copyWith(
      empty: null == empty
          ? _self.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
      sorted: null == sorted
          ? _self.sorted
          : sorted // ignore: cast_nullable_to_non_nullable
              as bool,
      unsorted: null == unsorted
          ? _self.unsorted
          : unsorted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Sort extends Sort {
  const _Sort(
      {@JsonKey(name: 'empty') this.empty = false,
      @JsonKey(name: 'sorted') this.sorted = false,
      @JsonKey(name: 'unsorted') this.unsorted = false})
      : super._();
  factory _Sort.fromJson(Map<String, dynamic> json) => _$SortFromJson(json);

  @override
  @JsonKey(name: 'empty')
  final bool empty;
  @override
  @JsonKey(name: 'sorted')
  final bool sorted;
  @override
  @JsonKey(name: 'unsorted')
  final bool unsorted;

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SortCopyWith<_Sort> get copyWith =>
      __$SortCopyWithImpl<_Sort>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SortToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Sort &&
            (identical(other.empty, empty) || other.empty == empty) &&
            (identical(other.sorted, sorted) || other.sorted == sorted) &&
            (identical(other.unsorted, unsorted) ||
                other.unsorted == unsorted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, empty, sorted, unsorted);

  @override
  String toString() {
    return 'Sort(empty: $empty, sorted: $sorted, unsorted: $unsorted)';
  }
}

/// @nodoc
abstract mixin class _$SortCopyWith<$Res> implements $SortCopyWith<$Res> {
  factory _$SortCopyWith(_Sort value, $Res Function(_Sort) _then) =
      __$SortCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'empty') bool empty,
      @JsonKey(name: 'sorted') bool sorted,
      @JsonKey(name: 'unsorted') bool unsorted});
}

/// @nodoc
class __$SortCopyWithImpl<$Res> implements _$SortCopyWith<$Res> {
  __$SortCopyWithImpl(this._self, this._then);

  final _Sort _self;
  final $Res Function(_Sort) _then;

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? empty = null,
    Object? sorted = null,
    Object? unsorted = null,
  }) {
    return _then(_Sort(
      empty: null == empty
          ? _self.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
      sorted: null == sorted
          ? _self.sorted
          : sorted // ignore: cast_nullable_to_non_nullable
              as bool,
      unsorted: null == unsorted
          ? _self.unsorted
          : unsorted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
