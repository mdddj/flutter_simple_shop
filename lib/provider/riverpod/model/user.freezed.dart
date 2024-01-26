// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$UserDetailModalCopyWithImpl<$Res, UserDetailModal>;
  @useResult
  $Res call({MyUser? user});

  $MyUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserDetailModalCopyWithImpl<$Res, $Val extends UserDetailModal>
    implements $UserDetailModalCopyWith<$Res> {
  _$UserDetailModalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as MyUser?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MyUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $MyUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserDetailModalImplCopyWith<$Res>
    implements $UserDetailModalCopyWith<$Res> {
  factory _$$UserDetailModalImplCopyWith(_$UserDetailModalImpl value,
          $Res Function(_$UserDetailModalImpl) then) =
      __$$UserDetailModalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MyUser? user});

  @override
  $MyUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$UserDetailModalImplCopyWithImpl<$Res>
    extends _$UserDetailModalCopyWithImpl<$Res, _$UserDetailModalImpl>
    implements _$$UserDetailModalImplCopyWith<$Res> {
  __$$UserDetailModalImplCopyWithImpl(
      _$UserDetailModalImpl _value, $Res Function(_$UserDetailModalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$UserDetailModalImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as MyUser?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDetailModalImpl implements _UserDetailModal {
  const _$UserDetailModalImpl({this.user});

  factory _$UserDetailModalImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDetailModalImplFromJson(json);

  @override
  final MyUser? user;

  @override
  String toString() {
    return 'UserDetailModal(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailModalImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailModalImplCopyWith<_$UserDetailModalImpl> get copyWith =>
      __$$UserDetailModalImplCopyWithImpl<_$UserDetailModalImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDetailModalImplToJson(
      this,
    );
  }
}

abstract class _UserDetailModal implements UserDetailModal {
  const factory _UserDetailModal({final MyUser? user}) = _$UserDetailModalImpl;

  factory _UserDetailModal.fromJson(Map<String, dynamic> json) =
      _$UserDetailModalImpl.fromJson;

  @override
  MyUser? get user;
  @override
  @JsonKey(ignore: true)
  _$$UserDetailModalImplCopyWith<_$UserDetailModalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
