// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginParams {
  @JsonKey(name: 'loginType')
  String get logintype;
  @JsonKey(name: 'password')
  String get password;
  @JsonKey(name: 'loginNumber')
  String get loginnumber;

  /// Create a copy of LoginParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginParamsCopyWith<LoginParams> get copyWith =>
      _$LoginParamsCopyWithImpl<LoginParams>(this as LoginParams, _$identity);

  /// Serializes this LoginParams to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginParams &&
            (identical(other.logintype, logintype) ||
                other.logintype == logintype) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.loginnumber, loginnumber) ||
                other.loginnumber == loginnumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, logintype, password, loginnumber);

  @override
  String toString() {
    return 'LoginParams(logintype: $logintype, password: $password, loginnumber: $loginnumber)';
  }
}

/// @nodoc
abstract mixin class $LoginParamsCopyWith<$Res> {
  factory $LoginParamsCopyWith(
          LoginParams value, $Res Function(LoginParams) _then) =
      _$LoginParamsCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'loginType') String logintype,
      @JsonKey(name: 'password') String password,
      @JsonKey(name: 'loginNumber') String loginnumber});
}

/// @nodoc
class _$LoginParamsCopyWithImpl<$Res> implements $LoginParamsCopyWith<$Res> {
  _$LoginParamsCopyWithImpl(this._self, this._then);

  final LoginParams _self;
  final $Res Function(LoginParams) _then;

  /// Create a copy of LoginParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logintype = null,
    Object? password = null,
    Object? loginnumber = null,
  }) {
    return _then(_self.copyWith(
      logintype: null == logintype
          ? _self.logintype
          : logintype // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      loginnumber: null == loginnumber
          ? _self.loginnumber
          : loginnumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _LoginParams implements LoginParams {
  const _LoginParams(
      {@JsonKey(name: 'loginType') this.logintype = '',
      @JsonKey(name: 'password') this.password = '',
      @JsonKey(name: 'loginNumber') this.loginnumber = ''});
  factory _LoginParams.fromJson(Map<String, dynamic> json) =>
      _$LoginParamsFromJson(json);

  @override
  @JsonKey(name: 'loginType')
  final String logintype;
  @override
  @JsonKey(name: 'password')
  final String password;
  @override
  @JsonKey(name: 'loginNumber')
  final String loginnumber;

  /// Create a copy of LoginParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoginParamsCopyWith<_LoginParams> get copyWith =>
      __$LoginParamsCopyWithImpl<_LoginParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LoginParamsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginParams &&
            (identical(other.logintype, logintype) ||
                other.logintype == logintype) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.loginnumber, loginnumber) ||
                other.loginnumber == loginnumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, logintype, password, loginnumber);

  @override
  String toString() {
    return 'LoginParams(logintype: $logintype, password: $password, loginnumber: $loginnumber)';
  }
}

/// @nodoc
abstract mixin class _$LoginParamsCopyWith<$Res>
    implements $LoginParamsCopyWith<$Res> {
  factory _$LoginParamsCopyWith(
          _LoginParams value, $Res Function(_LoginParams) _then) =
      __$LoginParamsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'loginType') String logintype,
      @JsonKey(name: 'password') String password,
      @JsonKey(name: 'loginNumber') String loginnumber});
}

/// @nodoc
class __$LoginParamsCopyWithImpl<$Res> implements _$LoginParamsCopyWith<$Res> {
  __$LoginParamsCopyWithImpl(this._self, this._then);

  final _LoginParams _self;
  final $Res Function(_LoginParams) _then;

  /// Create a copy of LoginParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? logintype = null,
    Object? password = null,
    Object? loginnumber = null,
  }) {
    return _then(_LoginParams(
      logintype: null == logintype
          ? _self.logintype
          : logintype // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      loginnumber: null == loginnumber
          ? _self.loginnumber
          : loginnumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
