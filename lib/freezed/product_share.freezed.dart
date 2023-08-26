// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_share.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductShare _$ProductShareFromJson(Map<String, dynamic> json) {
  return _ProductShare.fromJson(json);
}

/// @nodoc
mixin _$ProductShare {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  String get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'productId')
  String get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  ProductShareType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductShareCopyWith<ProductShare> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductShareCopyWith<$Res> {
  factory $ProductShareCopyWith(
          ProductShare value, $Res Function(ProductShare) then) =
      _$ProductShareCopyWithImpl<$Res, ProductShare>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'price') String price,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'productId') String productId,
      @JsonKey(name: 'type') ProductShareType type});
}

/// @nodoc
class _$ProductShareCopyWithImpl<$Res, $Val extends ProductShare>
    implements $ProductShareCopyWith<$Res> {
  _$ProductShareCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? price = null,
    Object? image = null,
    Object? productId = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProductShareType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductShareCopyWith<$Res>
    implements $ProductShareCopyWith<$Res> {
  factory _$$_ProductShareCopyWith(
          _$_ProductShare value, $Res Function(_$_ProductShare) then) =
      __$$_ProductShareCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'price') String price,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'productId') String productId,
      @JsonKey(name: 'type') ProductShareType type});
}

/// @nodoc
class __$$_ProductShareCopyWithImpl<$Res>
    extends _$ProductShareCopyWithImpl<$Res, _$_ProductShare>
    implements _$$_ProductShareCopyWith<$Res> {
  __$$_ProductShareCopyWithImpl(
      _$_ProductShare _value, $Res Function(_$_ProductShare) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? price = null,
    Object? image = null,
    Object? productId = null,
    Object? type = null,
  }) {
    return _then(_$_ProductShare(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProductShareType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductShare extends _ProductShare {
  const _$_ProductShare(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'title') this.title = '',
      @JsonKey(name: 'price') this.price = '',
      @JsonKey(name: 'image') this.image = '',
      @JsonKey(name: 'productId') this.productId = '',
      @JsonKey(name: 'type') this.type = ProductShareType.tb})
      : super._();

  factory _$_ProductShare.fromJson(Map<String, dynamic> json) =>
      _$$_ProductShareFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'price')
  final String price;
  @override
  @JsonKey(name: 'image')
  final String image;
  @override
  @JsonKey(name: 'productId')
  final String productId;
  @override
  @JsonKey(name: 'type')
  final ProductShareType type;

  @override
  String toString() {
    return 'ProductShare(id: $id, title: $title, price: $price, image: $image, productId: $productId, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductShare &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, price, image, productId, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductShareCopyWith<_$_ProductShare> get copyWith =>
      __$$_ProductShareCopyWithImpl<_$_ProductShare>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductShareToJson(
      this,
    );
  }
}

abstract class _ProductShare extends ProductShare {
  const factory _ProductShare(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'title') final String title,
      @JsonKey(name: 'price') final String price,
      @JsonKey(name: 'image') final String image,
      @JsonKey(name: 'productId') final String productId,
      @JsonKey(name: 'type') final ProductShareType type}) = _$_ProductShare;
  const _ProductShare._() : super._();

  factory _ProductShare.fromJson(Map<String, dynamic> json) =
      _$_ProductShare.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'price')
  String get price;
  @override
  @JsonKey(name: 'image')
  String get image;
  @override
  @JsonKey(name: 'productId')
  String get productId;
  @override
  @JsonKey(name: 'type')
  ProductShareType get type;
  @override
  @JsonKey(ignore: true)
  _$$_ProductShareCopyWith<_$_ProductShare> get copyWith =>
      throw _privateConstructorUsedError;
}
