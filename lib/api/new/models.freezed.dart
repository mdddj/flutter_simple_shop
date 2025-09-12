// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TKCarousel {
  @JsonKey(name: 'activityID')
  String get activityID;
  @JsonKey(name: 'link')
  String get link;
  @JsonKey(name: 'sourceType')
  int get sourceType;
  @JsonKey(name: 'topicID')
  int get topicID;
  @JsonKey(name: 'topicImage')
  String get topicImage;
  @JsonKey(name: 'topicName')
  String get topicName;

  /// Create a copy of TKCarousel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TKCarouselCopyWith<TKCarousel> get copyWith =>
      _$TKCarouselCopyWithImpl<TKCarousel>(this as TKCarousel, _$identity);

  /// Serializes this TKCarousel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TKCarousel &&
            (identical(other.activityID, activityID) ||
                other.activityID == activityID) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.sourceType, sourceType) ||
                other.sourceType == sourceType) &&
            (identical(other.topicID, topicID) || other.topicID == topicID) &&
            (identical(other.topicImage, topicImage) ||
                other.topicImage == topicImage) &&
            (identical(other.topicName, topicName) ||
                other.topicName == topicName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, activityID, link, sourceType,
      topicID, topicImage, topicName);

  @override
  String toString() {
    return 'TKCarousel(activityID: $activityID, link: $link, sourceType: $sourceType, topicID: $topicID, topicImage: $topicImage, topicName: $topicName)';
  }
}

/// @nodoc
abstract mixin class $TKCarouselCopyWith<$Res> {
  factory $TKCarouselCopyWith(
          TKCarousel value, $Res Function(TKCarousel) _then) =
      _$TKCarouselCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'activityID') String activityID,
      @JsonKey(name: 'link') String link,
      @JsonKey(name: 'sourceType') int sourceType,
      @JsonKey(name: 'topicID') int topicID,
      @JsonKey(name: 'topicImage') String topicImage,
      @JsonKey(name: 'topicName') String topicName});
}

/// @nodoc
class _$TKCarouselCopyWithImpl<$Res> implements $TKCarouselCopyWith<$Res> {
  _$TKCarouselCopyWithImpl(this._self, this._then);

  final TKCarousel _self;
  final $Res Function(TKCarousel) _then;

