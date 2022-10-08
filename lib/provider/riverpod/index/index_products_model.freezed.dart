// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'index_products_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IndexProductsModel _$IndexProductsModelFromJson(Map<String, dynamic> json) {
  return _IndexProductsModel.fromJson(json);
}

/// @nodoc
mixin _$IndexProductsModel {
  List<Product> get products => throw _privateConstructorUsedError;
  set products(List<Product> value) => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  set page(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IndexProductsModelCopyWith<IndexProductsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndexProductsModelCopyWith<$Res> {
  factory $IndexProductsModelCopyWith(
          IndexProductsModel value, $Res Function(IndexProductsModel) then) =
      _$IndexProductsModelCopyWithImpl<$Res>;
  $Res call({List<Product> products, int page});
}

/// @nodoc
class _$IndexProductsModelCopyWithImpl<$Res>
    implements $IndexProductsModelCopyWith<$Res> {
  _$IndexProductsModelCopyWithImpl(this._value, this._then);

  final IndexProductsModel _value;
  // ignore: unused_field
  final $Res Function(IndexProductsModel) _then;

  @override
  $Res call({
    Object? products = freezed,
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_IndexProductsModelCopyWith<$Res>
    implements $IndexProductsModelCopyWith<$Res> {
  factory _$$_IndexProductsModelCopyWith(_$_IndexProductsModel value,
          $Res Function(_$_IndexProductsModel) then) =
      __$$_IndexProductsModelCopyWithImpl<$Res>;
  @override
  $Res call({List<Product> products, int page});
}

/// @nodoc
class __$$_IndexProductsModelCopyWithImpl<$Res>
    extends _$IndexProductsModelCopyWithImpl<$Res>
    implements _$$_IndexProductsModelCopyWith<$Res> {
  __$$_IndexProductsModelCopyWithImpl(
      _$_IndexProductsModel _value, $Res Function(_$_IndexProductsModel) _then)
      : super(_value, (v) => _then(v as _$_IndexProductsModel));

  @override
  _$_IndexProductsModel get _value => super._value as _$_IndexProductsModel;

  @override
  $Res call({
    Object? products = freezed,
    Object? page = freezed,
  }) {
    return _then(_$_IndexProductsModel(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IndexProductsModel implements _IndexProductsModel {
  _$_IndexProductsModel({required this.products, required this.page});

  factory _$_IndexProductsModel.fromJson(Map<String, dynamic> json) =>
      _$$_IndexProductsModelFromJson(json);

  @override
  List<Product> products;
  @override
  int page;

  @override
  String toString() {
    return 'IndexProductsModel(products: $products, page: $page)';
  }

  @JsonKey(ignore: true)
  @override
  _$$_IndexProductsModelCopyWith<_$_IndexProductsModel> get copyWith =>
      __$$_IndexProductsModelCopyWithImpl<_$_IndexProductsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IndexProductsModelToJson(
      this,
    );
  }
}

abstract class _IndexProductsModel implements IndexProductsModel {
  factory _IndexProductsModel(
      {required List<Product> products,
      required int page}) = _$_IndexProductsModel;

  factory _IndexProductsModel.fromJson(Map<String, dynamic> json) =
      _$_IndexProductsModel.fromJson;

  @override
  List<Product> get products;
  set products(List<Product> value);
  @override
  int get page;
  set page(int value);
  @override
  @JsonKey(ignore: true)
  _$$_IndexProductsModelCopyWith<_$_IndexProductsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
