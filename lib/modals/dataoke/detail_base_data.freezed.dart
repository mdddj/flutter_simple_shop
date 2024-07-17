// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_base_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailBaseDataResult _$DetailBaseDataResultFromJson(Map<String, dynamic> json) {
  return _DetailBaseDataResult.fromJson(json);
}

/// @nodoc
mixin _$DetailBaseDataResult {
  @JsonKey(name: 'detail')
  Product get info => throw _privateConstructorUsedError;
  @JsonKey(name: 'similarList')
  List<Product> get similarProducts => throw _privateConstructorUsedError;
  @JsonKey(name: 'privilegeLink')
  CouponLinkResult get couponInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailBaseDataResultCopyWith<DetailBaseDataResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailBaseDataResultCopyWith<$Res> {
  factory $DetailBaseDataResultCopyWith(DetailBaseDataResult value,
          $Res Function(DetailBaseDataResult) then) =
      _$DetailBaseDataResultCopyWithImpl<$Res, DetailBaseDataResult>;
  @useResult
  $Res call(
      {@JsonKey(name: 'detail') Product info,
      @JsonKey(name: 'similarList') List<Product> similarProducts,
      @JsonKey(name: 'privilegeLink') CouponLinkResult couponInfo});

  $ProductCopyWith<$Res> get info;
  $CouponLinkResultCopyWith<$Res> get couponInfo;
}

/// @nodoc
class _$DetailBaseDataResultCopyWithImpl<$Res,
        $Val extends DetailBaseDataResult>
    implements $DetailBaseDataResultCopyWith<$Res> {
  _$DetailBaseDataResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? similarProducts = null,
    Object? couponInfo = null,
  }) {
    return _then(_value.copyWith(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Product,
      similarProducts: null == similarProducts
          ? _value.similarProducts
          : similarProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      couponInfo: null == couponInfo
          ? _value.couponInfo
          : couponInfo // ignore: cast_nullable_to_non_nullable
              as CouponLinkResult,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get info {
    return $ProductCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CouponLinkResultCopyWith<$Res> get couponInfo {
    return $CouponLinkResultCopyWith<$Res>(_value.couponInfo, (value) {
      return _then(_value.copyWith(couponInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailBaseDataResultImplCopyWith<$Res>
    implements $DetailBaseDataResultCopyWith<$Res> {
  factory _$$DetailBaseDataResultImplCopyWith(_$DetailBaseDataResultImpl value,
          $Res Function(_$DetailBaseDataResultImpl) then) =
      __$$DetailBaseDataResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'detail') Product info,
      @JsonKey(name: 'similarList') List<Product> similarProducts,
      @JsonKey(name: 'privilegeLink') CouponLinkResult couponInfo});

  @override
  $ProductCopyWith<$Res> get info;
  @override
  $CouponLinkResultCopyWith<$Res> get couponInfo;
}

/// @nodoc
class __$$DetailBaseDataResultImplCopyWithImpl<$Res>
    extends _$DetailBaseDataResultCopyWithImpl<$Res, _$DetailBaseDataResultImpl>
    implements _$$DetailBaseDataResultImplCopyWith<$Res> {
  __$$DetailBaseDataResultImplCopyWithImpl(_$DetailBaseDataResultImpl _value,
      $Res Function(_$DetailBaseDataResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? similarProducts = null,
    Object? couponInfo = null,
  }) {
    return _then(_$DetailBaseDataResultImpl(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Product,
      similarProducts: null == similarProducts
          ? _value._similarProducts
          : similarProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      couponInfo: null == couponInfo
          ? _value.couponInfo
          : couponInfo // ignore: cast_nullable_to_non_nullable
              as CouponLinkResult,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailBaseDataResultImpl extends _DetailBaseDataResult {
  const _$DetailBaseDataResultImpl(
      {@JsonKey(name: 'detail') required this.info,
      @JsonKey(name: 'similarList')
      final List<Product> similarProducts = const [],
      @JsonKey(name: 'privilegeLink')
      this.couponInfo = const CouponLinkResult()})
      : _similarProducts = similarProducts,
        super._();

  factory _$DetailBaseDataResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailBaseDataResultImplFromJson(json);

  @override
  @JsonKey(name: 'detail')
  final Product info;
  final List<Product> _similarProducts;
  @override
  @JsonKey(name: 'similarList')
  List<Product> get similarProducts {
    if (_similarProducts is EqualUnmodifiableListView) return _similarProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_similarProducts);
  }

  @override
  @JsonKey(name: 'privilegeLink')
  final CouponLinkResult couponInfo;

  @override
  String toString() {
    return 'DetailBaseDataResult(info: $info, similarProducts: $similarProducts, couponInfo: $couponInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailBaseDataResultImpl &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality()
                .equals(other._similarProducts, _similarProducts) &&
            (identical(other.couponInfo, couponInfo) ||
                other.couponInfo == couponInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, info,
      const DeepCollectionEquality().hash(_similarProducts), couponInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailBaseDataResultImplCopyWith<_$DetailBaseDataResultImpl>
      get copyWith =>
          __$$DetailBaseDataResultImplCopyWithImpl<_$DetailBaseDataResultImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailBaseDataResultImplToJson(
      this,
    );
  }
}

abstract class _DetailBaseDataResult extends DetailBaseDataResult {
  const factory _DetailBaseDataResult(
          {@JsonKey(name: 'detail') required final Product info,
          @JsonKey(name: 'similarList') final List<Product> similarProducts,
          @JsonKey(name: 'privilegeLink') final CouponLinkResult couponInfo}) =
      _$DetailBaseDataResultImpl;
  const _DetailBaseDataResult._() : super._();

  factory _DetailBaseDataResult.fromJson(Map<String, dynamic> json) =
      _$DetailBaseDataResultImpl.fromJson;

  @override
  @JsonKey(name: 'detail')
  Product get info;
  @override
  @JsonKey(name: 'similarList')
  List<Product> get similarProducts;
  @override
  @JsonKey(name: 'privilegeLink')
  CouponLinkResult get couponInfo;
  @override
  @JsonKey(ignore: true)
  _$$DetailBaseDataResultImplCopyWith<_$DetailBaseDataResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CouponLinkResult _$CouponLinkResultFromJson(Map<String, dynamic> json) {
  return _CouponLinkResult.fromJson(json);
}

/// @nodoc
mixin _$CouponLinkResult {
  String? get couponRemainCount => throw _privateConstructorUsedError;
  String? get kuaiZhanUrl => throw _privateConstructorUsedError;
  String? get minCommissionRate => throw _privateConstructorUsedError;
  num get originalPrice => throw _privateConstructorUsedError;
  String? get couponInfo => throw _privateConstructorUsedError;
  num get actualPrice => throw _privateConstructorUsedError;
  String? get shortUrl => throw _privateConstructorUsedError;
  String? get maxCommissionRate => throw _privateConstructorUsedError;
  String? get couponEndTime => throw _privateConstructorUsedError;
  String? get couponTotalCount => throw _privateConstructorUsedError;
  String? get itemId => throw _privateConstructorUsedError;
  String? get couponStartTime => throw _privateConstructorUsedError;
  String? get couponClickUrl => throw _privateConstructorUsedError;
  String? get itemUrl => throw _privateConstructorUsedError;
  String? get longTpwd => throw _privateConstructorUsedError;
  String? get tpwd => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CouponLinkResultCopyWith<CouponLinkResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponLinkResultCopyWith<$Res> {
  factory $CouponLinkResultCopyWith(
          CouponLinkResult value, $Res Function(CouponLinkResult) then) =
      _$CouponLinkResultCopyWithImpl<$Res, CouponLinkResult>;
  @useResult
  $Res call(
      {String? couponRemainCount,
      String? kuaiZhanUrl,
      String? minCommissionRate,
      num originalPrice,
      String? couponInfo,
      num actualPrice,
      String? shortUrl,
      String? maxCommissionRate,
      String? couponEndTime,
      String? couponTotalCount,
      String? itemId,
      String? couponStartTime,
      String? couponClickUrl,
      String? itemUrl,
      String? longTpwd,
      String? tpwd});
}

/// @nodoc
class _$CouponLinkResultCopyWithImpl<$Res, $Val extends CouponLinkResult>
    implements $CouponLinkResultCopyWith<$Res> {
  _$CouponLinkResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? couponRemainCount = freezed,
    Object? kuaiZhanUrl = freezed,
    Object? minCommissionRate = freezed,
    Object? originalPrice = null,
    Object? couponInfo = freezed,
    Object? actualPrice = null,
    Object? shortUrl = freezed,
    Object? maxCommissionRate = freezed,
    Object? couponEndTime = freezed,
    Object? couponTotalCount = freezed,
    Object? itemId = freezed,
    Object? couponStartTime = freezed,
    Object? couponClickUrl = freezed,
    Object? itemUrl = freezed,
    Object? longTpwd = freezed,
    Object? tpwd = freezed,
  }) {
    return _then(_value.copyWith(
      couponRemainCount: freezed == couponRemainCount
          ? _value.couponRemainCount
          : couponRemainCount // ignore: cast_nullable_to_non_nullable
              as String?,
      kuaiZhanUrl: freezed == kuaiZhanUrl
          ? _value.kuaiZhanUrl
          : kuaiZhanUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      minCommissionRate: freezed == minCommissionRate
          ? _value.minCommissionRate
          : minCommissionRate // ignore: cast_nullable_to_non_nullable
              as String?,
      originalPrice: null == originalPrice
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as num,
      couponInfo: freezed == couponInfo
          ? _value.couponInfo
          : couponInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      actualPrice: null == actualPrice
          ? _value.actualPrice
          : actualPrice // ignore: cast_nullable_to_non_nullable
              as num,
      shortUrl: freezed == shortUrl
          ? _value.shortUrl
          : shortUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      maxCommissionRate: freezed == maxCommissionRate
          ? _value.maxCommissionRate
          : maxCommissionRate // ignore: cast_nullable_to_non_nullable
              as String?,
      couponEndTime: freezed == couponEndTime
          ? _value.couponEndTime
          : couponEndTime // ignore: cast_nullable_to_non_nullable
              as String?,
      couponTotalCount: freezed == couponTotalCount
          ? _value.couponTotalCount
          : couponTotalCount // ignore: cast_nullable_to_non_nullable
              as String?,
      itemId: freezed == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      couponStartTime: freezed == couponStartTime
          ? _value.couponStartTime
          : couponStartTime // ignore: cast_nullable_to_non_nullable
              as String?,
      couponClickUrl: freezed == couponClickUrl
          ? _value.couponClickUrl
          : couponClickUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      itemUrl: freezed == itemUrl
          ? _value.itemUrl
          : itemUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      longTpwd: freezed == longTpwd
          ? _value.longTpwd
          : longTpwd // ignore: cast_nullable_to_non_nullable
              as String?,
      tpwd: freezed == tpwd
          ? _value.tpwd
          : tpwd // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CouponLinkResultImplCopyWith<$Res>
    implements $CouponLinkResultCopyWith<$Res> {
  factory _$$CouponLinkResultImplCopyWith(_$CouponLinkResultImpl value,
          $Res Function(_$CouponLinkResultImpl) then) =
      __$$CouponLinkResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? couponRemainCount,
      String? kuaiZhanUrl,
      String? minCommissionRate,
      num originalPrice,
      String? couponInfo,
      num actualPrice,
      String? shortUrl,
      String? maxCommissionRate,
      String? couponEndTime,
      String? couponTotalCount,
      String? itemId,
      String? couponStartTime,
      String? couponClickUrl,
      String? itemUrl,
      String? longTpwd,
      String? tpwd});
}

/// @nodoc
class __$$CouponLinkResultImplCopyWithImpl<$Res>
    extends _$CouponLinkResultCopyWithImpl<$Res, _$CouponLinkResultImpl>
    implements _$$CouponLinkResultImplCopyWith<$Res> {
  __$$CouponLinkResultImplCopyWithImpl(_$CouponLinkResultImpl _value,
      $Res Function(_$CouponLinkResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? couponRemainCount = freezed,
    Object? kuaiZhanUrl = freezed,
    Object? minCommissionRate = freezed,
    Object? originalPrice = null,
    Object? couponInfo = freezed,
    Object? actualPrice = null,
    Object? shortUrl = freezed,
    Object? maxCommissionRate = freezed,
    Object? couponEndTime = freezed,
    Object? couponTotalCount = freezed,
    Object? itemId = freezed,
    Object? couponStartTime = freezed,
    Object? couponClickUrl = freezed,
    Object? itemUrl = freezed,
    Object? longTpwd = freezed,
    Object? tpwd = freezed,
  }) {
    return _then(_$CouponLinkResultImpl(
      couponRemainCount: freezed == couponRemainCount
          ? _value.couponRemainCount
          : couponRemainCount // ignore: cast_nullable_to_non_nullable
              as String?,
      kuaiZhanUrl: freezed == kuaiZhanUrl
          ? _value.kuaiZhanUrl
          : kuaiZhanUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      minCommissionRate: freezed == minCommissionRate
          ? _value.minCommissionRate
          : minCommissionRate // ignore: cast_nullable_to_non_nullable
              as String?,
      originalPrice: null == originalPrice
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as num,
      couponInfo: freezed == couponInfo
          ? _value.couponInfo
          : couponInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      actualPrice: null == actualPrice
          ? _value.actualPrice
          : actualPrice // ignore: cast_nullable_to_non_nullable
              as num,
      shortUrl: freezed == shortUrl
          ? _value.shortUrl
          : shortUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      maxCommissionRate: freezed == maxCommissionRate
          ? _value.maxCommissionRate
          : maxCommissionRate // ignore: cast_nullable_to_non_nullable
              as String?,
      couponEndTime: freezed == couponEndTime
          ? _value.couponEndTime
          : couponEndTime // ignore: cast_nullable_to_non_nullable
              as String?,
      couponTotalCount: freezed == couponTotalCount
          ? _value.couponTotalCount
          : couponTotalCount // ignore: cast_nullable_to_non_nullable
              as String?,
      itemId: freezed == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      couponStartTime: freezed == couponStartTime
          ? _value.couponStartTime
          : couponStartTime // ignore: cast_nullable_to_non_nullable
              as String?,
      couponClickUrl: freezed == couponClickUrl
          ? _value.couponClickUrl
          : couponClickUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      itemUrl: freezed == itemUrl
          ? _value.itemUrl
          : itemUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      longTpwd: freezed == longTpwd
          ? _value.longTpwd
          : longTpwd // ignore: cast_nullable_to_non_nullable
              as String?,
      tpwd: freezed == tpwd
          ? _value.tpwd
          : tpwd // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CouponLinkResultImpl extends _CouponLinkResult {
  const _$CouponLinkResultImpl(
      {this.couponRemainCount = '',
      this.kuaiZhanUrl = '',
      this.minCommissionRate = '',
      this.originalPrice = 0,
      this.couponInfo = '',
      this.actualPrice = 0,
      this.shortUrl = '',
      this.maxCommissionRate = '',
      this.couponEndTime = '',
      this.couponTotalCount = '',
      this.itemId = '',
      this.couponStartTime = '',
      this.couponClickUrl = '',
      this.itemUrl = '',
      this.longTpwd = '',
      this.tpwd = ''})
      : super._();

  factory _$CouponLinkResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$CouponLinkResultImplFromJson(json);

  @override
  @JsonKey()
  final String? couponRemainCount;
  @override
  @JsonKey()
  final String? kuaiZhanUrl;
  @override
  @JsonKey()
  final String? minCommissionRate;
  @override
  @JsonKey()
  final num originalPrice;
  @override
  @JsonKey()
  final String? couponInfo;
  @override
  @JsonKey()
  final num actualPrice;
  @override
  @JsonKey()
  final String? shortUrl;
  @override
  @JsonKey()
  final String? maxCommissionRate;
  @override
  @JsonKey()
  final String? couponEndTime;
  @override
  @JsonKey()
  final String? couponTotalCount;
  @override
  @JsonKey()
  final String? itemId;
  @override
  @JsonKey()
  final String? couponStartTime;
  @override
  @JsonKey()
  final String? couponClickUrl;
  @override
  @JsonKey()
  final String? itemUrl;
  @override
  @JsonKey()
  final String? longTpwd;
  @override
  @JsonKey()
  final String? tpwd;

  @override
  String toString() {
    return 'CouponLinkResult(couponRemainCount: $couponRemainCount, kuaiZhanUrl: $kuaiZhanUrl, minCommissionRate: $minCommissionRate, originalPrice: $originalPrice, couponInfo: $couponInfo, actualPrice: $actualPrice, shortUrl: $shortUrl, maxCommissionRate: $maxCommissionRate, couponEndTime: $couponEndTime, couponTotalCount: $couponTotalCount, itemId: $itemId, couponStartTime: $couponStartTime, couponClickUrl: $couponClickUrl, itemUrl: $itemUrl, longTpwd: $longTpwd, tpwd: $tpwd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CouponLinkResultImpl &&
            (identical(other.couponRemainCount, couponRemainCount) ||
                other.couponRemainCount == couponRemainCount) &&
            (identical(other.kuaiZhanUrl, kuaiZhanUrl) ||
                other.kuaiZhanUrl == kuaiZhanUrl) &&
            (identical(other.minCommissionRate, minCommissionRate) ||
                other.minCommissionRate == minCommissionRate) &&
            (identical(other.originalPrice, originalPrice) ||
                other.originalPrice == originalPrice) &&
            (identical(other.couponInfo, couponInfo) ||
                other.couponInfo == couponInfo) &&
            (identical(other.actualPrice, actualPrice) ||
                other.actualPrice == actualPrice) &&
            (identical(other.shortUrl, shortUrl) ||
                other.shortUrl == shortUrl) &&
            (identical(other.maxCommissionRate, maxCommissionRate) ||
                other.maxCommissionRate == maxCommissionRate) &&
            (identical(other.couponEndTime, couponEndTime) ||
                other.couponEndTime == couponEndTime) &&
            (identical(other.couponTotalCount, couponTotalCount) ||
                other.couponTotalCount == couponTotalCount) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.couponStartTime, couponStartTime) ||
                other.couponStartTime == couponStartTime) &&
            (identical(other.couponClickUrl, couponClickUrl) ||
                other.couponClickUrl == couponClickUrl) &&
            (identical(other.itemUrl, itemUrl) || other.itemUrl == itemUrl) &&
            (identical(other.longTpwd, longTpwd) ||
                other.longTpwd == longTpwd) &&
            (identical(other.tpwd, tpwd) || other.tpwd == tpwd));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      couponRemainCount,
      kuaiZhanUrl,
      minCommissionRate,
      originalPrice,
      couponInfo,
      actualPrice,
      shortUrl,
      maxCommissionRate,
      couponEndTime,
      couponTotalCount,
      itemId,
      couponStartTime,
      couponClickUrl,
      itemUrl,
      longTpwd,
      tpwd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CouponLinkResultImplCopyWith<_$CouponLinkResultImpl> get copyWith =>
      __$$CouponLinkResultImplCopyWithImpl<_$CouponLinkResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CouponLinkResultImplToJson(
      this,
    );
  }
}

abstract class _CouponLinkResult extends CouponLinkResult {
  const factory _CouponLinkResult(
      {final String? couponRemainCount,
      final String? kuaiZhanUrl,
      final String? minCommissionRate,
      final num originalPrice,
      final String? couponInfo,
      final num actualPrice,
      final String? shortUrl,
      final String? maxCommissionRate,
      final String? couponEndTime,
      final String? couponTotalCount,
      final String? itemId,
      final String? couponStartTime,
      final String? couponClickUrl,
      final String? itemUrl,
      final String? longTpwd,
      final String? tpwd}) = _$CouponLinkResultImpl;
  const _CouponLinkResult._() : super._();

  factory _CouponLinkResult.fromJson(Map<String, dynamic> json) =
      _$CouponLinkResultImpl.fromJson;

  @override
  String? get couponRemainCount;
  @override
  String? get kuaiZhanUrl;
  @override
  String? get minCommissionRate;
  @override
  num get originalPrice;
  @override
  String? get couponInfo;
  @override
  num get actualPrice;
  @override
  String? get shortUrl;
  @override
  String? get maxCommissionRate;
  @override
  String? get couponEndTime;
  @override
  String? get couponTotalCount;
  @override
  String? get itemId;
  @override
  String? get couponStartTime;
  @override
  String? get couponClickUrl;
  @override
  String? get itemUrl;
  @override
  String? get longTpwd;
  @override
  String? get tpwd;
  @override
  @JsonKey(ignore: true)
  _$$CouponLinkResultImplCopyWith<_$CouponLinkResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
