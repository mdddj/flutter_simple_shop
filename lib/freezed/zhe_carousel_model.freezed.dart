// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'zhe_carousel_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ZheCarouselResult {
  @JsonKey(name: 'content')
  List<ZheCarousel> get content;
  @JsonKey(name: 'status')
  int get status;

  /// Create a copy of ZheCarouselResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ZheCarouselResultCopyWith<ZheCarouselResult> get copyWith =>
      _$ZheCarouselResultCopyWithImpl<ZheCarouselResult>(
          this as ZheCarouselResult, _$identity);

  /// Serializes this ZheCarouselResult to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ZheCarouselResult &&
            const DeepCollectionEquality().equals(other.content, content) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(content), status);

  @override
  String toString() {
    return 'ZheCarouselResult(content: $content, status: $status)';
  }
}

/// @nodoc
abstract mixin class $ZheCarouselResultCopyWith<$Res> {
  factory $ZheCarouselResultCopyWith(
          ZheCarouselResult value, $Res Function(ZheCarouselResult) _then) =
      _$ZheCarouselResultCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'content') List<ZheCarousel> content,
      @JsonKey(name: 'status') int status});
}

/// @nodoc
class _$ZheCarouselResultCopyWithImpl<$Res>
    implements $ZheCarouselResultCopyWith<$Res> {
  _$ZheCarouselResultCopyWithImpl(this._self, this._then);

  final ZheCarouselResult _self;
  final $Res Function(ZheCarouselResult) _then;

  /// Create a copy of ZheCarouselResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? status = null,
  }) {
    return _then(_self.copyWith(
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<ZheCarousel>,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [ZheCarouselResult].
extension ZheCarouselResultPatterns on ZheCarouselResult {
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
    TResult Function(_ZheCarouselResult value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ZheCarouselResult() when $default != null:
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
    TResult Function(_ZheCarouselResult value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ZheCarouselResult():
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
    TResult? Function(_ZheCarouselResult value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ZheCarouselResult() when $default != null:
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
    TResult Function(@JsonKey(name: 'content') List<ZheCarousel> content,
            @JsonKey(name: 'status') int status)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ZheCarouselResult() when $default != null:
        return $default(_that.content, _that.status);
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
    TResult Function(@JsonKey(name: 'content') List<ZheCarousel> content,
            @JsonKey(name: 'status') int status)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ZheCarouselResult():
        return $default(_that.content, _that.status);
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
    TResult? Function(@JsonKey(name: 'content') List<ZheCarousel> content,
            @JsonKey(name: 'status') int status)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ZheCarouselResult() when $default != null:
        return $default(_that.content, _that.status);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ZheCarouselResult extends ZheCarouselResult {
  const _ZheCarouselResult(
      {@JsonKey(name: 'content') final List<ZheCarousel> content = const [],
      @JsonKey(name: 'status') this.status = 0})
      : _content = content,
        super._();
  factory _ZheCarouselResult.fromJson(Map<String, dynamic> json) =>
      _$ZheCarouselResultFromJson(json);

  final List<ZheCarousel> _content;
  @override
  @JsonKey(name: 'content')
  List<ZheCarousel> get content {
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  @override
  @JsonKey(name: 'status')
  final int status;

  /// Create a copy of ZheCarouselResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ZheCarouselResultCopyWith<_ZheCarouselResult> get copyWith =>
      __$ZheCarouselResultCopyWithImpl<_ZheCarouselResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ZheCarouselResultToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ZheCarouselResult &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_content), status);

  @override
  String toString() {
    return 'ZheCarouselResult(content: $content, status: $status)';
  }
}

/// @nodoc
abstract mixin class _$ZheCarouselResultCopyWith<$Res>
    implements $ZheCarouselResultCopyWith<$Res> {
  factory _$ZheCarouselResultCopyWith(
          _ZheCarouselResult value, $Res Function(_ZheCarouselResult) _then) =
      __$ZheCarouselResultCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'content') List<ZheCarousel> content,
      @JsonKey(name: 'status') int status});
}

/// @nodoc
class __$ZheCarouselResultCopyWithImpl<$Res>
    implements _$ZheCarouselResultCopyWith<$Res> {
  __$ZheCarouselResultCopyWithImpl(this._self, this._then);

  final _ZheCarouselResult _self;
  final $Res Function(_ZheCarouselResult) _then;

  /// Create a copy of ZheCarouselResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? content = null,
    Object? status = null,
  }) {
    return _then(_ZheCarouselResult(
      content: null == content
          ? _self._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<ZheCarousel>,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$ZheCarousel {
  @JsonKey(name: 'code')
  String get code;
  @JsonKey(name: 'date_time')
  String get dateTime;
  @JsonKey(name: 'get_url')
  String get getUrl;
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(name: 'pic')
  String get pic;

  /// Create a copy of ZheCarousel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ZheCarouselCopyWith<ZheCarousel> get copyWith =>
      _$ZheCarouselCopyWithImpl<ZheCarousel>(this as ZheCarousel, _$identity);

  /// Serializes this ZheCarousel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ZheCarousel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.getUrl, getUrl) || other.getUrl == getUrl) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.pic, pic) || other.pic == pic));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, dateTime, getUrl, name, pic);

  @override
  String toString() {
    return 'ZheCarousel(code: $code, dateTime: $dateTime, getUrl: $getUrl, name: $name, pic: $pic)';
  }
}

/// @nodoc
abstract mixin class $ZheCarouselCopyWith<$Res> {
  factory $ZheCarouselCopyWith(
          ZheCarousel value, $Res Function(ZheCarousel) _then) =
      _$ZheCarouselCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') String code,
      @JsonKey(name: 'date_time') String dateTime,
      @JsonKey(name: 'get_url') String getUrl,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'pic') String pic});
}

/// @nodoc
class _$ZheCarouselCopyWithImpl<$Res> implements $ZheCarouselCopyWith<$Res> {
  _$ZheCarouselCopyWithImpl(this._self, this._then);

  final ZheCarousel _self;
  final $Res Function(ZheCarousel) _then;

  /// Create a copy of ZheCarousel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? dateTime = null,
    Object? getUrl = null,
    Object? name = null,
    Object? pic = null,
  }) {
    return _then(_self.copyWith(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _self.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
      getUrl: null == getUrl
          ? _self.getUrl
          : getUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pic: null == pic
          ? _self.pic
          : pic // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ZheCarousel].
extension ZheCarouselPatterns on ZheCarousel {
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
    TResult Function(_ZheCarousel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ZheCarousel() when $default != null:
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
    TResult Function(_ZheCarousel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ZheCarousel():
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
    TResult? Function(_ZheCarousel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ZheCarousel() when $default != null:
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
            @JsonKey(name: 'code') String code,
            @JsonKey(name: 'date_time') String dateTime,
            @JsonKey(name: 'get_url') String getUrl,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'pic') String pic)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ZheCarousel() when $default != null:
        return $default(
            _that.code, _that.dateTime, _that.getUrl, _that.name, _that.pic);
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
            @JsonKey(name: 'code') String code,
            @JsonKey(name: 'date_time') String dateTime,
            @JsonKey(name: 'get_url') String getUrl,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'pic') String pic)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ZheCarousel():
        return $default(
            _that.code, _that.dateTime, _that.getUrl, _that.name, _that.pic);
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
            @JsonKey(name: 'code') String code,
            @JsonKey(name: 'date_time') String dateTime,
            @JsonKey(name: 'get_url') String getUrl,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'pic') String pic)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ZheCarousel() when $default != null:
        return $default(
            _that.code, _that.dateTime, _that.getUrl, _that.name, _that.pic);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ZheCarousel extends ZheCarousel {
  const _ZheCarousel(
      {@JsonKey(name: 'code') this.code = '',
      @JsonKey(name: 'date_time') this.dateTime = '',
      @JsonKey(name: 'get_url') this.getUrl = '',
      @JsonKey(name: 'name') this.name = '',
      @JsonKey(name: 'pic') this.pic = ''})
      : super._();
  factory _ZheCarousel.fromJson(Map<String, dynamic> json) =>
      _$ZheCarouselFromJson(json);

  @override
  @JsonKey(name: 'code')
  final String code;
  @override
  @JsonKey(name: 'date_time')
  final String dateTime;
  @override
  @JsonKey(name: 'get_url')
  final String getUrl;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'pic')
  final String pic;

  /// Create a copy of ZheCarousel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ZheCarouselCopyWith<_ZheCarousel> get copyWith =>
      __$ZheCarouselCopyWithImpl<_ZheCarousel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ZheCarouselToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ZheCarousel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.getUrl, getUrl) || other.getUrl == getUrl) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.pic, pic) || other.pic == pic));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, dateTime, getUrl, name, pic);

  @override
  String toString() {
    return 'ZheCarousel(code: $code, dateTime: $dateTime, getUrl: $getUrl, name: $name, pic: $pic)';
  }
}

/// @nodoc
abstract mixin class _$ZheCarouselCopyWith<$Res>
    implements $ZheCarouselCopyWith<$Res> {
  factory _$ZheCarouselCopyWith(
          _ZheCarousel value, $Res Function(_ZheCarousel) _then) =
      __$ZheCarouselCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') String code,
      @JsonKey(name: 'date_time') String dateTime,
      @JsonKey(name: 'get_url') String getUrl,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'pic') String pic});
}

/// @nodoc
class __$ZheCarouselCopyWithImpl<$Res> implements _$ZheCarouselCopyWith<$Res> {
  __$ZheCarouselCopyWithImpl(this._self, this._then);

  final _ZheCarousel _self;
  final $Res Function(_ZheCarousel) _then;

  /// Create a copy of ZheCarousel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = null,
    Object? dateTime = null,
    Object? getUrl = null,
    Object? name = null,
    Object? pic = null,
  }) {
    return _then(_ZheCarousel(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _self.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
      getUrl: null == getUrl
          ? _self.getUrl
          : getUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pic: null == pic
          ? _self.pic
          : pic // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
