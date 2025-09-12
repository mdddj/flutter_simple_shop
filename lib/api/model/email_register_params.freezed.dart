// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_register_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EmailRegisterParams {
  @JsonKey(name: 'email')
  String get email;
  @JsonKey(name: 'code')
  String get code;
  @JsonKey(name: 'password')
  String get password;

  /// Create a copy of EmailRegisterParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EmailRegisterParamsCopyWith<EmailRegisterParams> get copyWith =>
      _$EmailRegisterParamsCopyWithImpl<EmailRegisterParams>(
          this as EmailRegisterParams, _$identity);

  /// Serializes this EmailRegisterParams to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmailRegisterParams &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, code, password);

  @override
  String toString() {
    return 'EmailRegisterParams(email: $email, code: $code, password: $password)';
  }
}

/// @nodoc
abstract mixin class $EmailRegisterParamsCopyWith<$Res> {
  factory $EmailRegisterParamsCopyWith(
          EmailRegisterParams value, $Res Function(EmailRegisterParams) _then) =
      _$EmailRegisterParamsCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String email,
      @JsonKey(name: 'code') String code,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class _$EmailRegisterParamsCopyWithImpl<$Res>
    implements $EmailRegisterParamsCopyWith<$Res> {
  _$EmailRegisterParamsCopyWithImpl(this._self, this._then);

  final EmailRegisterParams _self;
  final $Res Function(EmailRegisterParams) _then;

  /// Create a copy of EmailRegisterParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
    Object? password = null,
  }) {
    return _then(_self.copyWith(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [EmailRegisterParams].
extension EmailRegisterParamsPatterns on EmailRegisterParams {
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
    TResult Function(_EmailRegisterParams value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EmailRegisterParams() when $default != null:
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
    TResult Function(_EmailRegisterParams value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EmailRegisterParams():
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
    TResult? Function(_EmailRegisterParams value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EmailRegisterParams() when $default != null:
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
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'code') String code,
            @JsonKey(name: 'password') String password)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EmailRegisterParams() when $default != null:
        return $default(_that.email, _that.code, _that.password);
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
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'code') String code,
            @JsonKey(name: 'password') String password)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EmailRegisterParams():
        return $default(_that.email, _that.code, _that.password);
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
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'code') String code,
            @JsonKey(name: 'password') String password)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EmailRegisterParams() when $default != null:
        return $default(_that.email, _that.code, _that.password);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _EmailRegisterParams implements EmailRegisterParams {
  const _EmailRegisterParams(
      {@JsonKey(name: 'email') this.email = '',
      @JsonKey(name: 'code') this.code = '',
      @JsonKey(name: 'password') this.password = ''});
  factory _EmailRegisterParams.fromJson(Map<String, dynamic> json) =>
      _$EmailRegisterParamsFromJson(json);

  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'code')
  final String code;
  @override
  @JsonKey(name: 'password')
  final String password;

  /// Create a copy of EmailRegisterParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EmailRegisterParamsCopyWith<_EmailRegisterParams> get copyWith =>
      __$EmailRegisterParamsCopyWithImpl<_EmailRegisterParams>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EmailRegisterParamsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmailRegisterParams &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, code, password);

  @override
  String toString() {
    return 'EmailRegisterParams(email: $email, code: $code, password: $password)';
  }
}

/// @nodoc
abstract mixin class _$EmailRegisterParamsCopyWith<$Res>
    implements $EmailRegisterParamsCopyWith<$Res> {
  factory _$EmailRegisterParamsCopyWith(_EmailRegisterParams value,
          $Res Function(_EmailRegisterParams) _then) =
      __$EmailRegisterParamsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String email,
      @JsonKey(name: 'code') String code,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class __$EmailRegisterParamsCopyWithImpl<$Res>
    implements _$EmailRegisterParamsCopyWith<$Res> {
  __$EmailRegisterParamsCopyWithImpl(this._self, this._then);

  final _EmailRegisterParams _self;
  final $Res Function(_EmailRegisterParams) _then;

  /// Create a copy of EmailRegisterParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? code = null,
    Object? password = null,
  }) {
    return _then(_EmailRegisterParams(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
