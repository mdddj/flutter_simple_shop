// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginResultModel _$LoginResultModelFromJson(Map<String, dynamic> json) {
  return _LoginResultModel.fromJson(json);
}

/// @nodoc
mixin _$LoginResultModel {
  @JsonKey(name: 'token')
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  MyUser get user => throw _privateConstructorUsedError;

  /// Serializes this LoginResultModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginResultModelCopyWith<LoginResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResultModelCopyWith<$Res> {
  factory $LoginResultModelCopyWith(
          LoginResultModel value, $Res Function(LoginResultModel) then) =
      _$LoginResultModelCopyWithImpl<$Res, LoginResultModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'token') String token,
      @JsonKey(name: 'user') MyUser user});

  $MyUserCopyWith<$Res> get user;
}

/// @nodoc
class _$LoginResultModelCopyWithImpl<$Res, $Val extends LoginResultModel>
    implements $LoginResultModelCopyWith<$Res> {
  _$LoginResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as MyUser,
    ) as $Val);
  }

  /// Create a copy of LoginResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MyUserCopyWith<$Res> get user {
    return $MyUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginResultModelImplCopyWith<$Res>
    implements $LoginResultModelCopyWith<$Res> {
  factory _$$LoginResultModelImplCopyWith(_$LoginResultModelImpl value,
          $Res Function(_$LoginResultModelImpl) then) =
      __$$LoginResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'token') String token,
      @JsonKey(name: 'user') MyUser user});

  @override
  $MyUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$LoginResultModelImplCopyWithImpl<$Res>
    extends _$LoginResultModelCopyWithImpl<$Res, _$LoginResultModelImpl>
    implements _$$LoginResultModelImplCopyWith<$Res> {
  __$$LoginResultModelImplCopyWithImpl(_$LoginResultModelImpl _value,
      $Res Function(_$LoginResultModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? user = null,
  }) {
    return _then(_$LoginResultModelImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as MyUser,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginResultModelImpl implements _LoginResultModel {
  const _$LoginResultModelImpl(
      {@JsonKey(name: 'token') required this.token,
      @JsonKey(name: 'user') required this.user});

  factory _$LoginResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResultModelImplFromJson(json);

  @override
  @JsonKey(name: 'token')
  final String token;
  @override
  @JsonKey(name: 'user')
  final MyUser user;

  @override
  String toString() {
    return 'LoginResultModel(token: $token, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResultModelImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token, user);

  /// Create a copy of LoginResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResultModelImplCopyWith<_$LoginResultModelImpl> get copyWith =>
      __$$LoginResultModelImplCopyWithImpl<_$LoginResultModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResultModelImplToJson(
      this,
    );
  }
}

abstract class _LoginResultModel implements LoginResultModel {
  const factory _LoginResultModel(
          {@JsonKey(name: 'token') required final String token,
          @JsonKey(name: 'user') required final MyUser user}) =
      _$LoginResultModelImpl;

  factory _LoginResultModel.fromJson(Map<String, dynamic> json) =
      _$LoginResultModelImpl.fromJson;

  @override
  @JsonKey(name: 'token')
  String get token;
  @override
  @JsonKey(name: 'user')
  MyUser get user;

  /// Create a copy of LoginResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginResultModelImplCopyWith<_$LoginResultModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
