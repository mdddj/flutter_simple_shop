// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginParams _$LoginParamsFromJson(Map<String, dynamic> json) {
  return _LoginParams.fromJson(json);
}

/// @nodoc
mixin _$LoginParams {
  @JsonKey(name: 'loginType')
  String get logintype => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'loginNumber')
  String get loginnumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginParamsCopyWith<LoginParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginParamsCopyWith<$Res> {
  factory $LoginParamsCopyWith(
          LoginParams value, $Res Function(LoginParams) then) =
      _$LoginParamsCopyWithImpl<$Res, LoginParams>;
  @useResult
  $Res call(
      {@JsonKey(name: 'loginType') String logintype,
      @JsonKey(name: 'password') String password,
      @JsonKey(name: 'loginNumber') String loginnumber});
}

/// @nodoc
class _$LoginParamsCopyWithImpl<$Res, $Val extends LoginParams>
    implements $LoginParamsCopyWith<$Res> {
  _$LoginParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logintype = null,
    Object? password = null,
    Object? loginnumber = null,
  }) {
    return _then(_value.copyWith(
      logintype: null == logintype
          ? _value.logintype
          : logintype // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      loginnumber: null == loginnumber
          ? _value.loginnumber
          : loginnumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginParamsImplCopyWith<$Res>
    implements $LoginParamsCopyWith<$Res> {
  factory _$$LoginParamsImplCopyWith(
          _$LoginParamsImpl value, $Res Function(_$LoginParamsImpl) then) =
      __$$LoginParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'loginType') String logintype,
      @JsonKey(name: 'password') String password,
      @JsonKey(name: 'loginNumber') String loginnumber});
}

/// @nodoc
class __$$LoginParamsImplCopyWithImpl<$Res>
    extends _$LoginParamsCopyWithImpl<$Res, _$LoginParamsImpl>
    implements _$$LoginParamsImplCopyWith<$Res> {
  __$$LoginParamsImplCopyWithImpl(
      _$LoginParamsImpl _value, $Res Function(_$LoginParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logintype = null,
    Object? password = null,
    Object? loginnumber = null,
  }) {
    return _then(_$LoginParamsImpl(
      logintype: null == logintype
          ? _value.logintype
          : logintype // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      loginnumber: null == loginnumber
          ? _value.loginnumber
          : loginnumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginParamsImpl implements _LoginParams {
  const _$LoginParamsImpl(
      {@JsonKey(name: 'loginType') this.logintype = '',
      @JsonKey(name: 'password') this.password = '',
      @JsonKey(name: 'loginNumber') this.loginnumber = ''});

  factory _$LoginParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginParamsImplFromJson(json);

  @override
  @JsonKey(name: 'loginType')
  final String logintype;
  @override
  @JsonKey(name: 'password')
  final String password;
  @override
  @JsonKey(name: 'loginNumber')
  final String loginnumber;

  @override
  String toString() {
    return 'LoginParams(logintype: $logintype, password: $password, loginnumber: $loginnumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginParamsImpl &&
            (identical(other.logintype, logintype) ||
                other.logintype == logintype) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.loginnumber, loginnumber) ||
                other.loginnumber == loginnumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, logintype, password, loginnumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginParamsImplCopyWith<_$LoginParamsImpl> get copyWith =>
      __$$LoginParamsImplCopyWithImpl<_$LoginParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginParamsImplToJson(
      this,
    );
  }
}

abstract class _LoginParams implements LoginParams {
  const factory _LoginParams(
          {@JsonKey(name: 'loginType') final String logintype,
          @JsonKey(name: 'password') final String password,
          @JsonKey(name: 'loginNumber') final String loginnumber}) =
      _$LoginParamsImpl;

  factory _LoginParams.fromJson(Map<String, dynamic> json) =
      _$LoginParamsImpl.fromJson;

  @override
  @JsonKey(name: 'loginType')
  String get logintype;
  @override
  @JsonKey(name: 'password')
  String get password;
  @override
  @JsonKey(name: 'loginNumber')
  String get loginnumber;
  @override
  @JsonKey(ignore: true)
  _$$LoginParamsImplCopyWith<_$LoginParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
