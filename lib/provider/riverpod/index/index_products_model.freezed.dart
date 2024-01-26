// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'index_products_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IndexProductsModel {
  List<Product> get products => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IndexProductsModelCopyWith<IndexProductsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndexProductsModelCopyWith<$Res> {
  factory $IndexProductsModelCopyWith(
          IndexProductsModel value, $Res Function(IndexProductsModel) then) =
      _$IndexProductsModelCopyWithImpl<$Res, IndexProductsModel>;
  @useResult
  $Res call({List<Product> products, int page});
}

/// @nodoc
class _$IndexProductsModelCopyWithImpl<$Res, $Val extends IndexProductsModel>
    implements $IndexProductsModelCopyWith<$Res> {
  _$IndexProductsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IndexProductsModelImplCopyWith<$Res>
    implements $IndexProductsModelCopyWith<$Res> {
  factory _$$IndexProductsModelImplCopyWith(_$IndexProductsModelImpl value,
          $Res Function(_$IndexProductsModelImpl) then) =
      __$$IndexProductsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Product> products, int page});
}

/// @nodoc
class __$$IndexProductsModelImplCopyWithImpl<$Res>
    extends _$IndexProductsModelCopyWithImpl<$Res, _$IndexProductsModelImpl>
    implements _$$IndexProductsModelImplCopyWith<$Res> {
  __$$IndexProductsModelImplCopyWithImpl(_$IndexProductsModelImpl _value,
      $Res Function(_$IndexProductsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? page = null,
  }) {
    return _then(_$IndexProductsModelImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$IndexProductsModelImpl implements _IndexProductsModel {
  _$IndexProductsModelImpl(
      {required final List<Product> products, required this.page})
      : _products = products;

  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final int page;

  @override
  String toString() {
    return 'IndexProductsModel(products: $products, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndexProductsModelImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_products), page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IndexProductsModelImplCopyWith<_$IndexProductsModelImpl> get copyWith =>
      __$$IndexProductsModelImplCopyWithImpl<_$IndexProductsModelImpl>(
          this, _$identity);
}

abstract class _IndexProductsModel implements IndexProductsModel {
  factory _IndexProductsModel(
      {required final List<Product> products,
      required final int page}) = _$IndexProductsModelImpl;

  @override
  List<Product> get products;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$IndexProductsModelImplCopyWith<_$IndexProductsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
