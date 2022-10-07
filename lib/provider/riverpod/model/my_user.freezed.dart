// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyUser _$MyUserFromJson(Map<String, dynamic> json) {
  return _MyUser.fromJson(json);
}

/// @nodoc
mixin _$MyUser {
  int get id => throw _privateConstructorUsedError;
  String get loginNumber => throw _privateConstructorUsedError;
  String get nickName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyUserCopyWith<MyUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyUserCopyWith<$Res> {
  factory $MyUserCopyWith(MyUser value, $Res Function(MyUser) then) =
      _$MyUserCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String loginNumber,
      String nickName,
      String email,
      String picture,
      String phone,
      int type,
      int status});
}

/// @nodoc
class _$MyUserCopyWithImpl<$Res> implements $MyUserCopyWith<$Res> {
  _$MyUserCopyWithImpl(this._value, this._then);

  final MyUser _value;
  // ignore: unused_field
  final $Res Function(MyUser) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? loginNumber = freezed,
    Object? nickName = freezed,
    Object? email = freezed,
    Object? picture = freezed,
    Object? phone = freezed,
    Object? type = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      loginNumber: loginNumber == freezed
          ? _value.loginNumber
          : loginNumber // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: nickName == freezed
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_MyUserCopyWith<$Res> implements $MyUserCopyWith<$Res> {
  factory _$$_MyUserCopyWith(_$_MyUser value, $Res Function(_$_MyUser) then) =
      __$$_MyUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String loginNumber,
      String nickName,
      String email,
      String picture,
      String phone,
      int type,
      int status});
}

/// @nodoc
class __$$_MyUserCopyWithImpl<$Res> extends _$MyUserCopyWithImpl<$Res>
    implements _$$_MyUserCopyWith<$Res> {
  __$$_MyUserCopyWithImpl(_$_MyUser _value, $Res Function(_$_MyUser) _then)
      : super(_value, (v) => _then(v as _$_MyUser));

  @override
  _$_MyUser get _value => super._value as _$_MyUser;

  @override
  $Res call({
    Object? id = freezed,
    Object? loginNumber = freezed,
    Object? nickName = freezed,
    Object? email = freezed,
    Object? picture = freezed,
    Object? phone = freezed,
    Object? type = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_MyUser(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      loginNumber: loginNumber == freezed
          ? _value.loginNumber
          : loginNumber // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: nickName == freezed
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyUser implements _MyUser {
  const _$_MyUser(
      {required this.id,
      required this.loginNumber,
      required this.nickName,
      required this.email,
      required this.picture,
      required this.phone,
      required this.type,
      required this.status});

  factory _$_MyUser.fromJson(Map<String, dynamic> json) =>
      _$$_MyUserFromJson(json);

  @override
  final int id;
  @override
  final String loginNumber;
  @override
  final String nickName;
  @override
  final String email;
  @override
  final String picture;
  @override
  final String phone;
  @override
  final int type;
  @override
  final int status;

  @override
  String toString() {
    return 'MyUser(id: $id, loginNumber: $loginNumber, nickName: $nickName, email: $email, picture: $picture, phone: $phone, type: $type, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyUser &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.loginNumber, loginNumber) &&
            const DeepCollectionEquality().equals(other.nickName, nickName) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.picture, picture) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(loginNumber),
      const DeepCollectionEquality().hash(nickName),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(picture),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_MyUserCopyWith<_$_MyUser> get copyWith =>
      __$$_MyUserCopyWithImpl<_$_MyUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyUserToJson(
      this,
    );
  }
}

abstract class _MyUser implements MyUser {
  const factory _MyUser(
      {required final int id,
      required final String loginNumber,
      required final String nickName,
      required final String email,
      required final String picture,
      required final String phone,
      required final int type,
      required final int status}) = _$_MyUser;

  factory _MyUser.fromJson(Map<String, dynamic> json) = _$_MyUser.fromJson;

  @override
  int get id;
  @override
  String get loginNumber;
  @override
  String get nickName;
  @override
  String get email;
  @override
  String get picture;
  @override
  String get phone;
  @override
  int get type;
  @override
  int get status;
  @override
  @JsonKey(ignore: true)
  _$$_MyUserCopyWith<_$_MyUser> get copyWith =>
      throw _privateConstructorUsedError;
}
