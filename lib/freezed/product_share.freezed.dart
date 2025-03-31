// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_share.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductShare {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'title') String get title;@JsonKey(name: 'price') String get price;@JsonKey(name: 'image') String get image;@JsonKey(name: 'productId') String get productId;@JsonKey(name: 'type') ProductShareType get type;
/// Create a copy of ProductShare
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductShareCopyWith<ProductShare> get copyWith => _$ProductShareCopyWithImpl<ProductShare>(this as ProductShare, _$identity);

  /// Serializes this ProductShare to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductShare&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.image, image) || other.image == image)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,price,image,productId,type);

@override
String toString() {
  return 'ProductShare(id: $id, title: $title, price: $price, image: $image, productId: $productId, type: $type)';
}


}

/// @nodoc
abstract mixin class $ProductShareCopyWith<$Res>  {
  factory $ProductShareCopyWith(ProductShare value, $Res Function(ProductShare) _then) = _$ProductShareCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'title') String title,@JsonKey(name: 'price') String price,@JsonKey(name: 'image') String image,@JsonKey(name: 'productId') String productId,@JsonKey(name: 'type') ProductShareType type
});




}
/// @nodoc
class _$ProductShareCopyWithImpl<$Res>
    implements $ProductShareCopyWith<$Res> {
  _$ProductShareCopyWithImpl(this._self, this._then);

  final ProductShare _self;
  final $Res Function(ProductShare) _then;

/// Create a copy of ProductShare
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = null,Object? price = null,Object? image = null,Object? productId = null,Object? type = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ProductShareType,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ProductShare extends ProductShare {
  const _ProductShare({@JsonKey(name: 'id') this.id, @JsonKey(name: 'title') this.title = '', @JsonKey(name: 'price') this.price = '', @JsonKey(name: 'image') this.image = '', @JsonKey(name: 'productId') this.productId = '', @JsonKey(name: 'type') this.type = ProductShareType.tb}): super._();
  factory _ProductShare.fromJson(Map<String, dynamic> json) => _$ProductShareFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'title') final  String title;
@override@JsonKey(name: 'price') final  String price;
@override@JsonKey(name: 'image') final  String image;
@override@JsonKey(name: 'productId') final  String productId;
@override@JsonKey(name: 'type') final  ProductShareType type;

/// Create a copy of ProductShare
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductShareCopyWith<_ProductShare> get copyWith => __$ProductShareCopyWithImpl<_ProductShare>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductShareToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductShare&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.image, image) || other.image == image)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,price,image,productId,type);

@override
String toString() {
  return 'ProductShare(id: $id, title: $title, price: $price, image: $image, productId: $productId, type: $type)';
}


}

/// @nodoc
abstract mixin class _$ProductShareCopyWith<$Res> implements $ProductShareCopyWith<$Res> {
  factory _$ProductShareCopyWith(_ProductShare value, $Res Function(_ProductShare) _then) = __$ProductShareCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'title') String title,@JsonKey(name: 'price') String price,@JsonKey(name: 'image') String image,@JsonKey(name: 'productId') String productId,@JsonKey(name: 'type') ProductShareType type
});




}
/// @nodoc
class __$ProductShareCopyWithImpl<$Res>
    implements _$ProductShareCopyWith<$Res> {
  __$ProductShareCopyWithImpl(this._self, this._then);

  final _ProductShare _self;
  final $Res Function(_ProductShare) _then;

/// Create a copy of ProductShare
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = null,Object? price = null,Object? image = null,Object? productId = null,Object? type = null,}) {
  return _then(_ProductShare(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ProductShareType,
  ));
}


}

// dart format on
