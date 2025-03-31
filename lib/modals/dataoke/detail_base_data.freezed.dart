// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_base_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DetailBaseDataResult {

@JsonKey(name: 'detail') Product get info;@JsonKey(name: 'similarList') List<Product> get similarProducts;@JsonKey(name: 'privilegeLink') CouponLinkResult get couponInfo;
/// Create a copy of DetailBaseDataResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DetailBaseDataResultCopyWith<DetailBaseDataResult> get copyWith => _$DetailBaseDataResultCopyWithImpl<DetailBaseDataResult>(this as DetailBaseDataResult, _$identity);

  /// Serializes this DetailBaseDataResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailBaseDataResult&&(identical(other.info, info) || other.info == info)&&const DeepCollectionEquality().equals(other.similarProducts, similarProducts)&&(identical(other.couponInfo, couponInfo) || other.couponInfo == couponInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,info,const DeepCollectionEquality().hash(similarProducts),couponInfo);

@override
String toString() {
  return 'DetailBaseDataResult(info: $info, similarProducts: $similarProducts, couponInfo: $couponInfo)';
}


}

/// @nodoc
abstract mixin class $DetailBaseDataResultCopyWith<$Res>  {
  factory $DetailBaseDataResultCopyWith(DetailBaseDataResult value, $Res Function(DetailBaseDataResult) _then) = _$DetailBaseDataResultCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'detail') Product info,@JsonKey(name: 'similarList') List<Product> similarProducts,@JsonKey(name: 'privilegeLink') CouponLinkResult couponInfo
});


$ProductCopyWith<$Res> get info;$CouponLinkResultCopyWith<$Res> get couponInfo;

}
/// @nodoc
class _$DetailBaseDataResultCopyWithImpl<$Res>
    implements $DetailBaseDataResultCopyWith<$Res> {
  _$DetailBaseDataResultCopyWithImpl(this._self, this._then);

  final DetailBaseDataResult _self;
  final $Res Function(DetailBaseDataResult) _then;

/// Create a copy of DetailBaseDataResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? info = null,Object? similarProducts = null,Object? couponInfo = null,}) {
  return _then(_self.copyWith(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as Product,similarProducts: null == similarProducts ? _self.similarProducts : similarProducts // ignore: cast_nullable_to_non_nullable
as List<Product>,couponInfo: null == couponInfo ? _self.couponInfo : couponInfo // ignore: cast_nullable_to_non_nullable
as CouponLinkResult,
  ));
}
/// Create a copy of DetailBaseDataResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res> get info {
  
  return $ProductCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}/// Create a copy of DetailBaseDataResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CouponLinkResultCopyWith<$Res> get couponInfo {
  
  return $CouponLinkResultCopyWith<$Res>(_self.couponInfo, (value) {
    return _then(_self.copyWith(couponInfo: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _DetailBaseDataResult extends DetailBaseDataResult {
  const _DetailBaseDataResult({@JsonKey(name: 'detail') required this.info, @JsonKey(name: 'similarList') final  List<Product> similarProducts = const [], @JsonKey(name: 'privilegeLink') this.couponInfo = const CouponLinkResult()}): _similarProducts = similarProducts,super._();
  factory _DetailBaseDataResult.fromJson(Map<String, dynamic> json) => _$DetailBaseDataResultFromJson(json);

@override@JsonKey(name: 'detail') final  Product info;
 final  List<Product> _similarProducts;
@override@JsonKey(name: 'similarList') List<Product> get similarProducts {
  if (_similarProducts is EqualUnmodifiableListView) return _similarProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_similarProducts);
}

@override@JsonKey(name: 'privilegeLink') final  CouponLinkResult couponInfo;

/// Create a copy of DetailBaseDataResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DetailBaseDataResultCopyWith<_DetailBaseDataResult> get copyWith => __$DetailBaseDataResultCopyWithImpl<_DetailBaseDataResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DetailBaseDataResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DetailBaseDataResult&&(identical(other.info, info) || other.info == info)&&const DeepCollectionEquality().equals(other._similarProducts, _similarProducts)&&(identical(other.couponInfo, couponInfo) || other.couponInfo == couponInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,info,const DeepCollectionEquality().hash(_similarProducts),couponInfo);

@override
String toString() {
  return 'DetailBaseDataResult(info: $info, similarProducts: $similarProducts, couponInfo: $couponInfo)';
}


}

/// @nodoc
abstract mixin class _$DetailBaseDataResultCopyWith<$Res> implements $DetailBaseDataResultCopyWith<$Res> {
  factory _$DetailBaseDataResultCopyWith(_DetailBaseDataResult value, $Res Function(_DetailBaseDataResult) _then) = __$DetailBaseDataResultCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'detail') Product info,@JsonKey(name: 'similarList') List<Product> similarProducts,@JsonKey(name: 'privilegeLink') CouponLinkResult couponInfo
});


@override $ProductCopyWith<$Res> get info;@override $CouponLinkResultCopyWith<$Res> get couponInfo;

}
/// @nodoc
class __$DetailBaseDataResultCopyWithImpl<$Res>
    implements _$DetailBaseDataResultCopyWith<$Res> {
  __$DetailBaseDataResultCopyWithImpl(this._self, this._then);

  final _DetailBaseDataResult _self;
  final $Res Function(_DetailBaseDataResult) _then;

/// Create a copy of DetailBaseDataResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? info = null,Object? similarProducts = null,Object? couponInfo = null,}) {
  return _then(_DetailBaseDataResult(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as Product,similarProducts: null == similarProducts ? _self._similarProducts : similarProducts // ignore: cast_nullable_to_non_nullable
as List<Product>,couponInfo: null == couponInfo ? _self.couponInfo : couponInfo // ignore: cast_nullable_to_non_nullable
as CouponLinkResult,
  ));
}

