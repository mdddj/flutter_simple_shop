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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetEmailValidCodeParams _$GetEmailValidCodeParamsFromJson(
    Map<String, dynamic> json) {
  return _GetEmailValidCodeParams.fromJson(json);
}

/// @nodoc
mixin _$GetEmailValidCodeParams {
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;

  /// Serializes this GetEmailValidCodeParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetEmailValidCodeParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of GetEmailValidCodeParams
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$GetEmailValidCodeParamsImplCopyWith<$Res>
    implements $GetEmailValidCodeParamsCopyWith<$Res> {
  factory _$$GetEmailValidCodeParamsImplCopyWith(
          _$GetEmailValidCodeParamsImpl value,
          $Res Function(_$GetEmailValidCodeParamsImpl) then) =
      __$$GetEmailValidCodeParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'email') String email});
}

/// @nodoc
class __$$GetEmailValidCodeParamsImplCopyWithImpl<$Res>
    extends _$GetEmailValidCodeParamsCopyWithImpl<$Res,
        _$GetEmailValidCodeParamsImpl>
    implements _$$GetEmailValidCodeParamsImplCopyWith<$Res> {
  __$$GetEmailValidCodeParamsImplCopyWithImpl(
      _$GetEmailValidCodeParamsImpl _value,
      $Res Function(_$GetEmailValidCodeParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetEmailValidCodeParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$GetEmailValidCodeParamsImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetEmailValidCodeParamsImpl implements _GetEmailValidCodeParams {
  const _$GetEmailValidCodeParamsImpl(
      {@JsonKey(name: 'email') this.email = ''});

  factory _$GetEmailValidCodeParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetEmailValidCodeParamsImplFromJson(json);

  @override
  @JsonKey(name: 'email')
  final String email;

  @override
  String toString() {
    return 'GetEmailValidCodeParams(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEmailValidCodeParamsImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of GetEmailValidCodeParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEmailValidCodeParamsImplCopyWith<_$GetEmailValidCodeParamsImpl>
      get copyWith => __$$GetEmailValidCodeParamsImplCopyWithImpl<
          _$GetEmailValidCodeParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetEmailValidCodeParamsImplToJson(
      this,
    );
  }
}

abstract class _GetEmailValidCodeParams implements GetEmailValidCodeParams {
  const factory _GetEmailValidCodeParams(
          {@JsonKey(name: 'email') final String email}) =
      _$GetEmailValidCodeParamsImpl;

  factory _GetEmailValidCodeParams.fromJson(Map<String, dynamic> json) =
      _$GetEmailValidCodeParamsImpl.fromJson;

  @override
  @JsonKey(name: 'email')
  String get email;

  /// Create a copy of GetEmailValidCodeParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetEmailValidCodeParamsImplCopyWith<_$GetEmailValidCodeParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
