// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'index_products_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IndexProductsModel {

 List<ProductModel> get products; int get page;
/// Create a copy of IndexProductsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IndexProductsModelCopyWith<IndexProductsModel> get copyWith => _$IndexProductsModelCopyWithImpl<IndexProductsModel>(this as IndexProductsModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IndexProductsModel&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(products),page);

@override
String toString() {
  return 'IndexProductsModel(products: $products, page: $page)';
}


}

/// @nodoc
abstract mixin class $IndexProductsModelCopyWith<$Res>  {
  factory $IndexProductsModelCopyWith(IndexProductsModel value, $Res Function(IndexProductsModel) _then) = _$IndexProductsModelCopyWithImpl;
@useResult
$Res call({
 List<ProductModel> products, int page
});




}
/// @nodoc
class _$IndexProductsModelCopyWithImpl<$Res>
    implements $IndexProductsModelCopyWith<$Res> {
  _$IndexProductsModelCopyWithImpl(this._self, this._then);

  final IndexProductsModel _self;
  final $Res Function(IndexProductsModel) _then;

/// Create a copy of IndexProductsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? products = null,Object? page = null,}) {
  return _then(_self.copyWith(
products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<ProductModel>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc


class _IndexProductsModel implements IndexProductsModel {
   _IndexProductsModel({required final  List<ProductModel> products, required this.page}): _products = products;
  

 final  List<ProductModel> _products;
@override List<ProductModel> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

@override final  int page;

/// Create a copy of IndexProductsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IndexProductsModelCopyWith<_IndexProductsModel> get copyWith => __$IndexProductsModelCopyWithImpl<_IndexProductsModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IndexProductsModel&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products),page);

@override
String toString() {
  return 'IndexProductsModel(products: $products, page: $page)';
}


}

/// @nodoc
abstract mixin class _$IndexProductsModelCopyWith<$Res> implements $IndexProductsModelCopyWith<$Res> {
  factory _$IndexProductsModelCopyWith(_IndexProductsModel value, $Res Function(_IndexProductsModel) _then) = __$IndexProductsModelCopyWithImpl;
@override @useResult
$Res call({
 List<ProductModel> products, int page
});




}
/// @nodoc
class __$IndexProductsModelCopyWithImpl<$Res>
    implements _$IndexProductsModelCopyWith<$Res> {
  __$IndexProductsModelCopyWithImpl(this._self, this._then);

  final _IndexProductsModel _self;
  final $Res Function(_IndexProductsModel) _then;

/// Create a copy of IndexProductsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? products = null,Object? page = null,}) {
  return _then(_IndexProductsModel(
products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductModel>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
