// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserDetailModal {
  MyUser? get user;

  /// Create a copy of UserDetailModal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserDetailModalCopyWith<UserDetailModal> get copyWith =>
      _$UserDetailModalCopyWithImpl<UserDetailModal>(
          this as UserDetailModal, _$identity);

  /// Serializes this UserDetailModal to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserDetailModal &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  @override
  String toString() {
    return 'UserDetailModal(user: $user)';
  }
}

/// @nodoc
abstract mixin class $UserDetailModalCopyWith<$Res> {
  factory $UserDetailModalCopyWith(
          UserDetailModal value, $Res Function(UserDetailModal) _then) =
      _$UserDetailModalCopyWithImpl;
  @useResult
  $Res call({MyUser? user});

  $MyUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserDetailModalCopyWithImpl<$Res>
    implements $UserDetailModalCopyWith<$Res> {
  _$UserDetailModalCopyWithImpl(this._self, this._then);

  final UserDetailModal _self;
  final $Res Function(UserDetailModal) _then;

  /// Create a copy of UserDetailModal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_self.copyWith(
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as MyUser?,
    ));
  }

  /// Create a copy of UserDetailModal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MyUserCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $MyUserCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _UserDetailModal implements UserDetailModal {
  const _UserDetailModal({this.user});
  factory _UserDetailModal.fromJson(Map<String, dynamic> json) =>
      _$UserDetailModalFromJson(json);

  @override
  final MyUser? user;

  /// Create a copy of UserDetailModal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserDetailModalCopyWith<_UserDetailModal> get copyWith =>
      __$UserDetailModalCopyWithImpl<_UserDetailModal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserDetailModalToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserDetailModal &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  @override
  String toString() {
    return 'UserDetailModal(user: $user)';
  }
}

/// @nodoc
abstract mixin class _$UserDetailModalCopyWith<$Res>
    implements $UserDetailModalCopyWith<$Res> {
  factory _$UserDetailModalCopyWith(
          _UserDetailModal value, $Res Function(_UserDetailModal) _then) =
      __$UserDetailModalCopyWithImpl;
  @override
  @useResult
  $Res call({MyUser? user});

  @override
  $MyUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$UserDetailModalCopyWithImpl<$Res>
    implements _$UserDetailModalCopyWith<$Res> {
  __$UserDetailModalCopyWithImpl(this._self, this._then);

  final _UserDetailModal _self;
  final $Res Function(_UserDetailModal) _then;

  /// Create a copy of UserDetailModal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_UserDetailModal(
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as MyUser?,
    ));
  }

  /// Create a copy of UserDetailModal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MyUserCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $MyUserCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

// dart format on
