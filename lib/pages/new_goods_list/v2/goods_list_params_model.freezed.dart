// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'goods_list_params_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GoodsListParamsModel {
  Category get category;
  set category(Category value);
  Subcategory? get subcategor;
  set subcategor(Subcategory? value);
  String get sort;
  set sort(String value);
  List<Product> get products;
  set products(List<Product> value);
  int get page;
  set page(int value);
  bool get initLoading;
  set initLoading(bool value);
  CancelToken? get cancelToken;
  set cancelToken(CancelToken? value);

  /// Create a copy of GoodsListParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GoodsListParamsModelCopyWith<GoodsListParamsModel> get copyWith =>
      _$GoodsListParamsModelCopyWithImpl<GoodsListParamsModel>(
          this as GoodsListParamsModel, _$identity);

  @override
  String toString() {
    return 'GoodsListParamsModel(category: $category, subcategor: $subcategor, sort: $sort, products: $products, page: $page, initLoading: $initLoading, cancelToken: $cancelToken)';
  }
}

/// @nodoc
abstract mixin class $GoodsListParamsModelCopyWith<$Res> {
  factory $GoodsListParamsModelCopyWith(GoodsListParamsModel value,
          $Res Function(GoodsListParamsModel) _then) =
      _$GoodsListParamsModelCopyWithImpl;
  @useResult
  $Res call(
      {Category category,
      Subcategory? subcategor,
      String sort,
      List<Product> products,
      int page,
      bool initLoading,
      CancelToken? cancelToken});

  $CategoryCopyWith<$Res> get category;
  $SubcategoryCopyWith<$Res>? get subcategor;
}

/// @nodoc
class _$GoodsListParamsModelCopyWithImpl<$Res>
    implements $GoodsListParamsModelCopyWith<$Res> {
  _$GoodsListParamsModelCopyWithImpl(this._self, this._then);

  final GoodsListParamsModel _self;
  final $Res Function(GoodsListParamsModel) _then;

  /// Create a copy of GoodsListParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? subcategor = freezed,
    Object? sort = null,
    Object? products = null,
    Object? page = null,
    Object? initLoading = null,
    Object? cancelToken = freezed,
  }) {
    return _then(_self.copyWith(
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      subcategor: freezed == subcategor
          ? _self.subcategor
          : subcategor // ignore: cast_nullable_to_non_nullable
              as Subcategory?,
      sort: null == sort
          ? _self.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _self.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      initLoading: null == initLoading
          ? _self.initLoading
          : initLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      cancelToken: freezed == cancelToken
          ? _self.cancelToken
          : cancelToken // ignore: cast_nullable_to_non_nullable
              as CancelToken?,
    ));
  }

  /// Create a copy of GoodsListParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_self.category, (value) {
      return _then(_self.copyWith(category: value));
    });
  }

  /// Create a copy of GoodsListParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubcategoryCopyWith<$Res>? get subcategor {
    if (_self.subcategor == null) {
      return null;
    }

    return $SubcategoryCopyWith<$Res>(_self.subcategor!, (value) {
      return _then(_self.copyWith(subcategor: value));
    });
  }
}

