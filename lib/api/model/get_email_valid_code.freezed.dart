// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
