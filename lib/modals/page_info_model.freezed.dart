// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Pageable {
  PageableSort get sort;
  int get offset;
  int get pageNumber;
  int get pageSize;
  bool get unpaged;
  bool get paged;

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

  @override
  String toString() {
    return 'Pageable(sort: $sort, offset: $offset, pageNumber: $pageNumber, pageSize: $pageSize, unpaged: $unpaged, paged: $paged)';
  }
}

/// @nodoc
abstract mixin class $PageableCopyWith<$Res> {
  factory $PageableCopyWith(Pageable value, $Res Function(Pageable) _then) =
      _$PageableCopyWithImpl;
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
class _$PageableCopyWithImpl<$Res> implements $PageableCopyWith<$Res> {
  _$PageableCopyWithImpl(this._self, this._then);

  final Pageable _self;
  final $Res Function(Pageable) _then;

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
    return _then(_self.copyWith(
      sort: null == sort
          ? _self.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as PageableSort,
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
      unpaged: null == unpaged
          ? _self.unpaged
          : unpaged // ignore: cast_nullable_to_non_nullable
              as bool,
      paged: null == paged
          ? _self.paged
          : paged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of Pageable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageableSortCopyWith<$Res> get sort {
    return $PageableSortCopyWith<$Res>(_self.sort, (value) {
      return _then(_self.copyWith(sort: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Pageable].
extension PageablePatterns on Pageable {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Pageable value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Pageable() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Pageable value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Pageable():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Pageable value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Pageable() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(PageableSort sort, int offset, int pageNumber,
            int pageSize, bool unpaged, bool paged)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Pageable() when $default != null:
        return $default(_that.sort, _that.offset, _that.pageNumber,
            _that.pageSize, _that.unpaged, _that.paged);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(PageableSort sort, int offset, int pageNumber,
            int pageSize, bool unpaged, bool paged)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Pageable():
        return $default(_that.sort, _that.offset, _that.pageNumber,
            _that.pageSize, _that.unpaged, _that.paged);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(PageableSort sort, int offset, int pageNumber,
            int pageSize, bool unpaged, bool paged)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Pageable() when $default != null:
        return $default(_that.sort, _that.offset, _that.pageNumber,
            _that.pageSize, _that.unpaged, _that.paged);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Pageable implements Pageable {
  const _Pageable(
      {this.sort = const PageableSort(),
      this.offset = 0,
      this.pageNumber = 0,
      this.pageSize = 0,
      this.unpaged = false,
      this.paged = false});
  factory _Pageable.fromJson(Map<String, dynamic> json) =>
      _$PageableFromJson(json);

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

  @override
  String toString() {
    return 'Pageable(sort: $sort, offset: $offset, pageNumber: $pageNumber, pageSize: $pageSize, unpaged: $unpaged, paged: $paged)';
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
class __$PageableCopyWithImpl<$Res> implements _$PageableCopyWith<$Res> {
  __$PageableCopyWithImpl(this._self, this._then);

  final _Pageable _self;
  final $Res Function(_Pageable) _then;

  /// Create a copy of Pageable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sort = null,
    Object? offset = null,
    Object? pageNumber = null,
    Object? pageSize = null,
    Object? unpaged = null,
    Object? paged = null,
  }) {
    return _then(_Pageable(
      sort: null == sort
          ? _self.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as PageableSort,
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
      unpaged: null == unpaged
          ? _self.unpaged
          : unpaged // ignore: cast_nullable_to_non_nullable
              as bool,
      paged: null == paged
          ? _self.paged
          : paged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of Pageable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageableSortCopyWith<$Res> get sort {
    return $PageableSortCopyWith<$Res>(_self.sort, (value) {
      return _then(_self.copyWith(sort: value));
    });
  }
}

/// @nodoc
mixin _$PageableSort {
  String get ref;

  /// Create a copy of PageableSort
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PageableSortCopyWith<PageableSort> get copyWith =>
      _$PageableSortCopyWithImpl<PageableSort>(
          this as PageableSort, _$identity);

  /// Serializes this PageableSort to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PageableSort &&
            (identical(other.ref, ref) || other.ref == ref));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ref);

  @override
  String toString() {
    return 'PageableSort(ref: $ref)';
  }
}

/// @nodoc
abstract mixin class $PageableSortCopyWith<$Res> {
  factory $PageableSortCopyWith(
          PageableSort value, $Res Function(PageableSort) _then) =
      _$PageableSortCopyWithImpl;
  @useResult
  $Res call({String ref});
}

/// @nodoc
class _$PageableSortCopyWithImpl<$Res> implements $PageableSortCopyWith<$Res> {
  _$PageableSortCopyWithImpl(this._self, this._then);

  final PageableSort _self;
  final $Res Function(PageableSort) _then;

  /// Create a copy of PageableSort
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ref = null,
  }) {
    return _then(_self.copyWith(
      ref: null == ref
          ? _self.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [PageableSort].
extension PageableSortPatterns on PageableSort {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PageableSort value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PageableSort() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PageableSort value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PageableSort():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PageableSort value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PageableSort() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String ref)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PageableSort() when $default != null:
        return $default(_that.ref);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String ref) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PageableSort():
        return $default(_that.ref);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String ref)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PageableSort() when $default != null:
        return $default(_that.ref);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PageableSort extends PageableSort {
  const _PageableSort({this.ref = ""}) : super._();
  factory _PageableSort.fromJson(Map<String, dynamic> json) =>
      _$PageableSortFromJson(json);

  @override
  @JsonKey()
  final String ref;

  /// Create a copy of PageableSort
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PageableSortCopyWith<_PageableSort> get copyWith =>
      __$PageableSortCopyWithImpl<_PageableSort>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PageableSortToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PageableSort &&
            (identical(other.ref, ref) || other.ref == ref));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ref);

  @override
  String toString() {
    return 'PageableSort(ref: $ref)';
  }
}

/// @nodoc
abstract mixin class _$PageableSortCopyWith<$Res>
    implements $PageableSortCopyWith<$Res> {
  factory _$PageableSortCopyWith(
          _PageableSort value, $Res Function(_PageableSort) _then) =
      __$PageableSortCopyWithImpl;
  @override
  @useResult
  $Res call({String ref});
}

/// @nodoc
class __$PageableSortCopyWithImpl<$Res>
    implements _$PageableSortCopyWith<$Res> {
  __$PageableSortCopyWithImpl(this._self, this._then);

  final _PageableSort _self;
  final $Res Function(_PageableSort) _then;

  /// Create a copy of PageableSort
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? ref = null,
  }) {
    return _then(_PageableSort(
      ref: null == ref
          ? _self.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$OrderAllDataSort {
  bool get sorted;
  bool get unsorted;
  bool get empty;

  /// Create a copy of OrderAllDataSort
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderAllDataSortCopyWith<OrderAllDataSort> get copyWith =>
      _$OrderAllDataSortCopyWithImpl<OrderAllDataSort>(
          this as OrderAllDataSort, _$identity);

  /// Serializes this OrderAllDataSort to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderAllDataSort &&
            (identical(other.sorted, sorted) || other.sorted == sorted) &&
            (identical(other.unsorted, unsorted) ||
                other.unsorted == unsorted) &&
            (identical(other.empty, empty) || other.empty == empty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sorted, unsorted, empty);

  @override
  String toString() {
    return 'OrderAllDataSort(sorted: $sorted, unsorted: $unsorted, empty: $empty)';
  }
}

/// @nodoc
abstract mixin class $OrderAllDataSortCopyWith<$Res> {
  factory $OrderAllDataSortCopyWith(
          OrderAllDataSort value, $Res Function(OrderAllDataSort) _then) =
      _$OrderAllDataSortCopyWithImpl;
  @useResult
  $Res call({bool sorted, bool unsorted, bool empty});
}

/// @nodoc
class _$OrderAllDataSortCopyWithImpl<$Res>
    implements $OrderAllDataSortCopyWith<$Res> {
  _$OrderAllDataSortCopyWithImpl(this._self, this._then);

  final OrderAllDataSort _self;
  final $Res Function(OrderAllDataSort) _then;

  /// Create a copy of OrderAllDataSort
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sorted = null,
    Object? unsorted = null,
    Object? empty = null,
  }) {
    return _then(_self.copyWith(
      sorted: null == sorted
          ? _self.sorted
          : sorted // ignore: cast_nullable_to_non_nullable
              as bool,
      unsorted: null == unsorted
          ? _self.unsorted
          : unsorted // ignore: cast_nullable_to_non_nullable
              as bool,
      empty: null == empty
          ? _self.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [OrderAllDataSort].
extension OrderAllDataSortPatterns on OrderAllDataSort {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_OrderAllDataSort value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderAllDataSort() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_OrderAllDataSort value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderAllDataSort():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_OrderAllDataSort value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderAllDataSort() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool sorted, bool unsorted, bool empty)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrderAllDataSort() when $default != null:
        return $default(_that.sorted, _that.unsorted, _that.empty);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool sorted, bool unsorted, bool empty) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderAllDataSort():
        return $default(_that.sorted, _that.unsorted, _that.empty);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool sorted, bool unsorted, bool empty)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrderAllDataSort() when $default != null:
        return $default(_that.sorted, _that.unsorted, _that.empty);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OrderAllDataSort implements OrderAllDataSort {
  const _OrderAllDataSort(
      {this.sorted = false, this.unsorted = false, this.empty = false});
  factory _OrderAllDataSort.fromJson(Map<String, dynamic> json) =>
      _$OrderAllDataSortFromJson(json);

  @override
  @JsonKey()
  final bool sorted;
  @override
  @JsonKey()
  final bool unsorted;
  @override
  @JsonKey()
  final bool empty;

  /// Create a copy of OrderAllDataSort
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrderAllDataSortCopyWith<_OrderAllDataSort> get copyWith =>
      __$OrderAllDataSortCopyWithImpl<_OrderAllDataSort>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OrderAllDataSortToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderAllDataSort &&
            (identical(other.sorted, sorted) || other.sorted == sorted) &&
            (identical(other.unsorted, unsorted) ||
                other.unsorted == unsorted) &&
            (identical(other.empty, empty) || other.empty == empty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sorted, unsorted, empty);

  @override
  String toString() {
    return 'OrderAllDataSort(sorted: $sorted, unsorted: $unsorted, empty: $empty)';
  }
}

/// @nodoc
abstract mixin class _$OrderAllDataSortCopyWith<$Res>
    implements $OrderAllDataSortCopyWith<$Res> {
  factory _$OrderAllDataSortCopyWith(
          _OrderAllDataSort value, $Res Function(_OrderAllDataSort) _then) =
      __$OrderAllDataSortCopyWithImpl;
  @override
  @useResult
  $Res call({bool sorted, bool unsorted, bool empty});
}

/// @nodoc
class __$OrderAllDataSortCopyWithImpl<$Res>
    implements _$OrderAllDataSortCopyWith<$Res> {
  __$OrderAllDataSortCopyWithImpl(this._self, this._then);

  final _OrderAllDataSort _self;
  final $Res Function(_OrderAllDataSort) _then;

  /// Create a copy of OrderAllDataSort
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sorted = null,
    Object? unsorted = null,
    Object? empty = null,
  }) {
    return _then(_OrderAllDataSort(
      sorted: null == sorted
          ? _self.sorted
          : sorted // ignore: cast_nullable_to_non_nullable
              as bool,
      unsorted: null == unsorted
          ? _self.unsorted
          : unsorted // ignore: cast_nullable_to_non_nullable
              as bool,
      empty: null == empty
          ? _self.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