/// Create a copy of DetailBaseDataResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res> get info {
  
  return $ProductCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}/// Create a copy of DetailBaseDataResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CouponLinkResultCopyWith<$Res> get couponInfo {
  
  return $CouponLinkResultCopyWith<$Res>(_self.couponInfo, (value) {
    return _then(_self.copyWith(couponInfo: value));
  });
}
}


/// @nodoc
mixin _$CouponLinkResult {

 String? get couponRemainCount; String? get kuaiZhanUrl; String? get minCommissionRate; num get originalPrice; String? get couponInfo; num get actualPrice; String? get shortUrl; String? get maxCommissionRate; String? get couponEndTime; String? get couponTotalCount; String? get itemId; String? get couponStartTime; String? get couponClickUrl; String? get itemUrl; String? get longTpwd; String? get tpwd;
/// Create a copy of CouponLinkResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CouponLinkResultCopyWith<CouponLinkResult> get copyWith => _$CouponLinkResultCopyWithImpl<CouponLinkResult>(this as CouponLinkResult, _$identity);

  /// Serializes this CouponLinkResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CouponLinkResult&&(identical(other.couponRemainCount, couponRemainCount) || other.couponRemainCount == couponRemainCount)&&(identical(other.kuaiZhanUrl, kuaiZhanUrl) || other.kuaiZhanUrl == kuaiZhanUrl)&&(identical(other.minCommissionRate, minCommissionRate) || other.minCommissionRate == minCommissionRate)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&(identical(other.couponInfo, couponInfo) || other.couponInfo == couponInfo)&&(identical(other.actualPrice, actualPrice) || other.actualPrice == actualPrice)&&(identical(other.shortUrl, shortUrl) || other.shortUrl == shortUrl)&&(identical(other.maxCommissionRate, maxCommissionRate) || other.maxCommissionRate == maxCommissionRate)&&(identical(other.couponEndTime, couponEndTime) || other.couponEndTime == couponEndTime)&&(identical(other.couponTotalCount, couponTotalCount) || other.couponTotalCount == couponTotalCount)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.couponStartTime, couponStartTime) || other.couponStartTime == couponStartTime)&&(identical(other.couponClickUrl, couponClickUrl) || other.couponClickUrl == couponClickUrl)&&(identical(other.itemUrl, itemUrl) || other.itemUrl == itemUrl)&&(identical(other.longTpwd, longTpwd) || other.longTpwd == longTpwd)&&(identical(other.tpwd, tpwd) || other.tpwd == tpwd));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,couponRemainCount,kuaiZhanUrl,minCommissionRate,originalPrice,couponInfo,actualPrice,shortUrl,maxCommissionRate,couponEndTime,couponTotalCount,itemId,couponStartTime,couponClickUrl,itemUrl,longTpwd,tpwd);

@override
String toString() {
  return 'CouponLinkResult(couponRemainCount: $couponRemainCount, kuaiZhanUrl: $kuaiZhanUrl, minCommissionRate: $minCommissionRate, originalPrice: $originalPrice, couponInfo: $couponInfo, actualPrice: $actualPrice, shortUrl: $shortUrl, maxCommissionRate: $maxCommissionRate, couponEndTime: $couponEndTime, couponTotalCount: $couponTotalCount, itemId: $itemId, couponStartTime: $couponStartTime, couponClickUrl: $couponClickUrl, itemUrl: $itemUrl, longTpwd: $longTpwd, tpwd: $tpwd)';
}


}

