// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ShopInfo {
  @JsonKey(name: 'seller_nick')
  String get sellerNick;
  @JsonKey(name: 'pict_url')
  String get pictUrl;
  @JsonKey(name: 'shop_title')
  String get shopTitle;
  @JsonKey(name: 'shop_type')
  String get shopType;
  @JsonKey(name: 'user_id')
  int get userId;
  @JsonKey(name: 'shop_url')
  String get shopUrl;

  /// Create a copy of ShopInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ShopInfoCopyWith<ShopInfo> get copyWith =>
      _$ShopInfoCopyWithImpl<ShopInfo>(this as ShopInfo, _$identity);

  /// Serializes this ShopInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShopInfo &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, sellerNick, pictUrl, shopTitle, shopType, userId, shopUrl);

  @override
  String toString() {
    return 'ShopInfo(sellerNick: $sellerNick, pictUrl: $pictUrl, shopTitle: $shopTitle, shopType: $shopType, userId: $userId, shopUrl: $shopUrl)';
  }
}

/// @nodoc
abstract mixin class $ShopInfoCopyWith<$Res> {
  factory $ShopInfoCopyWith(ShopInfo value, $Res Function(ShopInfo) _then) =
      _$ShopInfoCopyWithImpl;
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
class _$ShopInfoCopyWithImpl<$Res> implements $ShopInfoCopyWith<$Res> {
  _$ShopInfoCopyWithImpl(this._self, this._then);

  final ShopInfo _self;
  final $Res Function(ShopInfo) _then;

  /// Create a copy of ShopInfo
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      sellerNick: null == sellerNick
          ? _self.sellerNick
          : sellerNick // ignore: cast_nullable_to_non_nullable
              as String,
      pictUrl: null == pictUrl
          ? _self.pictUrl
          : pictUrl // ignore: cast_nullable_to_non_nullable
              as String,
      shopTitle: null == shopTitle
          ? _self.shopTitle
          : shopTitle // ignore: cast_nullable_to_non_nullable
              as String,
      shopType: null == shopType
          ? _self.shopType
          : shopType // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      shopUrl: null == shopUrl
          ? _self.shopUrl
          : shopUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ShopInfo].
extension ShopInfoPatterns on ShopInfo {
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
    TResult Function(_ShopInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ShopInfo() when $default != null:
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
    TResult Function(_ShopInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ShopInfo():
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
    TResult? Function(_ShopInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ShopInfo() when $default != null:
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
            @JsonKey(name: 'seller_nick') String sellerNick,
            @JsonKey(name: 'pict_url') String pictUrl,
            @JsonKey(name: 'shop_title') String shopTitle,
            @JsonKey(name: 'shop_type') String shopType,
            @JsonKey(name: 'user_id') int userId,
            @JsonKey(name: 'shop_url') String shopUrl)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ShopInfo() when $default != null:
        return $default(_that.sellerNick, _that.pictUrl, _that.shopTitle,
            _that.shopType, _that.userId, _that.shopUrl);
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
            @JsonKey(name: 'seller_nick') String sellerNick,
            @JsonKey(name: 'pict_url') String pictUrl,
            @JsonKey(name: 'shop_title') String shopTitle,
            @JsonKey(name: 'shop_type') String shopType,
            @JsonKey(name: 'user_id') int userId,
            @JsonKey(name: 'shop_url') String shopUrl)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ShopInfo():
        return $default(_that.sellerNick, _that.pictUrl, _that.shopTitle,
            _that.shopType, _that.userId, _that.shopUrl);
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
            @JsonKey(name: 'seller_nick') String sellerNick,
            @JsonKey(name: 'pict_url') String pictUrl,
            @JsonKey(name: 'shop_title') String shopTitle,
            @JsonKey(name: 'shop_type') String shopType,
            @JsonKey(name: 'user_id') int userId,
            @JsonKey(name: 'shop_url') String shopUrl)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ShopInfo() when $default != null:
        return $default(_that.sellerNick, _that.pictUrl, _that.shopTitle,
            _that.shopType, _that.userId, _that.shopUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ShopInfo implements ShopInfo {
  const _ShopInfo(
      {@JsonKey(name: 'seller_nick') this.sellerNick = "",
      @JsonKey(name: 'pict_url') this.pictUrl = "",
      @JsonKey(name: 'shop_title') this.shopTitle = "",
      @JsonKey(name: 'shop_type') this.shopType = "",
      @JsonKey(name: 'user_id') this.userId = 0,
      @JsonKey(name: 'shop_url') this.shopUrl = ""});
  factory _ShopInfo.fromJson(Map<String, dynamic> json) =>
      _$ShopInfoFromJson(json);

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

  /// Create a copy of ShopInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ShopInfoCopyWith<_ShopInfo> get copyWith =>
      __$ShopInfoCopyWithImpl<_ShopInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ShopInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShopInfo &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, sellerNick, pictUrl, shopTitle, shopType, userId, shopUrl);

  @override
  String toString() {
    return 'ShopInfo(sellerNick: $sellerNick, pictUrl: $pictUrl, shopTitle: $shopTitle, shopType: $shopType, userId: $userId, shopUrl: $shopUrl)';
  }
}

/// @nodoc
abstract mixin class _$ShopInfoCopyWith<$Res>
    implements $ShopInfoCopyWith<$Res> {
  factory _$ShopInfoCopyWith(_ShopInfo value, $Res Function(_ShopInfo) _then) =
      __$ShopInfoCopyWithImpl;
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
class __$ShopInfoCopyWithImpl<$Res> implements _$ShopInfoCopyWith<$Res> {
  __$ShopInfoCopyWithImpl(this._self, this._then);

  final _ShopInfo _self;
  final $Res Function(_ShopInfo) _then;

  /// Create a copy of ShopInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sellerNick = null,
    Object? pictUrl = null,
    Object? shopTitle = null,
    Object? shopType = null,
    Object? userId = null,
    Object? shopUrl = null,
  }) {
    return _then(_ShopInfo(
      sellerNick: null == sellerNick
          ? _self.sellerNick
          : sellerNick // ignore: cast_nullable_to_non_nullable
              as String,
      pictUrl: null == pictUrl
          ? _self.pictUrl
          : pictUrl // ignore: cast_nullable_to_non_nullable
              as String,
      shopTitle: null == shopTitle
          ? _self.shopTitle
          : shopTitle // ignore: cast_nullable_to_non_nullable
              as String,
      shopType: null == shopType
          ? _self.shopType
          : shopType // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      shopUrl: null == shopUrl
          ? _self.shopUrl
          : shopUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
