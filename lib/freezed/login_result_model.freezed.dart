// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginResultModel {
  @JsonKey(name: 'token')
  String get token;
  @JsonKey(name: 'user')
  MyUser get user;

  /// Create a copy of LoginResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginResultModelCopyWith<LoginResultModel> get copyWith =>
      _$LoginResultModelCopyWithImpl<LoginResultModel>(
          this as LoginResultModel, _$identity);

  /// Serializes this LoginResultModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginResultModel &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token, user);

  @override
  String toString() {
    return 'LoginResultModel(token: $token, user: $user)';
  }
}

/// @nodoc
abstract mixin class $LoginResultModelCopyWith<$Res> {
  factory $LoginResultModelCopyWith(
          LoginResultModel value, $Res Function(LoginResultModel) _then) =
      _$LoginResultModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'token') String token,
      @JsonKey(name: 'user') MyUser user});

  $MyUserCopyWith<$Res> get user;
}

/// @nodoc
class _$LoginResultModelCopyWithImpl<$Res>
    implements $LoginResultModelCopyWith<$Res> {
  _$LoginResultModelCopyWithImpl(this._self, this._then);

  final LoginResultModel _self;
  final $Res Function(LoginResultModel) _then;

  /// Create a copy of LoginResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? user = null,
  }) {
    return _then(_self.copyWith(
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as MyUser,
    ));
  }

  /// Create a copy of LoginResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MyUserCopyWith<$Res> get user {
    return $MyUserCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _LoginResultModel implements LoginResultModel {
  const _LoginResultModel(
      {@JsonKey(name: 'token') required this.token,
      @JsonKey(name: 'user') required this.user});
  factory _LoginResultModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResultModelFromJson(json);

  @override
  @JsonKey(name: 'token')
  final String token;
  @override
  @JsonKey(name: 'user')
  final MyUser user;

  /// Create a copy of LoginResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoginResultModelCopyWith<_LoginResultModel> get copyWith =>
      __$LoginResultModelCopyWithImpl<_LoginResultModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LoginResultModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginResultModel &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token, user);

  @override
  String toString() {
    return 'LoginResultModel(token: $token, user: $user)';
  }
}

/// @nodoc
abstract mixin class _$LoginResultModelCopyWith<$Res>
    implements $LoginResultModelCopyWith<$Res> {
  factory _$LoginResultModelCopyWith(
          _LoginResultModel value, $Res Function(_LoginResultModel) _then) =
      __$LoginResultModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'token') String token,
      @JsonKey(name: 'user') MyUser user});

  @override
  $MyUserCopyWith<$Res> get user;
}

/// @nodoc
class __$LoginResultModelCopyWithImpl<$Res>
    implements _$LoginResultModelCopyWith<$Res> {
  __$LoginResultModelCopyWithImpl(this._self, this._then);

  final _LoginResultModel _self;
  final $Res Function(_LoginResultModel) _then;

  /// Create a copy of LoginResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? token = null,
    Object? user = null,
  }) {
    return _then(_LoginResultModel(
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as MyUser,
    ));
  }

  /// Create a copy of LoginResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MyUserCopyWith<$Res> get user {
    return $MyUserCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

// dart format on
