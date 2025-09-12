// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_favorites_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddFavoritesParams {
  @JsonKey(name: 'productId')
  String get productid;
  @JsonKey(name: 'type')
  String get type;
  @JsonKey(name: 'endTime')
  String get endtime;
  @JsonKey(name: 'imageUrl')
  String get imageurl;
  @JsonKey(name: 'title')
  String get title;
  @JsonKey(name: 'amount')
  String get amount;
  @JsonKey(name: 'arrivalPrice')
  String get arrivalprice;
  @JsonKey(name: 'createTime')
  String get createtime;

  /// Create a copy of AddFavoritesParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddFavoritesParamsCopyWith<AddFavoritesParams> get copyWith =>
      _$AddFavoritesParamsCopyWithImpl<AddFavoritesParams>(
          this as AddFavoritesParams, _$identity);

  /// Serializes this AddFavoritesParams to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddFavoritesParams &&
            (identical(other.productid, productid) ||
                other.productid == productid) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.endtime, endtime) || other.endtime == endtime) &&
            (identical(other.imageurl, imageurl) ||
                other.imageurl == imageurl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.arrivalprice, arrivalprice) ||
                other.arrivalprice == arrivalprice) &&
            (identical(other.createtime, createtime) ||
                other.createtime == createtime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, productid, type, endtime,
      imageurl, title, amount, arrivalprice, createtime);

  @override
  String toString() {
    return 'AddFavoritesParams(productid: $productid, type: $type, endtime: $endtime, imageurl: $imageurl, title: $title, amount: $amount, arrivalprice: $arrivalprice, createtime: $createtime)';
  }
}

/// @nodoc
abstract mixin class $AddFavoritesParamsCopyWith<$Res> {
  factory $AddFavoritesParamsCopyWith(
          AddFavoritesParams value, $Res Function(AddFavoritesParams) _then) =
      _$AddFavoritesParamsCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'productId') String productid,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'endTime') String endtime,
      @JsonKey(name: 'imageUrl') String imageurl,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'amount') String amount,
      @JsonKey(name: 'arrivalPrice') String arrivalprice,
      @JsonKey(name: 'createTime') String createtime});
}

