// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'carousel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Carousel {
  String get topicImage;
  String get activityId;
  int get topicId;
  int get sourceType;
  String get link;
  String get topicName;

  /// Create a copy of Carousel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CarouselCopyWith<Carousel> get copyWith =>
      _$CarouselCopyWithImpl<Carousel>(this as Carousel, _$identity);

  /// Serializes this Carousel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Carousel &&
            (identical(other.topicImage, topicImage) ||
                other.topicImage == topicImage) &&
            (identical(other.activityId, activityId) ||
                other.activityId == activityId) &&
            (identical(other.topicId, topicId) || other.topicId == topicId) &&
            (identical(other.sourceType, sourceType) ||
                other.sourceType == sourceType) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.topicName, topicName) ||
                other.topicName == topicName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, topicImage, activityId, topicId,
      sourceType, link, topicName);

  @override
  String toString() {
    return 'Carousel(topicImage: $topicImage, activityId: $activityId, topicId: $topicId, sourceType: $sourceType, link: $link, topicName: $topicName)';
  }
}

/// @nodoc
abstract mixin class $CarouselCopyWith<$Res> {
  factory $CarouselCopyWith(Carousel value, $Res Function(Carousel) _then) =
      _$CarouselCopyWithImpl;
  @useResult
  $Res call(
      {String topicImage,
      String activityId,
      int topicId,
      int sourceType,
      String link,
      String topicName});
}

/// @nodoc
class _$CarouselCopyWithImpl<$Res> implements $CarouselCopyWith<$Res> {
  _$CarouselCopyWithImpl(this._self, this._then);

  final Carousel _self;
  final $Res Function(Carousel) _then;

  /// Create a copy of Carousel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topicImage = null,
    Object? activityId = null,
    Object? topicId = null,
    Object? sourceType = null,
    Object? link = null,
    Object? topicName = null,
  }) {
    return _then(_self.copyWith(
      topicImage: null == topicImage
          ? _self.topicImage
          : topicImage // ignore: cast_nullable_to_non_nullable
              as String,
      activityId: null == activityId
          ? _self.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as String,
      topicId: null == topicId
          ? _self.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as int,
      sourceType: null == sourceType
          ? _self.sourceType
          : sourceType // ignore: cast_nullable_to_non_nullable
              as int,
      link: null == link
          ? _self.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      topicName: null == topicName
          ? _self.topicName
          : topicName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [Carousel].
extension CarouselPatterns on Carousel {
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
    TResult Function(_Carousel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Carousel() when $default != null:
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
    TResult Function(_Carousel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Carousel():
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
    TResult? Function(_Carousel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Carousel() when $default != null:
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
    TResult Function(String topicImage, String activityId, int topicId,
            int sourceType, String link, String topicName)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Carousel() when $default != null:
        return $default(_that.topicImage, _that.activityId, _that.topicId,
            _that.sourceType, _that.link, _that.topicName);
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
    TResult Function(String topicImage, String activityId, int topicId,
            int sourceType, String link, String topicName)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Carousel():
        return $default(_that.topicImage, _that.activityId, _that.topicId,
            _that.sourceType, _that.link, _that.topicName);
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
    TResult? Function(String topicImage, String activityId, int topicId,
            int sourceType, String link, String topicName)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Carousel() when $default != null:
        return $default(_that.topicImage, _that.activityId, _that.topicId,
            _that.sourceType, _that.link, _that.topicName);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Carousel extends Carousel {
  const _Carousel(
      {this.topicImage = '',
      this.activityId = '',
      this.topicId = 0,
      this.sourceType = 0,
      this.link = '',
      this.topicName = ''})
      : super._();
  factory _Carousel.fromJson(Map<String, dynamic> json) =>
      _$CarouselFromJson(json);

  @override
  @JsonKey()
  final String topicImage;
  @override
  @JsonKey()
  final String activityId;
  @override
  @JsonKey()
  final int topicId;
  @override
  @JsonKey()
  final int sourceType;
  @override
  @JsonKey()
  final String link;
  @override
  @JsonKey()
  final String topicName;

  /// Create a copy of Carousel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CarouselCopyWith<_Carousel> get copyWith =>
      __$CarouselCopyWithImpl<_Carousel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CarouselToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Carousel &&
            (identical(other.topicImage, topicImage) ||
                other.topicImage == topicImage) &&
            (identical(other.activityId, activityId) ||
                other.activityId == activityId) &&
            (identical(other.topicId, topicId) || other.topicId == topicId) &&
            (identical(other.sourceType, sourceType) ||
                other.sourceType == sourceType) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.topicName, topicName) ||
                other.topicName == topicName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, topicImage, activityId, topicId,
      sourceType, link, topicName);

  @override
  String toString() {
    return 'Carousel(topicImage: $topicImage, activityId: $activityId, topicId: $topicId, sourceType: $sourceType, link: $link, topicName: $topicName)';
  }
}

/// @nodoc
abstract mixin class _$CarouselCopyWith<$Res>
    implements $CarouselCopyWith<$Res> {
  factory _$CarouselCopyWith(_Carousel value, $Res Function(_Carousel) _then) =
      __$CarouselCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String topicImage,
      String activityId,
      int topicId,
      int sourceType,
      String link,
      String topicName});
}

/// @nodoc
class __$CarouselCopyWithImpl<$Res> implements _$CarouselCopyWith<$Res> {
  __$CarouselCopyWithImpl(this._self, this._then);

  final _Carousel _self;
  final $Res Function(_Carousel) _then;

  /// Create a copy of Carousel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? topicImage = null,
    Object? activityId = null,
    Object? topicId = null,
    Object? sourceType = null,
    Object? link = null,
    Object? topicName = null,
  }) {
    return _then(_Carousel(
      topicImage: null == topicImage
          ? _self.topicImage
          : topicImage // ignore: cast_nullable_to_non_nullable
              as String,
      activityId: null == activityId
          ? _self.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as String,
      topicId: null == topicId
          ? _self.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as int,
      sourceType: null == sourceType
          ? _self.sourceType
          : sourceType // ignore: cast_nullable_to_non_nullable
              as int,
      link: null == link
          ? _self.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      topicName: null == topicName
          ? _self.topicName
          : topicName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
