// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'goods_list_params_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GoodsListParamsModel {
  Category get category => throw _privateConstructorUsedError;
  set category(Category value) => throw _privateConstructorUsedError;
  Subcategory? get subcategor => throw _privateConstructorUsedError;
  set subcategor(Subcategory? value) => throw _privateConstructorUsedError;
  String get sort => throw _privateConstructorUsedError;
  set sort(String value) => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;
  set products(List<Product> value) => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  set page(int value) => throw _privateConstructorUsedError;
  bool get initLoading => throw _privateConstructorUsedError;
  set initLoading(bool value) => throw _privateConstructorUsedError;
  CancelToken? get cancelToken => throw _privateConstructorUsedError;
  set cancelToken(CancelToken? value) => throw _privateConstructorUsedError;

  /// Create a copy of GoodsListParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoodsListParamsModelCopyWith<GoodsListParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoodsListParamsModelCopyWith<$Res> {
  factory $GoodsListParamsModelCopyWith(GoodsListParamsModel value,
          $Res Function(GoodsListParamsModel) then) =
      _$GoodsListParamsModelCopyWithImpl<$Res, GoodsListParamsModel>;
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
class _$GoodsListParamsModelCopyWithImpl<$Res,
        $Val extends GoodsListParamsModel>
    implements $GoodsListParamsModelCopyWith<$Res> {
  _$GoodsListParamsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      subcategor: freezed == subcategor
          ? _value.subcategor
          : subcategor // ignore: cast_nullable_to_non_nullable
              as Subcategory?,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      initLoading: null == initLoading
          ? _value.initLoading
          : initLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      cancelToken: freezed == cancelToken
          ? _value.cancelToken
          : cancelToken // ignore: cast_nullable_to_non_nullable
              as CancelToken?,
    ) as $Val);
  }

  /// Create a copy of GoodsListParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  /// Create a copy of GoodsListParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubcategoryCopyWith<$Res>? get subcategor {
    if (_value.subcategor == null) {
      return null;
    }

    return $SubcategoryCopyWith<$Res>(_value.subcategor!, (value) {
      return _then(_value.copyWith(subcategor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GoodsListParamsModelImplCopyWith<$Res>
    implements $GoodsListParamsModelCopyWith<$Res> {
  factory _$$GoodsListParamsModelImplCopyWith(_$GoodsListParamsModelImpl value,
          $Res Function(_$GoodsListParamsModelImpl) then) =
      __$$GoodsListParamsModelImplCopyWithImpl<$Res>;
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
class __$$GoodsListParamsModelImplCopyWithImpl<$Res>
    extends _$GoodsListParamsModelCopyWithImpl<$Res, _$GoodsListParamsModelImpl>
    implements _$$GoodsListParamsModelImplCopyWith<$Res> {
  __$$GoodsListParamsModelImplCopyWithImpl(_$GoodsListParamsModelImpl _value,
      $Res Function(_$GoodsListParamsModelImpl) _then)
      : super(_value, _then);

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
    return _then(_$GoodsListParamsModelImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      subcategor: freezed == subcategor
          ? _value.subcategor
          : subcategor // ignore: cast_nullable_to_non_nullable
              as Subcategory?,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      initLoading: null == initLoading
          ? _value.initLoading
          : initLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      cancelToken: freezed == cancelToken
          ? _value.cancelToken
          : cancelToken // ignore: cast_nullable_to_non_nullable
              as CancelToken?,
    ));
  }
}

/// @nodoc

class _$GoodsListParamsModelImpl implements _GoodsListParamsModel {
  _$GoodsListParamsModelImpl(
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

  @override
  String toString() {
    return 'GoodsListParamsModel(category: $category, subcategor: $subcategor, sort: $sort, products: $products, page: $page, initLoading: $initLoading, cancelToken: $cancelToken)';
  }

  /// Create a copy of GoodsListParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoodsListParamsModelImplCopyWith<_$GoodsListParamsModelImpl>
      get copyWith =>
          __$$GoodsListParamsModelImplCopyWithImpl<_$GoodsListParamsModelImpl>(
              this, _$identity);
}

abstract class _GoodsListParamsModel implements GoodsListParamsModel {
  factory _GoodsListParamsModel(
      {required Category category,
      Subcategory? subcategor,
      String sort,
      required List<Product> products,
      required int page,
      required bool initLoading,
      CancelToken? cancelToken}) = _$GoodsListParamsModelImpl;

  @override
  Category get category;
  set category(Category value);
  @override
  Subcategory? get subcategor;
  set subcategor(Subcategory? value);
  @override
  String get sort;
  set sort(String value);
  @override
  List<Product> get products;
  set products(List<Product> value);
  @override
  int get page;
  set page(int value);
  @override
  bool get initLoading;
  set initLoading(bool value);
  @override
  CancelToken? get cancelToken;
  set cancelToken(CancelToken? value);

  /// Create a copy of GoodsListParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoodsListParamsModelImplCopyWith<_$GoodsListParamsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
