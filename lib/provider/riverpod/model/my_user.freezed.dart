// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$MyUserCopyWithImpl<$Res, MyUser>;
  @useResult
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
class _$MyUserCopyWithImpl<$Res, $Val extends MyUser>
    implements $MyUserCopyWith<$Res> {
  _$MyUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? loginNumber = null,
    Object? nickName = null,
    Object? email = null,
    Object? picture = null,
    Object? phone = null,
    Object? type = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      loginNumber: null == loginNumber
          ? _value.loginNumber
          : loginNumber // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MyUserCopyWith<$Res> implements $MyUserCopyWith<$Res> {
  factory _$$_MyUserCopyWith(_$_MyUser value, $Res Function(_$_MyUser) then) =
      __$$_MyUserCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$_MyUserCopyWithImpl<$Res>
    extends _$MyUserCopyWithImpl<$Res, _$_MyUser>
    implements _$$_MyUserCopyWith<$Res> {
  __$$_MyUserCopyWithImpl(_$_MyUser _value, $Res Function(_$_MyUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? loginNumber = null,
    Object? nickName = null,
    Object? email = null,
    Object? picture = null,
    Object? phone = null,
    Object? type = null,
    Object? status = null,
  }) {
    return _then(_$_MyUser(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      loginNumber: null == loginNumber
          ? _value.loginNumber
          : loginNumber // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
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
            (identical(other.id, id) || other.id == id) &&
            (identical(other.loginNumber, loginNumber) ||
                other.loginNumber == loginNumber) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, loginNumber, nickName, email,
      picture, phone, type, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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

/// @nodoc
mixin _$A {
  int get a => throw _privateConstructorUsedError;
  String? get b => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ACopyWith<A> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ACopyWith<$Res> {
  factory $ACopyWith(A value, $Res Function(A) then) = _$ACopyWithImpl<$Res, A>;
  @useResult
  $Res call({int a, String? b});
}

/// @nodoc
class _$ACopyWithImpl<$Res, $Val extends A> implements $ACopyWith<$Res> {
  _$ACopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
    Object? b = freezed,
  }) {
    return _then(_value.copyWith(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
      b: freezed == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ACopyWith<$Res> implements $ACopyWith<$Res> {
  factory _$$_ACopyWith(_$_A value, $Res Function(_$_A) then) =
      __$$_ACopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a, String? b});
}

/// @nodoc
class __$$_ACopyWithImpl<$Res> extends _$ACopyWithImpl<$Res, _$_A>
    implements _$$_ACopyWith<$Res> {
  __$$_ACopyWithImpl(_$_A _value, $Res Function(_$_A) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
    Object? b = freezed,
  }) {
    return _then(_$_A(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
      b: freezed == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_A implements _A {
  const _$_A({required this.a, this.b});

  @override
  final int a;
  @override
  final String? b;

  @override
  String toString() {
    return 'A(a: $a, b: $b)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_A &&
            (identical(other.a, a) || other.a == a) &&
            (identical(other.b, b) || other.b == b));
  }

  @override
  int get hashCode => Object.hash(runtimeType, a, b);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ACopyWith<_$_A> get copyWith =>
      __$$_ACopyWithImpl<_$_A>(this, _$identity);
}

abstract class _A implements A {
  const factory _A({required final int a, final String? b}) = _$_A;

  @override
  int get a;
  @override
  String? get b;
  @override
  @JsonKey(ignore: true)
  _$$_ACopyWith<_$_A> get copyWith => throw _privateConstructorUsedError;
}
