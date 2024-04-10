// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShopInfo _$ShopInfoFromJson(Map<String, dynamic> json) {
  return _ShopInfo.fromJson(json);
}

/// @nodoc
mixin _$ShopInfo {
  @JsonKey(name: 'seller_nick')
  String get sellerNick => throw _privateConstructorUsedError;
  @JsonKey(name: 'pict_url')
  String get pictUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'shop_title')
  String get shopTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'shop_type')
  String get shopType => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'shop_url')
  String get shopUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopInfoCopyWith<ShopInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopInfoCopyWith<$Res> {
  factory $ShopInfoCopyWith(ShopInfo value, $Res Function(ShopInfo) then) =
      _$ShopInfoCopyWithImpl<$Res, ShopInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'seller_nick') String sellerNick,
      @JsonKey(name: 'pict_url') String pictUrl,
      @JsonKey(name: 'shop_title') String shopTitle,
      @JsonKey(name: 'shop_type') String shopType,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'shop_url') String shopUrl});
}

/// @nodoc
class _$ShopInfoCopyWithImpl<$Res, $Val extends ShopInfo>
    implements $ShopInfoCopyWith<$Res> {
  _$ShopInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sellerNick = null,
    Object? pictUrl = null,
    Object? shopTitle = null,
    Object? shopType = null,
    Object? userId = null,
    Object? shopUrl = null,
  }) {
    return _then(_value.copyWith(
      sellerNick: null == sellerNick
          ? _value.sellerNick
          : sellerNick // ignore: cast_nullable_to_non_nullable
              as String,
      pictUrl: null == pictUrl
          ? _value.pictUrl
          : pictUrl // ignore: cast_nullable_to_non_nullable
              as String,
      shopTitle: null == shopTitle
          ? _value.shopTitle
          : shopTitle // ignore: cast_nullable_to_non_nullable
              as String,
      shopType: null == shopType
          ? _value.shopType
          : shopType // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      shopUrl: null == shopUrl
          ? _value.shopUrl
          : shopUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShopInfoImplCopyWith<$Res>
    implements $ShopInfoCopyWith<$Res> {
  factory _$$ShopInfoImplCopyWith(
          _$ShopInfoImpl value, $Res Function(_$ShopInfoImpl) then) =
      __$$ShopInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'seller_nick') String sellerNick,
      @JsonKey(name: 'pict_url') String pictUrl,
      @JsonKey(name: 'shop_title') String shopTitle,
      @JsonKey(name: 'shop_type') String shopType,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'shop_url') String shopUrl});
}

/// @nodoc
class __$$ShopInfoImplCopyWithImpl<$Res>
    extends _$ShopInfoCopyWithImpl<$Res, _$ShopInfoImpl>
    implements _$$ShopInfoImplCopyWith<$Res> {
  __$$ShopInfoImplCopyWithImpl(
      _$ShopInfoImpl _value, $Res Function(_$ShopInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sellerNick = null,
    Object? pictUrl = null,
    Object? shopTitle = null,
    Object? shopType = null,
    Object? userId = null,
    Object? shopUrl = null,
  }) {
    return _then(_$ShopInfoImpl(
      sellerNick: null == sellerNick
          ? _value.sellerNick
          : sellerNick // ignore: cast_nullable_to_non_nullable
              as String,
      pictUrl: null == pictUrl
          ? _value.pictUrl
          : pictUrl // ignore: cast_nullable_to_non_nullable
              as String,
      shopTitle: null == shopTitle
          ? _value.shopTitle
          : shopTitle // ignore: cast_nullable_to_non_nullable
              as String,
      shopType: null == shopType
          ? _value.shopType
          : shopType // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      shopUrl: null == shopUrl
          ? _value.shopUrl
          : shopUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShopInfoImpl implements _ShopInfo {
  const _$ShopInfoImpl(
      {@JsonKey(name: 'seller_nick') this.sellerNick = "",
      @JsonKey(name: 'pict_url') this.pictUrl = "",
      @JsonKey(name: 'shop_title') this.shopTitle = "",
      @JsonKey(name: 'shop_type') this.shopType = "",
      @JsonKey(name: 'user_id') this.userId = 0,
      @JsonKey(name: 'shop_url') this.shopUrl = ""});

  factory _$ShopInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShopInfoImplFromJson(json);

  @override
  @JsonKey(name: 'seller_nick')
  final String sellerNick;
  @override
  @JsonKey(name: 'pict_url')
  final String pictUrl;
  @override
  @JsonKey(name: 'shop_title')
  final String shopTitle;
  @override
  @JsonKey(name: 'shop_type')
  final String shopType;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'shop_url')
  final String shopUrl;

  @override
  String toString() {
    return 'ShopInfo(sellerNick: $sellerNick, pictUrl: $pictUrl, shopTitle: $shopTitle, shopType: $shopType, userId: $userId, shopUrl: $shopUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopInfoImpl &&
            (identical(other.sellerNick, sellerNick) ||
                other.sellerNick == sellerNick) &&
            (identical(other.pictUrl, pictUrl) || other.pictUrl == pictUrl) &&
            (identical(other.shopTitle, shopTitle) ||
                other.shopTitle == shopTitle) &&
            (identical(other.shopType, shopType) ||
                other.shopType == shopType) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.shopUrl, shopUrl) || other.shopUrl == shopUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, sellerNick, pictUrl, shopTitle, shopType, userId, shopUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopInfoImplCopyWith<_$ShopInfoImpl> get copyWith =>
      __$$ShopInfoImplCopyWithImpl<_$ShopInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopInfoImplToJson(
      this,
    );
  }
}

abstract class _ShopInfo implements ShopInfo {
  const factory _ShopInfo(
      {@JsonKey(name: 'seller_nick') final String sellerNick,
      @JsonKey(name: 'pict_url') final String pictUrl,
      @JsonKey(name: 'shop_title') final String shopTitle,
      @JsonKey(name: 'shop_type') final String shopType,
      @JsonKey(name: 'user_id') final int userId,
      @JsonKey(name: 'shop_url') final String shopUrl}) = _$ShopInfoImpl;

  factory _ShopInfo.fromJson(Map<String, dynamic> json) =
      _$ShopInfoImpl.fromJson;

  @override
  @JsonKey(name: 'seller_nick')
  String get sellerNick;
  @override
  @JsonKey(name: 'pict_url')
  String get pictUrl;
  @override
  @JsonKey(name: 'shop_title')
  String get shopTitle;
  @override
  @JsonKey(name: 'shop_type')
  String get shopType;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'shop_url')
  String get shopUrl;
  @override
  @JsonKey(ignore: true)
  _$$ShopInfoImplCopyWith<_$ShopInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