/// Adds pattern-matching-related methods to [GoodsListParamsModel].
extension GoodsListParamsModelPatterns on GoodsListParamsModel {
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
    TResult Function(_GoodsListParamsModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GoodsListParamsModel() when $default != null:
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
    TResult Function(_GoodsListParamsModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GoodsListParamsModel():
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
    TResult? Function(_GoodsListParamsModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GoodsListParamsModel() when $default != null:
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
    TResult Function(
            Category category,
            Subcategory? subcategor,
            String sort,
            List<Product> products,
            int page,
            bool initLoading,
            CancelToken? cancelToken)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GoodsListParamsModel() when $default != null:
        return $default(_that.category, _that.subcategor, _that.sort,
            _that.products, _that.page, _that.initLoading, _that.cancelToken);
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
    TResult Function(
            Category category,
            Subcategory? subcategor,
            String sort,
            List<Product> products,
            int page,
            bool initLoading,
            CancelToken? cancelToken)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GoodsListParamsModel():
        return $default(_that.category, _that.subcategor, _that.sort,
            _that.products, _that.page, _that.initLoading, _that.cancelToken);
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
    TResult? Function(
            Category category,
            Subcategory? subcategor,
            String sort,
            List<Product> products,
            int page,
            bool initLoading,
            CancelToken? cancelToken)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GoodsListParamsModel() when $default != null:
        return $default(_that.category, _that.subcategor, _that.sort,
            _that.products, _that.page, _that.initLoading, _that.cancelToken);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _GoodsListParamsModel implements GoodsListParamsModel {
  _GoodsListParamsModel(
      {required this.category,
      this.subcategor,
      this.sort = DdSort.defaultSort,
      required this.products,
      required this.page,
      required this.initLoading,
      this.cancelToken});

  @override
  Category category;
  @override
  Subcategory? subcategor;
  @override
  @JsonKey()
  String sort;
  @override
  List<Product> products;
  @override
  int page;
  @override
  bool initLoading;
  @override
  CancelToken? cancelToken;

  /// Create a copy of GoodsListParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GoodsListParamsModelCopyWith<_GoodsListParamsModel> get copyWith =>
      __$GoodsListParamsModelCopyWithImpl<_GoodsListParamsModel>(
          this, _$identity);

  @override
  String toString() {
    return 'GoodsListParamsModel(category: $category, subcategor: $subcategor, sort: $sort, products: $products, page: $page, initLoading: $initLoading, cancelToken: $cancelToken)';
  }
}

/// @nodoc
abstract mixin class _$GoodsListParamsModelCopyWith<$Res>
    implements $GoodsListParamsModelCopyWith<$Res> {
  factory _$GoodsListParamsModelCopyWith(_GoodsListParamsModel value,
          $Res Function(_GoodsListParamsModel) _then) =
      __$GoodsListParamsModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Category category,
      Subcategory? subcategor,
      String sort,
      List<Product> products,
      int page,
      bool initLoading,
      CancelToken? cancelToken});

  @override
  $CategoryCopyWith<$Res> get category;
  @override
  $SubcategoryCopyWith<$Res>? get subcategor;
}

/// @nodoc
class __$GoodsListParamsModelCopyWithImpl<$Res>
    implements _$GoodsListParamsModelCopyWith<$Res> {
  __$GoodsListParamsModelCopyWithImpl(this._self, this._then);

  final _GoodsListParamsModel _self;
  final $Res Function(_GoodsListParamsModel) _then;

  /// Create a copy of GoodsListParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? category = null,
    Object? subcategor = freezed,
    Object? sort = null,
    Object? products = null,
    Object? page = null,
    Object? initLoading = null,
    Object? cancelToken = freezed,
  }) {
    return _then(_GoodsListParamsModel(
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      subcategor: freezed == subcategor
          ? _self.subcategor
          : subcategor // ignore: cast_nullable_to_non_nullable
              as Subcategory?,
      sort: null == sort
          ? _self.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _self.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      initLoading: null == initLoading
          ? _self.initLoading
          : initLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      cancelToken: freezed == cancelToken
          ? _self.cancelToken
          : cancelToken // ignore: cast_nullable_to_non_nullable
              as CancelToken?,
    ));
  }

  /// Create a copy of GoodsListParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_self.category, (value) {
      return _then(_self.copyWith(category: value));
    });
  }

  /// Create a copy of GoodsListParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubcategoryCopyWith<$Res>? get subcategor {
    if (_self.subcategor == null) {
      return null;
    }

    return $SubcategoryCopyWith<$Res>(_self.subcategor!, (value) {
      return _then(_self.copyWith(subcategor: value));
    });
  }
}

// dart format on