/// @nodoc
abstract mixin class $CouponLinkResultCopyWith<$Res>  {
  factory $CouponLinkResultCopyWith(CouponLinkResult value, $Res Function(CouponLinkResult) _then) = _$CouponLinkResultCopyWithImpl;
@useResult
$Res call({
 String? couponRemainCount, String? kuaiZhanUrl, String? minCommissionRate, num originalPrice, String? couponInfo, num actualPrice, String? shortUrl, String? maxCommissionRate, String? couponEndTime, String? couponTotalCount, String? itemId, String? couponStartTime, String? couponClickUrl, String? itemUrl, String? longTpwd, String? tpwd
});




}
/// @nodoc
class _$CouponLinkResultCopyWithImpl<$Res>
    implements $CouponLinkResultCopyWith<$Res> {
  _$CouponLinkResultCopyWithImpl(this._self, this._then);

  final CouponLinkResult _self;
  final $Res Function(CouponLinkResult) _then;

/// Create a copy of CouponLinkResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? couponRemainCount = freezed,Object? kuaiZhanUrl = freezed,Object? minCommissionRate = freezed,Object? originalPrice = null,Object? couponInfo = freezed,Object? actualPrice = null,Object? shortUrl = freezed,Object? maxCommissionRate = freezed,Object? couponEndTime = freezed,Object? couponTotalCount = freezed,Object? itemId = freezed,Object? couponStartTime = freezed,Object? couponClickUrl = freezed,Object? itemUrl = freezed,Object? longTpwd = freezed,Object? tpwd = freezed,}) {
  return _then(_self.copyWith(
couponRemainCount: freezed == couponRemainCount ? _self.couponRemainCount : couponRemainCount // ignore: cast_nullable_to_non_nullable
as String?,kuaiZhanUrl: freezed == kuaiZhanUrl ? _self.kuaiZhanUrl : kuaiZhanUrl // ignore: cast_nullable_to_non_nullable
as String?,minCommissionRate: freezed == minCommissionRate ? _self.minCommissionRate : minCommissionRate // ignore: cast_nullable_to_non_nullable
as String?,originalPrice: null == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as num,couponInfo: freezed == couponInfo ? _self.couponInfo : couponInfo // ignore: cast_nullable_to_non_nullable
as String?,actualPrice: null == actualPrice ? _self.actualPrice : actualPrice // ignore: cast_nullable_to_non_nullable
as num,shortUrl: freezed == shortUrl ? _self.shortUrl : shortUrl // ignore: cast_nullable_to_non_nullable
as String?,maxCommissionRate: freezed == maxCommissionRate ? _self.maxCommissionRate : maxCommissionRate // ignore: cast_nullable_to_non_nullable
as String?,couponEndTime: freezed == couponEndTime ? _self.couponEndTime : couponEndTime // ignore: cast_nullable_to_non_nullable
as String?,couponTotalCount: freezed == couponTotalCount ? _self.couponTotalCount : couponTotalCount // ignore: cast_nullable_to_non_nullable
as String?,itemId: freezed == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String?,couponStartTime: freezed == couponStartTime ? _self.couponStartTime : couponStartTime // ignore: cast_nullable_to_non_nullable
as String?,couponClickUrl: freezed == couponClickUrl ? _self.couponClickUrl : couponClickUrl // ignore: cast_nullable_to_non_nullable
as String?,itemUrl: freezed == itemUrl ? _self.itemUrl : itemUrl // ignore: cast_nullable_to_non_nullable
as String?,longTpwd: freezed == longTpwd ? _self.longTpwd : longTpwd // ignore: cast_nullable_to_non_nullable
as String?,tpwd: freezed == tpwd ? _self.tpwd : tpwd // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CouponLinkResult extends CouponLinkResult {
  const _CouponLinkResult({this.couponRemainCount = '', this.kuaiZhanUrl = '', this.minCommissionRate = '', this.originalPrice = 0, this.couponInfo = '', this.actualPrice = 0, this.shortUrl = '', this.maxCommissionRate = '', this.couponEndTime = '', this.couponTotalCount = '', this.itemId = '', this.couponStartTime = '', this.couponClickUrl = '', this.itemUrl = '', this.longTpwd = '', this.tpwd = ''}): super._();
  factory _CouponLinkResult.fromJson(Map<String, dynamic> json) => _$CouponLinkResultFromJson(json);

@override@JsonKey() final  String? couponRemainCount;
@override@JsonKey() final  String? kuaiZhanUrl;
@override@JsonKey() final  String? minCommissionRate;
@override@JsonKey() final  num originalPrice;
@override@JsonKey() final  String? couponInfo;
@override@JsonKey() final  num actualPrice;
@override@JsonKey() final  String? shortUrl;
@override@JsonKey() final  String? maxCommissionRate;
@override@JsonKey() final  String? couponEndTime;
@override@JsonKey() final  String? couponTotalCount;
@override@JsonKey() final  String? itemId;
@override@JsonKey() final  String? couponStartTime;
@override@JsonKey() final  String? couponClickUrl;
@override@JsonKey() final  String? itemUrl;
@override@JsonKey() final  String? longTpwd;
@override@JsonKey() final  String? tpwd;

/// Create a copy of CouponLinkResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CouponLinkResultCopyWith<_CouponLinkResult> get copyWith => __$CouponLinkResultCopyWithImpl<_CouponLinkResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CouponLinkResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CouponLinkResult&&(identical(other.couponRemainCount, couponRemainCount) || other.couponRemainCount == couponRemainCount)&&(identical(other.kuaiZhanUrl, kuaiZhanUrl) || other.kuaiZhanUrl == kuaiZhanUrl)&&(identical(other.minCommissionRate, minCommissionRate) || other.minCommissionRate == minCommissionRate)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&(identical(other.couponInfo, couponInfo) || other.couponInfo == couponInfo)&&(identical(other.actualPrice, actualPrice) || other.actualPrice == actualPrice)&&(identical(other.shortUrl, shortUrl) || other.shortUrl == shortUrl)&&(identical(other.maxCommissionRate, maxCommissionRate) || other.maxCommissionRate == maxCommissionRate)&&(identical(other.couponEndTime, couponEndTime) || other.couponEndTime == couponEndTime)&&(identical(other.couponTotalCount, couponTotalCount) || other.couponTotalCount == couponTotalCount)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.couponStartTime, couponStartTime) || other.couponStartTime == couponStartTime)&&(identical(other.couponClickUrl, couponClickUrl) || other.couponClickUrl == couponClickUrl)&&(identical(other.itemUrl, itemUrl) || other.itemUrl == itemUrl)&&(identical(other.longTpwd, longTpwd) || other.longTpwd == longTpwd)&&(identical(other.tpwd, tpwd) || other.tpwd == tpwd));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,couponRemainCount,kuaiZhanUrl,minCommissionRate,originalPrice,couponInfo,actualPrice,shortUrl,maxCommissionRate,couponEndTime,couponTotalCount,itemId,couponStartTime,couponClickUrl,itemUrl,longTpwd,tpwd);

@override
String toString() {
  return 'CouponLinkResult(couponRemainCount: $couponRemainCount, kuaiZhanUrl: $kuaiZhanUrl, minCommissionRate: $minCommissionRate, originalPrice: $originalPrice, couponInfo: $couponInfo, actualPrice: $actualPrice, shortUrl: $shortUrl, maxCommissionRate: $maxCommissionRate, couponEndTime: $couponEndTime, couponTotalCount: $couponTotalCount, itemId: $itemId, couponStartTime: $couponStartTime, couponClickUrl: $couponClickUrl, itemUrl: $itemUrl, longTpwd: $longTpwd, tpwd: $tpwd)';
}


}

/// @nodoc
abstract mixin class _$CouponLinkResultCopyWith<$Res> implements $CouponLinkResultCopyWith<$Res> {
  factory _$CouponLinkResultCopyWith(_CouponLinkResult value, $Res Function(_CouponLinkResult) _then) = __$CouponLinkResultCopyWithImpl;
@override @useResult
$Res call({
 String? couponRemainCount, String? kuaiZhanUrl, String? minCommissionRate, num originalPrice, String? couponInfo, num actualPrice, String? shortUrl, String? maxCommissionRate, String? couponEndTime, String? couponTotalCount, String? itemId, String? couponStartTime, String? couponClickUrl, String? itemUrl, String? longTpwd, String? tpwd
});




}
/// @nodoc
class __$CouponLinkResultCopyWithImpl<$Res>
    implements _$CouponLinkResultCopyWith<$Res> {
  __$CouponLinkResultCopyWithImpl(this._self, this._then);

  final _CouponLinkResult _self;
  final $Res Function(_CouponLinkResult) _then;

/// Create a copy of CouponLinkResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? couponRemainCount = freezed,Object? kuaiZhanUrl = freezed,Object? minCommissionRate = freezed,Object? originalPrice = null,Object? couponInfo = freezed,Object? actualPrice = null,Object? shortUrl = freezed,Object? maxCommissionRate = freezed,Object? couponEndTime = freezed,Object? couponTotalCount = freezed,Object? itemId = freezed,Object? couponStartTime = freezed,Object? couponClickUrl = freezed,Object? itemUrl = freezed,Object? longTpwd = freezed,Object? tpwd = freezed,}) {
  return _then(_CouponLinkResult(
couponRemainCount: freezed == couponRemainCount ? _self.couponRemainCount : couponRemainCount // ignore: cast_nullable_to_non_nullable
as String?,kuaiZhanUrl: freezed == kuaiZhanUrl ? _self.kuaiZhanUrl : kuaiZhanUrl // ignore: cast_nullable_to_non_nullable
as String?,minCommissionRate: freezed == minCommissionRate ? _self.minCommissionRate : minCommissionRate // ignore: cast_nullable_to_non_nullable
as String?,originalPrice: null == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as num,couponInfo: freezed == couponInfo ? _self.couponInfo : couponInfo // ignore: cast_nullable_to_non_nullable
as String?,actualPrice: null == actualPrice ? _self.actualPrice : actualPrice // ignore: cast_nullable_to_non_nullable
as num,shortUrl: freezed == shortUrl ? _self.shortUrl : shortUrl // ignore: cast_nullable_to_non_nullable
as String?,maxCommissionRate: freezed == maxCommissionRate ? _self.maxCommissionRate : maxCommissionRate // ignore: cast_nullable_to_non_nullable
as String?,couponEndTime: freezed == couponEndTime ? _self.couponEndTime : couponEndTime // ignore: cast_nullable_to_non_nullable
as String?,couponTotalCount: freezed == couponTotalCount ? _self.couponTotalCount : couponTotalCount // ignore: cast_nullable_to_non_nullable
as String?,itemId: freezed == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String?,couponStartTime: freezed == couponStartTime ? _self.couponStartTime : couponStartTime // ignore: cast_nullable_to_non_nullable
as String?,couponClickUrl: freezed == couponClickUrl ? _self.couponClickUrl : couponClickUrl // ignore: cast_nullable_to_non_nullable
as String?,itemUrl: freezed == itemUrl ? _self.itemUrl : itemUrl // ignore: cast_nullable_to_non_nullable
as String?,longTpwd: freezed == longTpwd ? _self.longTpwd : longTpwd // ignore: cast_nullable_to_non_nullable
as String?,tpwd: freezed == tpwd ? _self.tpwd : tpwd // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
