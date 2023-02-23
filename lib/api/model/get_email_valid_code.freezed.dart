// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_email_valid_code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetEmailValidCodeParams _$GetEmailValidCodeParamsFromJson(
    Map<String, dynamic> json) {
  return _GetEmailValidCodeParams.fromJson(json);
}

/// @nodoc
mixin _$GetEmailValidCodeParams {
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetEmailValidCodeParamsCopyWith<GetEmailValidCodeParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetEmailValidCodeParamsCopyWith<$Res> {
  factory $GetEmailValidCodeParamsCopyWith(GetEmailValidCodeParams value,
          $Res Function(GetEmailValidCodeParams) then) =
      _$GetEmailValidCodeParamsCopyWithImpl<$Res, GetEmailValidCodeParams>;
  @useResult
  $Res call({@JsonKey(name: 'email') String email});
}

/// @nodoc
class _$GetEmailValidCodeParamsCopyWithImpl<$Res,
        $Val extends GetEmailValidCodeParams>
    implements $GetEmailValidCodeParamsCopyWith<$Res> {
  _$GetEmailValidCodeParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetEmailValidCodeParamsCopyWith<$Res>
    implements $GetEmailValidCodeParamsCopyWith<$Res> {
  factory _$$_GetEmailValidCodeParamsCopyWith(_$_GetEmailValidCodeParams value,
          $Res Function(_$_GetEmailValidCodeParams) then) =
      __$$_GetEmailValidCodeParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'email') String email});
}

/// @nodoc
class __$$_GetEmailValidCodeParamsCopyWithImpl<$Res>
    extends _$GetEmailValidCodeParamsCopyWithImpl<$Res,
        _$_GetEmailValidCodeParams>
    implements _$$_GetEmailValidCodeParamsCopyWith<$Res> {
  __$$_GetEmailValidCodeParamsCopyWithImpl(_$_GetEmailValidCodeParams _value,
      $Res Function(_$_GetEmailValidCodeParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_GetEmailValidCodeParams(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetEmailValidCodeParams implements _GetEmailValidCodeParams {
  const _$_GetEmailValidCodeParams({@JsonKey(name: 'email') this.email = ''});

  factory _$_GetEmailValidCodeParams.fromJson(Map<String, dynamic> json) =>
      _$$_GetEmailValidCodeParamsFromJson(json);

  @override
  @JsonKey(name: 'email')
  final String email;

  @override
  String toString() {
    return 'GetEmailValidCodeParams(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetEmailValidCodeParams &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetEmailValidCodeParamsCopyWith<_$_GetEmailValidCodeParams>
      get copyWith =>
          __$$_GetEmailValidCodeParamsCopyWithImpl<_$_GetEmailValidCodeParams>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetEmailValidCodeParamsToJson(
      this,
    );
  }
}

abstract class _GetEmailValidCodeParams implements GetEmailValidCodeParams {
  const factory _GetEmailValidCodeParams(
          {@JsonKey(name: 'email') final String email}) =
      _$_GetEmailValidCodeParams;

  factory _GetEmailValidCodeParams.fromJson(Map<String, dynamic> json) =
      _$_GetEmailValidCodeParams.fromJson;

  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_GetEmailValidCodeParamsCopyWith<_$_GetEmailValidCodeParams>
      get copyWith => throw _privateConstructorUsedError;
}
