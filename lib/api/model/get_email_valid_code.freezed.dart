// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_email_valid_code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetEmailValidCodeParams {
  @JsonKey(name: 'email')
  String get email;

  /// Create a copy of GetEmailValidCodeParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetEmailValidCodeParamsCopyWith<GetEmailValidCodeParams> get copyWith =>
      _$GetEmailValidCodeParamsCopyWithImpl<GetEmailValidCodeParams>(
          this as GetEmailValidCodeParams, _$identity);

  /// Serializes this GetEmailValidCodeParams to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetEmailValidCodeParams &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @override
  String toString() {
    return 'GetEmailValidCodeParams(email: $email)';
  }
}

/// @nodoc
abstract mixin class $GetEmailValidCodeParamsCopyWith<$Res> {
  factory $GetEmailValidCodeParamsCopyWith(GetEmailValidCodeParams value,
          $Res Function(GetEmailValidCodeParams) _then) =
      _$GetEmailValidCodeParamsCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'email') String email});
}

/// @nodoc
class _$GetEmailValidCodeParamsCopyWithImpl<$Res>
    implements $GetEmailValidCodeParamsCopyWith<$Res> {
  _$GetEmailValidCodeParamsCopyWithImpl(this._self, this._then);

  final GetEmailValidCodeParams _self;
  final $Res Function(GetEmailValidCodeParams) _then;

  /// Create a copy of GetEmailValidCodeParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_self.copyWith(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [GetEmailValidCodeParams].
extension GetEmailValidCodeParamsPatterns on GetEmailValidCodeParams {
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
    TResult Function(_GetEmailValidCodeParams value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetEmailValidCodeParams() when $default != null:
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
    TResult Function(_GetEmailValidCodeParams value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetEmailValidCodeParams():
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
    TResult? Function(_GetEmailValidCodeParams value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetEmailValidCodeParams() when $default != null:
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
    TResult Function(@JsonKey(name: 'email') String email)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetEmailValidCodeParams() when $default != null:
        return $default(_that.email);
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
    TResult Function(@JsonKey(name: 'email') String email) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetEmailValidCodeParams():
        return $default(_that.email);
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
    TResult? Function(@JsonKey(name: 'email') String email)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetEmailValidCodeParams() when $default != null:
        return $default(_that.email);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _GetEmailValidCodeParams implements GetEmailValidCodeParams {
  const _GetEmailValidCodeParams({@JsonKey(name: 'email') this.email = ''});
  factory _GetEmailValidCodeParams.fromJson(Map<String, dynamic> json) =>
      _$GetEmailValidCodeParamsFromJson(json);

  @override
  @JsonKey(name: 'email')
  final String email;

  /// Create a copy of GetEmailValidCodeParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetEmailValidCodeParamsCopyWith<_GetEmailValidCodeParams> get copyWith =>
      __$GetEmailValidCodeParamsCopyWithImpl<_GetEmailValidCodeParams>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GetEmailValidCodeParamsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetEmailValidCodeParams &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @override
  String toString() {
    return 'GetEmailValidCodeParams(email: $email)';
  }
}

/// @nodoc
abstract mixin class _$GetEmailValidCodeParamsCopyWith<$Res>
    implements $GetEmailValidCodeParamsCopyWith<$Res> {
  factory _$GetEmailValidCodeParamsCopyWith(_GetEmailValidCodeParams value,
          $Res Function(_GetEmailValidCodeParams) _then) =
      __$GetEmailValidCodeParamsCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'email') String email});
}

/// @nodoc
class __$GetEmailValidCodeParamsCopyWithImpl<$Res>
    implements _$GetEmailValidCodeParamsCopyWith<$Res> {
  __$GetEmailValidCodeParamsCopyWithImpl(this._self, this._then);

  final _GetEmailValidCodeParams _self;
  final $Res Function(_GetEmailValidCodeParams) _then;

  /// Create a copy of GetEmailValidCodeParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
  }) {
    return _then(_GetEmailValidCodeParams(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
