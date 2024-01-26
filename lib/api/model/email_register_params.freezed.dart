// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_register_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmailRegisterParams _$EmailRegisterParamsFromJson(Map<String, dynamic> json) {
  return _EmailRegisterParams.fromJson(json);
}

/// @nodoc
mixin _$EmailRegisterParams {
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailRegisterParamsCopyWith<EmailRegisterParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailRegisterParamsCopyWith<$Res> {
  factory $EmailRegisterParamsCopyWith(
          EmailRegisterParams value, $Res Function(EmailRegisterParams) then) =
      _$EmailRegisterParamsCopyWithImpl<$Res, EmailRegisterParams>;
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String email,
      @JsonKey(name: 'code') String code,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class _$EmailRegisterParamsCopyWithImpl<$Res, $Val extends EmailRegisterParams>
    implements $EmailRegisterParamsCopyWith<$Res> {
  _$EmailRegisterParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmailRegisterParamsImplCopyWith<$Res>
    implements $EmailRegisterParamsCopyWith<$Res> {
  factory _$$EmailRegisterParamsImplCopyWith(_$EmailRegisterParamsImpl value,
          $Res Function(_$EmailRegisterParamsImpl) then) =
      __$$EmailRegisterParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String email,
      @JsonKey(name: 'code') String code,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class __$$EmailRegisterParamsImplCopyWithImpl<$Res>
    extends _$EmailRegisterParamsCopyWithImpl<$Res, _$EmailRegisterParamsImpl>
    implements _$$EmailRegisterParamsImplCopyWith<$Res> {
  __$$EmailRegisterParamsImplCopyWithImpl(_$EmailRegisterParamsImpl _value,
      $Res Function(_$EmailRegisterParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
    Object? password = null,
  }) {
    return _then(_$EmailRegisterParamsImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmailRegisterParamsImpl implements _EmailRegisterParams {
  const _$EmailRegisterParamsImpl(
      {@JsonKey(name: 'email') this.email = '',
      @JsonKey(name: 'code') this.code = '',
      @JsonKey(name: 'password') this.password = ''});

  factory _$EmailRegisterParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmailRegisterParamsImplFromJson(json);

  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'code')
  final String code;
  @override
  @JsonKey(name: 'password')
  final String password;

  @override
  String toString() {
    return 'EmailRegisterParams(email: $email, code: $code, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailRegisterParamsImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, code, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailRegisterParamsImplCopyWith<_$EmailRegisterParamsImpl> get copyWith =>
      __$$EmailRegisterParamsImplCopyWithImpl<_$EmailRegisterParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmailRegisterParamsImplToJson(
      this,
    );
  }
}

abstract class _EmailRegisterParams implements EmailRegisterParams {
  const factory _EmailRegisterParams(
          {@JsonKey(name: 'email') final String email,
          @JsonKey(name: 'code') final String code,
          @JsonKey(name: 'password') final String password}) =
      _$EmailRegisterParamsImpl;

  factory _EmailRegisterParams.fromJson(Map<String, dynamic> json) =
      _$EmailRegisterParamsImpl.fromJson;

  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'code')
  String get code;
  @override
  @JsonKey(name: 'password')
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$EmailRegisterParamsImplCopyWith<_$EmailRegisterParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
