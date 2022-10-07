// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDetailModal _$UserDetailModalFromJson(Map<String, dynamic> json) {
  return _UserDetailModal.fromJson(json);
}

/// @nodoc
mixin _$UserDetailModal {
  MyUser? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDetailModalCopyWith<UserDetailModal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailModalCopyWith<$Res> {
  factory $UserDetailModalCopyWith(
          UserDetailModal value, $Res Function(UserDetailModal) then) =
      _$UserDetailModalCopyWithImpl<$Res>;
  $Res call({MyUser? user});

  $MyUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserDetailModalCopyWithImpl<$Res>
    implements $UserDetailModalCopyWith<$Res> {
  _$UserDetailModalCopyWithImpl(this._value, this._then);

  final UserDetailModal _value;
  // ignore: unused_field
  final $Res Function(UserDetailModal) _then;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as MyUser?,
    ));
  }

  @override
  $MyUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $MyUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$$_UserDetailModalCopyWith<$Res>
    implements $UserDetailModalCopyWith<$Res> {
  factory _$$_UserDetailModalCopyWith(
          _$_UserDetailModal value, $Res Function(_$_UserDetailModal) then) =
      __$$_UserDetailModalCopyWithImpl<$Res>;
  @override
  $Res call({MyUser? user});

  @override
  $MyUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_UserDetailModalCopyWithImpl<$Res>
    extends _$UserDetailModalCopyWithImpl<$Res>
    implements _$$_UserDetailModalCopyWith<$Res> {
  __$$_UserDetailModalCopyWithImpl(
      _$_UserDetailModal _value, $Res Function(_$_UserDetailModal) _then)
      : super(_value, (v) => _then(v as _$_UserDetailModal));

  @override
  _$_UserDetailModal get _value => super._value as _$_UserDetailModal;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_UserDetailModal(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as MyUser?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDetailModal implements _UserDetailModal {
  const _$_UserDetailModal({this.user});

  factory _$_UserDetailModal.fromJson(Map<String, dynamic> json) =>
      _$$_UserDetailModalFromJson(json);

  @override
  final MyUser? user;

  @override
  String toString() {
    return 'UserDetailModal(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDetailModal &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_UserDetailModalCopyWith<_$_UserDetailModal> get copyWith =>
      __$$_UserDetailModalCopyWithImpl<_$_UserDetailModal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDetailModalToJson(
      this,
    );
  }
}

abstract class _UserDetailModal implements UserDetailModal {
  const factory _UserDetailModal({final MyUser? user}) = _$_UserDetailModal;

  factory _UserDetailModal.fromJson(Map<String, dynamic> json) =
      _$_UserDetailModal.fromJson;

  @override
  MyUser? get user;
  @override
  @JsonKey(ignore: true)
  _$$_UserDetailModalCopyWith<_$_UserDetailModal> get copyWith =>
      throw _privateConstructorUsedError;
}
