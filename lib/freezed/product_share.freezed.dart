// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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
  @JsonKey(name: 'id')
  int? get id;
  @JsonKey(name: 'title')
  String get title;
  @JsonKey(name: 'price')
  String get price;
  @JsonKey(name: 'image')
  String get image;
  @JsonKey(name: 'productId')
  String get productId;
  @JsonKey(name: 'type')
  ProductShareType get type;

  /// Create a copy of ProductShare
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProductShareCopyWith<ProductShare> get copyWith =>
      _$ProductShareCopyWithImpl<ProductShare>(
          this as ProductShare, _$identity);

  /// Serializes this ProductShare to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductShare &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, price, image, productId, type);

  @override
  String toString() {
    return 'ProductShare(id: $id, title: $title, price: $price, image: $image, productId: $productId, type: $type)';
  }
}

/// @nodoc
abstract mixin class $ProductShareCopyWith<$Res> {
  factory $ProductShareCopyWith(
          ProductShare value, $Res Function(ProductShare) _then) =
      _$ProductShareCopyWithImpl;
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
class _$ProductShareCopyWithImpl<$Res> implements $ProductShareCopyWith<$Res> {
  _$ProductShareCopyWithImpl(this._self, this._then);

  final ProductShare _self;
  final $Res Function(ProductShare) _then;

  /// Create a copy of ProductShare
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _self.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProductShareType,
    ));
  }
}

/// Adds pattern-matching-related methods to [ProductShare].
extension ProductSharePatterns on ProductShare {
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
    TResult Function(_ProductShare value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductShare() when $default != null:
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
    TResult Function(_ProductShare value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductShare():
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
    TResult? Function(_ProductShare value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductShare() when $default != null:
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
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'title') String title,
            @JsonKey(name: 'price') String price,
            @JsonKey(name: 'image') String image,
            @JsonKey(name: 'productId') String productId,
            @JsonKey(name: 'type') ProductShareType type)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductShare() when $default != null:
        return $default(_that.id, _that.title, _that.price, _that.image,
            _that.productId, _that.type);
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
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'title') String title,
            @JsonKey(name: 'price') String price,
            @JsonKey(name: 'image') String image,
            @JsonKey(name: 'productId') String productId,
            @JsonKey(name: 'type') ProductShareType type)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductShare():
        return $default(_that.id, _that.title, _that.price, _that.image,
            _that.productId, _that.type);
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
            @JsonKey(name: 'id') int? id,
            @JsonKey(name: 'title') String title,
            @JsonKey(name: 'price') String price,
            @JsonKey(name: 'image') String image,
            @JsonKey(name: 'productId') String productId,
            @JsonKey(name: 'type') ProductShareType type)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductShare() when $default != null:
        return $default(_that.id, _that.title, _that.price, _that.image,
            _that.productId, _that.type);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ProductShare extends ProductShare {
  const _ProductShare(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'title') this.title = '',
      @JsonKey(name: 'price') this.price = '',
      @JsonKey(name: 'image') this.image = '',
      @JsonKey(name: 'productId') this.productId = '',
      @JsonKey(name: 'type') this.type = ProductShareType.tb})
      : super._();
  factory _ProductShare.fromJson(Map<String, dynamic> json) =>
      _$ProductShareFromJson(json);

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

  /// Create a copy of ProductShare
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProductShareCopyWith<_ProductShare> get copyWith =>
      __$ProductShareCopyWithImpl<_ProductShare>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProductShareToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductShare &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, price, image, productId, type);

  @override
  String toString() {
    return 'ProductShare(id: $id, title: $title, price: $price, image: $image, productId: $productId, type: $type)';
  }
}

/// @nodoc
abstract mixin class _$ProductShareCopyWith<$Res>
    implements $ProductShareCopyWith<$Res> {
  factory _$ProductShareCopyWith(
          _ProductShare value, $Res Function(_ProductShare) _then) =
      __$ProductShareCopyWithImpl;
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
class __$ProductShareCopyWithImpl<$Res>
    implements _$ProductShareCopyWith<$Res> {
  __$ProductShareCopyWithImpl(this._self, this._then);

  final _ProductShare _self;
  final $Res Function(_ProductShare) _then;

  /// Create a copy of ProductShare
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? price = null,
    Object? image = null,
    Object? productId = null,
    Object? type = null,
  }) {
    return _then(_ProductShare(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _self.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProductShareType,
    ));
  }
}

// dart format on
