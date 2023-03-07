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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginResultModel _$LoginResultModelFromJson(Map<String, dynamic> json) {
  return _LoginResultModel.fromJson(json);
}

/// @nodoc
mixin _$LoginResultModel {
  @JsonKey(name: 'token')
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  MyUser get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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

  @override
  @pragma('vm:prefer-inline')
  $MyUserCopyWith<$Res> get user {
    return $MyUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LoginResultModelCopyWith<$Res>
    implements $LoginResultModelCopyWith<$Res> {
  factory _$$_LoginResultModelCopyWith(
          _$_LoginResultModel value, $Res Function(_$_LoginResultModel) then) =
      __$$_LoginResultModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'token') String token,
      @JsonKey(name: 'user') MyUser user});

  @override
  $MyUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_LoginResultModelCopyWithImpl<$Res>
    extends _$LoginResultModelCopyWithImpl<$Res, _$_LoginResultModel>
    implements _$$_LoginResultModelCopyWith<$Res> {
  __$$_LoginResultModelCopyWithImpl(
      _$_LoginResultModel _value, $Res Function(_$_LoginResultModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? user = null,
  }) {
    return _then(_$_LoginResultModel(
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
class _$_LoginResultModel implements _LoginResultModel {
  const _$_LoginResultModel(
      {@JsonKey(name: 'token') required this.token,
      @JsonKey(name: 'user') required this.user});

  factory _$_LoginResultModel.fromJson(Map<String, dynamic> json) =>
      _$$_LoginResultModelFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginResultModel &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginResultModelCopyWith<_$_LoginResultModel> get copyWith =>
      __$$_LoginResultModelCopyWithImpl<_$_LoginResultModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginResultModelToJson(
      this,
    );
  }
}

abstract class _LoginResultModel implements LoginResultModel {
  const factory _LoginResultModel(
      {@JsonKey(name: 'token') required final String token,
      @JsonKey(name: 'user') required final MyUser user}) = _$_LoginResultModel;

  factory _LoginResultModel.fromJson(Map<String, dynamic> json) =
      _$_LoginResultModel.fromJson;

  @override
  @JsonKey(name: 'token')
  String get token;
  @override
  @JsonKey(name: 'user')
  MyUser get user;
  @override
  @JsonKey(ignore: true)
  _$$_LoginResultModelCopyWith<_$_LoginResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}
