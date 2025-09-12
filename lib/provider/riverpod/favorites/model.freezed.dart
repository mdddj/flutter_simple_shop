// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MyFavoritesModel {
  String get amount;
  set amount(String value);
  String get arrivalPrice;
  set arrivalPrice(String value);
  String get createTime;
  set createTime(String value);
  String get endTime;
  set endTime(String value);
  int get id;
  set id(int value);
  String get imageUrl;
  set imageUrl(String value);
  String get productId;
  set productId(String value);
  String get title;
  set title(String value);
  String get type;
  set type(String value);

  /// Create a copy of MyFavoritesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MyFavoritesModelCopyWith<MyFavoritesModel> get copyWith =>
      _$MyFavoritesModelCopyWithImpl<MyFavoritesModel>(
          this as MyFavoritesModel, _$identity);

  /// Serializes this MyFavoritesModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'MyFavoritesModel(amount: $amount, arrivalPrice: $arrivalPrice, createTime: $createTime, endTime: $endTime, id: $id, imageUrl: $imageUrl, productId: $productId, title: $title, type: $type)';
  }
}

/// @nodoc
abstract mixin class $MyFavoritesModelCopyWith<$Res> {
  factory $MyFavoritesModelCopyWith(
          MyFavoritesModel value, $Res Function(MyFavoritesModel) _then) =
      _$MyFavoritesModelCopyWithImpl;
  @useResult
  $Res call(
      {String amount,
      String arrivalPrice,
      String createTime,
      String endTime,
      int id,
      String imageUrl,
      String productId,
      String title,
      String type});
}

/// @nodoc
class _$MyFavoritesModelCopyWithImpl<$Res>
    implements $MyFavoritesModelCopyWith<$Res> {
  _$MyFavoritesModelCopyWithImpl(this._self, this._then);

  final MyFavoritesModel _self;
  final $Res Function(MyFavoritesModel) _then;

  /// Create a copy of MyFavoritesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? arrivalPrice = null,
    Object? createTime = null,
    Object? endTime = null,
    Object? id = null,
    Object? imageUrl = null,
    Object? productId = null,
    Object? title = null,
    Object? type = null,
  }) {
    return _then(_self.copyWith(
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      arrivalPrice: null == arrivalPrice
          ? _self.arrivalPrice
          : arrivalPrice // ignore: cast_nullable_to_non_nullable
              as String,
      createTime: null == createTime
          ? _self.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _self.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _self.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [MyFavoritesModel].
extension MyFavoritesModelPatterns on MyFavoritesModel {
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
    TResult Function(_MyFavoritesModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MyFavoritesModel() when $default != null:
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
    TResult Function(_MyFavoritesModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MyFavoritesModel():
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
    TResult? Function(_MyFavoritesModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MyFavoritesModel() when $default != null:
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
            String amount,
            String arrivalPrice,
            String createTime,
            String endTime,
            int id,
            String imageUrl,
            String productId,
            String title,
            String type)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MyFavoritesModel() when $default != null:
        return $default(
            _that.amount,
            _that.arrivalPrice,
            _that.createTime,
            _that.endTime,
            _that.id,
            _that.imageUrl,
            _that.productId,
            _that.title,
            _that.type);
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
            String amount,
            String arrivalPrice,
            String createTime,
            String endTime,
            int id,
            String imageUrl,
            String productId,
            String title,
            String type)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MyFavoritesModel():
        return $default(
            _that.amount,
            _that.arrivalPrice,
            _that.createTime,
            _that.endTime,
            _that.id,
            _that.imageUrl,
            _that.productId,
            _that.title,
            _that.type);
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
            String amount,
            String arrivalPrice,
            String createTime,
            String endTime,
            int id,
            String imageUrl,
            String productId,
            String title,
            String type)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MyFavoritesModel() when $default != null:
        return $default(
            _that.amount,
            _that.arrivalPrice,
            _that.createTime,
            _that.endTime,
            _that.id,
            _that.imageUrl,
            _that.productId,
            _that.title,
            _that.type);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MyFavoritesModel implements MyFavoritesModel {
  _MyFavoritesModel(
      {required this.amount,
      required this.arrivalPrice,
      required this.createTime,
      required this.endTime,
      required this.id,
      required this.imageUrl,
      required this.productId,
      required this.title,
      required this.type});
  factory _MyFavoritesModel.fromJson(Map<String, dynamic> json) =>
      _$MyFavoritesModelFromJson(json);

  @override
  String amount;
  @override
  String arrivalPrice;
  @override
  String createTime;
  @override
  String endTime;
  @override
  int id;
  @override
  String imageUrl;
  @override
  String productId;
  @override
  String title;
  @override
  String type;

  /// Create a copy of MyFavoritesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MyFavoritesModelCopyWith<_MyFavoritesModel> get copyWith =>
      __$MyFavoritesModelCopyWithImpl<_MyFavoritesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MyFavoritesModelToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'MyFavoritesModel(amount: $amount, arrivalPrice: $arrivalPrice, createTime: $createTime, endTime: $endTime, id: $id, imageUrl: $imageUrl, productId: $productId, title: $title, type: $type)';
  }
}

/// @nodoc
abstract mixin class _$MyFavoritesModelCopyWith<$Res>
    implements $MyFavoritesModelCopyWith<$Res> {
  factory _$MyFavoritesModelCopyWith(
          _MyFavoritesModel value, $Res Function(_MyFavoritesModel) _then) =
      __$MyFavoritesModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String amount,
      String arrivalPrice,
      String createTime,
      String endTime,
      int id,
      String imageUrl,
      String productId,
      String title,
      String type});
}

/// @nodoc
class __$MyFavoritesModelCopyWithImpl<$Res>
    implements _$MyFavoritesModelCopyWith<$Res> {
  __$MyFavoritesModelCopyWithImpl(this._self, this._then);

  final _MyFavoritesModel _self;
  final $Res Function(_MyFavoritesModel) _then;

  /// Create a copy of MyFavoritesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? amount = null,
    Object? arrivalPrice = null,
    Object? createTime = null,
    Object? endTime = null,
    Object? id = null,
    Object? imageUrl = null,
    Object? productId = null,
    Object? title = null,
    Object? type = null,
  }) {
    return _then(_MyFavoritesModel(
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      arrivalPrice: null == arrivalPrice
          ? _self.arrivalPrice
          : arrivalPrice // ignore: cast_nullable_to_non_nullable
              as String,
      createTime: null == createTime
          ? _self.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _self.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _self.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