  /// Create a copy of TKCarousel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityID = null,
    Object? link = null,
    Object? sourceType = null,
    Object? topicID = null,
    Object? topicImage = null,
    Object? topicName = null,
  }) {
    return _then(_self.copyWith(
      activityID: null == activityID
          ? _self.activityID
          : activityID // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _self.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      sourceType: null == sourceType
          ? _self.sourceType
          : sourceType // ignore: cast_nullable_to_non_nullable
              as int,
      topicID: null == topicID
          ? _self.topicID
          : topicID // ignore: cast_nullable_to_non_nullable
              as int,
      topicImage: null == topicImage
          ? _self.topicImage
          : topicImage // ignore: cast_nullable_to_non_nullable
              as String,
      topicName: null == topicName
          ? _self.topicName
          : topicName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [TKCarousel].
extension TKCarouselPatterns on TKCarousel {
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
    TResult Function(_TKCarousel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TKCarousel() when $default != null:
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
    TResult Function(_TKCarousel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TKCarousel():
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
    TResult? Function(_TKCarousel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TKCarousel() when $default != null:
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
            @JsonKey(name: 'activityID') String activityID,
            @JsonKey(name: 'link') String link,
            @JsonKey(name: 'sourceType') int sourceType,
            @JsonKey(name: 'topicID') int topicID,
            @JsonKey(name: 'topicImage') String topicImage,
            @JsonKey(name: 'topicName') String topicName)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TKCarousel() when $default != null:
        return $default(_that.activityID, _that.link, _that.sourceType,
            _that.topicID, _that.topicImage, _that.topicName);
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
            @JsonKey(name: 'activityID') String activityID,
            @JsonKey(name: 'link') String link,
            @JsonKey(name: 'sourceType') int sourceType,
            @JsonKey(name: 'topicID') int topicID,
            @JsonKey(name: 'topicImage') String topicImage,
            @JsonKey(name: 'topicName') String topicName)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TKCarousel():
        return $default(_that.activityID, _that.link, _that.sourceType,
            _that.topicID, _that.topicImage, _that.topicName);
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
            @JsonKey(name: 'activityID') String activityID,
            @JsonKey(name: 'link') String link,
            @JsonKey(name: 'sourceType') int sourceType,
            @JsonKey(name: 'topicID') int topicID,
            @JsonKey(name: 'topicImage') String topicImage,
            @JsonKey(name: 'topicName') String topicName)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TKCarousel() when $default != null:
        return $default(_that.activityID, _that.link, _that.sourceType,
            _that.topicID, _that.topicImage, _that.topicName);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TKCarousel extends TKCarousel {
  const _TKCarousel(
      {@JsonKey(name: 'activityID') this.activityID = '',
      @JsonKey(name: 'link') this.link = '',
      @JsonKey(name: 'sourceType') this.sourceType = 0,
      @JsonKey(name: 'topicID') this.topicID = 0,
      @JsonKey(name: 'topicImage') this.topicImage = '',
      @JsonKey(name: 'topicName') this.topicName = ''})
      : super._();
  factory _TKCarousel.fromJson(Map<String, dynamic> json) =>
      _$TKCarouselFromJson(json);

  @override
  @JsonKey(name: 'activityID')
  final String activityID;
  @override
  @JsonKey(name: 'link')
  final String link;
  @override
  @JsonKey(name: 'sourceType')
  final int sourceType;
  @override
  @JsonKey(name: 'topicID')
  final int topicID;
  @override
  @JsonKey(name: 'topicImage')
  final String topicImage;
  @override
  @JsonKey(name: 'topicName')
  final String topicName;

  /// Create a copy of TKCarousel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TKCarouselCopyWith<_TKCarousel> get copyWith =>
      __$TKCarouselCopyWithImpl<_TKCarousel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TKCarouselToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TKCarousel &&
            (identical(other.activityID, activityID) ||
                other.activityID == activityID) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.sourceType, sourceType) ||
                other.sourceType == sourceType) &&
            (identical(other.topicID, topicID) || other.topicID == topicID) &&
            (identical(other.topicImage, topicImage) ||
                other.topicImage == topicImage) &&
            (identical(other.topicName, topicName) ||
                other.topicName == topicName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, activityID, link, sourceType,
      topicID, topicImage, topicName);

  @override
  String toString() {
    return 'TKCarousel(activityID: $activityID, link: $link, sourceType: $sourceType, topicID: $topicID, topicImage: $topicImage, topicName: $topicName)';
  }
}

/// @nodoc
abstract mixin class _$TKCarouselCopyWith<$Res>
    implements $TKCarouselCopyWith<$Res> {
  factory _$TKCarouselCopyWith(
          _TKCarousel value, $Res Function(_TKCarousel) _then) =
      __$TKCarouselCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'activityID') String activityID,
      @JsonKey(name: 'link') String link,
      @JsonKey(name: 'sourceType') int sourceType,
      @JsonKey(name: 'topicID') int topicID,
      @JsonKey(name: 'topicImage') String topicImage,
      @JsonKey(name: 'topicName') String topicName});
}

/// @nodoc
class __$TKCarouselCopyWithImpl<$Res> implements _$TKCarouselCopyWith<$Res> {
  __$TKCarouselCopyWithImpl(this._self, this._then);

  final _TKCarousel _self;
  final $Res Function(_TKCarousel) _then;

  /// Create a copy of TKCarousel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? activityID = null,
    Object? link = null,
    Object? sourceType = null,
    Object? topicID = null,
    Object? topicImage = null,
    Object? topicName = null,
  }) {
    return _then(_TKCarousel(
      activityID: null == activityID
          ? _self.activityID
          : activityID // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _self.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      sourceType: null == sourceType
          ? _self.sourceType
          : sourceType // ignore: cast_nullable_to_non_nullable
              as int,
      topicID: null == topicID
          ? _self.topicID
          : topicID // ignore: cast_nullable_to_non_nullable
              as int,
      topicImage: null == topicImage
          ? _self.topicImage
          : topicImage // ignore: cast_nullable_to_non_nullable
              as String,
      topicName: null == topicName
          ? _self.topicName
          : topicName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
