// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