/// @nodoc
class _$AddFavoritesParamsCopyWithImpl<$Res>
    implements $AddFavoritesParamsCopyWith<$Res> {
  _$AddFavoritesParamsCopyWithImpl(this._self, this._then);

  final AddFavoritesParams _self;
  final $Res Function(AddFavoritesParams) _then;

  /// Create a copy of AddFavoritesParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productid = null,
    Object? type = null,
    Object? endtime = null,
    Object? imageurl = null,
    Object? title = null,
    Object? amount = null,
    Object? arrivalprice = null,
    Object? createtime = null,
  }) {
    return _then(_self.copyWith(
      productid: null == productid
          ? _self.productid
          : productid // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      endtime: null == endtime
          ? _self.endtime
          : endtime // ignore: cast_nullable_to_non_nullable
              as String,
      imageurl: null == imageurl
          ? _self.imageurl
          : imageurl // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      arrivalprice: null == arrivalprice
          ? _self.arrivalprice
          : arrivalprice // ignore: cast_nullable_to_non_nullable
              as String,
      createtime: null == createtime
          ? _self.createtime
          : createtime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [AddFavoritesParams].
extension AddFavoritesParamsPatterns on AddFavoritesParams {
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
    TResult Function(_AddFavoritesParams value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AddFavoritesParams() when $default != null:
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
    TResult Function(_AddFavoritesParams value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddFavoritesParams():
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
    TResult? Function(_AddFavoritesParams value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddFavoritesParams() when $default != null:
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
            @JsonKey(name: 'productId') String productid,
            @JsonKey(name: 'type') String type,
            @JsonKey(name: 'endTime') String endtime,
            @JsonKey(name: 'imageUrl') String imageurl,
            @JsonKey(name: 'title') String title,
            @JsonKey(name: 'amount') String amount,
            @JsonKey(name: 'arrivalPrice') String arrivalprice,
            @JsonKey(name: 'createTime') String createtime)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AddFavoritesParams() when $default != null:
        return $default(
            _that.productid,
            _that.type,
            _that.endtime,
            _that.imageurl,
            _that.title,
            _that.amount,
            _that.arrivalprice,
            _that.createtime);
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
            @JsonKey(name: 'productId') String productid,
            @JsonKey(name: 'type') String type,
            @JsonKey(name: 'endTime') String endtime,
            @JsonKey(name: 'imageUrl') String imageurl,
            @JsonKey(name: 'title') String title,
            @JsonKey(name: 'amount') String amount,
            @JsonKey(name: 'arrivalPrice') String arrivalprice,
            @JsonKey(name: 'createTime') String createtime)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddFavoritesParams():
        return $default(
            _that.productid,
            _that.type,
            _that.endtime,
            _that.imageurl,
            _that.title,
            _that.amount,
            _that.arrivalprice,
            _that.createtime);
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
            @JsonKey(name: 'productId') String productid,
            @JsonKey(name: 'type') String type,
            @JsonKey(name: 'endTime') String endtime,
            @JsonKey(name: 'imageUrl') String imageurl,
            @JsonKey(name: 'title') String title,
            @JsonKey(name: 'amount') String amount,
            @JsonKey(name: 'arrivalPrice') String arrivalprice,
            @JsonKey(name: 'createTime') String createtime)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AddFavoritesParams() when $default != null:
        return $default(
            _that.productid,
            _that.type,
            _that.endtime,
            _that.imageurl,
            _that.title,
            _that.amount,
            _that.arrivalprice,
            _that.createtime);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AddFavoritesParams implements AddFavoritesParams {
  const _AddFavoritesParams(
      {@JsonKey(name: 'productId') this.productid = '',
      @JsonKey(name: 'type') this.type = '',
      @JsonKey(name: 'endTime') this.endtime = '',
      @JsonKey(name: 'imageUrl') this.imageurl = '',
      @JsonKey(name: 'title') this.title = '',
      @JsonKey(name: 'amount') this.amount = '',
      @JsonKey(name: 'arrivalPrice') this.arrivalprice = '',
      @JsonKey(name: 'createTime') this.createtime = ''});
  factory _AddFavoritesParams.fromJson(Map<String, dynamic> json) =>
      _$AddFavoritesParamsFromJson(json);

  @override
  @JsonKey(name: 'productId')
  final String productid;
  @override
  @JsonKey(name: 'type')
  final String type;
  @override
  @JsonKey(name: 'endTime')
  final String endtime;
  @override
  @JsonKey(name: 'imageUrl')
  final String imageurl;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'amount')
  final String amount;
  @override
  @JsonKey(name: 'arrivalPrice')
  final String arrivalprice;
  @override
  @JsonKey(name: 'createTime')
  final String createtime;

  /// Create a copy of AddFavoritesParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddFavoritesParamsCopyWith<_AddFavoritesParams> get copyWith =>
      __$AddFavoritesParamsCopyWithImpl<_AddFavoritesParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AddFavoritesParamsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddFavoritesParams &&
            (identical(other.productid, productid) ||
                other.productid == productid) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.endtime, endtime) || other.endtime == endtime) &&
            (identical(other.imageurl, imageurl) ||
                other.imageurl == imageurl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.arrivalprice, arrivalprice) ||
                other.arrivalprice == arrivalprice) &&
            (identical(other.createtime, createtime) ||
                other.createtime == createtime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, productid, type, endtime,
      imageurl, title, amount, arrivalprice, createtime);

  @override
  String toString() {
    return 'AddFavoritesParams(productid: $productid, type: $type, endtime: $endtime, imageurl: $imageurl, title: $title, amount: $amount, arrivalprice: $arrivalprice, createtime: $createtime)';
  }
}

/// @nodoc
abstract mixin class _$AddFavoritesParamsCopyWith<$Res>
    implements $AddFavoritesParamsCopyWith<$Res> {
  factory _$AddFavoritesParamsCopyWith(
          _AddFavoritesParams value, $Res Function(_AddFavoritesParams) _then) =
      __$AddFavoritesParamsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'productId') String productid,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'endTime') String endtime,
      @JsonKey(name: 'imageUrl') String imageurl,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'amount') String amount,
      @JsonKey(name: 'arrivalPrice') String arrivalprice,
      @JsonKey(name: 'createTime') String createtime});
}

/// @nodoc
class __$AddFavoritesParamsCopyWithImpl<$Res>
    implements _$AddFavoritesParamsCopyWith<$Res> {
  __$AddFavoritesParamsCopyWithImpl(this._self, this._then);

  final _AddFavoritesParams _self;
  final $Res Function(_AddFavoritesParams) _then;

  /// Create a copy of AddFavoritesParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? productid = null,
    Object? type = null,
    Object? endtime = null,
    Object? imageurl = null,
    Object? title = null,
    Object? amount = null,
    Object? arrivalprice = null,
    Object? createtime = null,
  }) {
    return _then(_AddFavoritesParams(
      productid: null == productid
          ? _self.productid
          : productid // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      endtime: null == endtime
          ? _self.endtime
          : endtime // ignore: cast_nullable_to_non_nullable
              as String,
      imageurl: null == imageurl
          ? _self.imageurl
          : imageurl // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      arrivalprice: null == arrivalprice
          ? _self.arrivalprice
          : arrivalprice // ignore: cast_nullable_to_non_nullable
              as String,
      createtime: null == createtime
          ? _self.createtime
          : createtime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
