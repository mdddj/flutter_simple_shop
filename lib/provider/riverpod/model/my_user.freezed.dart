// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MyUser {
  int get id;
  String get loginNumber;
  String get username;
  String get email;
  String get nickName;
  String get picture;
  String get phone;
  int get type;
  int get status;
  String get loginTime;
  bool get enabled;
  bool get accountNonExpired;
  bool get accountNonLocked;
  bool get credentialsNonExpired;
  String get city;
  String get job;
  Vip get vip;
  String get intro;
  num get openAiTokens;
  bool get openAiFlag;
  String get relationId;
  Enterprise? get enterprise;

  /// Create a copy of MyUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MyUserCopyWith<MyUser> get copyWith =>
      _$MyUserCopyWithImpl<MyUser>(this as MyUser, _$identity);

  /// Serializes this MyUser to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MyUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.loginNumber, loginNumber) ||
                other.loginNumber == loginNumber) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.loginTime, loginTime) ||
                other.loginTime == loginTime) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.accountNonExpired, accountNonExpired) ||
                other.accountNonExpired == accountNonExpired) &&
            (identical(other.accountNonLocked, accountNonLocked) ||
                other.accountNonLocked == accountNonLocked) &&
            (identical(other.credentialsNonExpired, credentialsNonExpired) ||
                other.credentialsNonExpired == credentialsNonExpired) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.job, job) || other.job == job) &&
            (identical(other.vip, vip) || other.vip == vip) &&
            (identical(other.intro, intro) || other.intro == intro) &&
            (identical(other.openAiTokens, openAiTokens) ||
                other.openAiTokens == openAiTokens) &&
            (identical(other.openAiFlag, openAiFlag) ||
                other.openAiFlag == openAiFlag) &&
            (identical(other.relationId, relationId) ||
                other.relationId == relationId) &&
            (identical(other.enterprise, enterprise) ||
                other.enterprise == enterprise));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        loginNumber,
        username,
        email,
        nickName,
        picture,
        phone,
        type,
        status,
        loginTime,
        enabled,
        accountNonExpired,
        accountNonLocked,
        credentialsNonExpired,
        city,
        job,
        vip,
        intro,
        openAiTokens,
        openAiFlag,
        relationId,
        enterprise
      ]);

  @override
  String toString() {
    return 'MyUser(id: $id, loginNumber: $loginNumber, username: $username, email: $email, nickName: $nickName, picture: $picture, phone: $phone, type: $type, status: $status, loginTime: $loginTime, enabled: $enabled, accountNonExpired: $accountNonExpired, accountNonLocked: $accountNonLocked, credentialsNonExpired: $credentialsNonExpired, city: $city, job: $job, vip: $vip, intro: $intro, openAiTokens: $openAiTokens, openAiFlag: $openAiFlag, relationId: $relationId, enterprise: $enterprise)';
  }
}

/// @nodoc
abstract mixin class $MyUserCopyWith<$Res> {
  factory $MyUserCopyWith(MyUser value, $Res Function(MyUser) _then) =
      _$MyUserCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String loginNumber,
      String username,
      String email,
      String nickName,
      String picture,
      String phone,
      int type,
      int status,
      String loginTime,
      bool enabled,
      bool accountNonExpired,
      bool accountNonLocked,
      bool credentialsNonExpired,
      String city,
      String job,
      Vip vip,
      String intro,
      num openAiTokens,
      bool openAiFlag,
      String relationId,
      Enterprise? enterprise});

  $EnterpriseCopyWith<$Res>? get enterprise;
}

/// @nodoc
class _$MyUserCopyWithImpl<$Res> implements $MyUserCopyWith<$Res> {
  _$MyUserCopyWithImpl(this._self, this._then);

  final MyUser _self;
  final $Res Function(MyUser) _then;

  /// Create a copy of MyUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? loginNumber = null,
    Object? username = null,
    Object? email = null,
    Object? nickName = null,
    Object? picture = null,
    Object? phone = null,
    Object? type = null,
    Object? status = null,
    Object? loginTime = null,
    Object? enabled = null,
    Object? accountNonExpired = null,
    Object? accountNonLocked = null,
    Object? credentialsNonExpired = null,
    Object? city = null,
    Object? job = null,
    Object? vip = null,
    Object? intro = null,
    Object? openAiTokens = null,
    Object? openAiFlag = null,
    Object? relationId = null,
    Object? enterprise = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      loginNumber: null == loginNumber
          ? _self.loginNumber
          : loginNumber // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: null == nickName
          ? _self.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _self.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      loginTime: null == loginTime
          ? _self.loginTime
          : loginTime // ignore: cast_nullable_to_non_nullable
              as String,
      enabled: null == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      accountNonExpired: null == accountNonExpired
          ? _self.accountNonExpired
          : accountNonExpired // ignore: cast_nullable_to_non_nullable
              as bool,
      accountNonLocked: null == accountNonLocked
          ? _self.accountNonLocked
          : accountNonLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      credentialsNonExpired: null == credentialsNonExpired
          ? _self.credentialsNonExpired
          : credentialsNonExpired // ignore: cast_nullable_to_non_nullable
              as bool,
      city: null == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      job: null == job
          ? _self.job
          : job // ignore: cast_nullable_to_non_nullable
              as String,
      vip: null == vip
          ? _self.vip
          : vip // ignore: cast_nullable_to_non_nullable
              as Vip,
      intro: null == intro
          ? _self.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String,
      openAiTokens: null == openAiTokens
          ? _self.openAiTokens
          : openAiTokens // ignore: cast_nullable_to_non_nullable
              as num,
      openAiFlag: null == openAiFlag
          ? _self.openAiFlag
          : openAiFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      relationId: null == relationId
          ? _self.relationId
          : relationId // ignore: cast_nullable_to_non_nullable
              as String,
      enterprise: freezed == enterprise
          ? _self.enterprise
          : enterprise // ignore: cast_nullable_to_non_nullable
              as Enterprise?,
    ));
  }

  /// Create a copy of MyUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EnterpriseCopyWith<$Res>? get enterprise {
    if (_self.enterprise == null) {
      return null;
    }

    return $EnterpriseCopyWith<$Res>(_self.enterprise!, (value) {
      return _then(_self.copyWith(enterprise: value));
    });
  }
}

/// Adds pattern-matching-related methods to [MyUser].
extension MyUserPatterns on MyUser {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MyUser value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MyUser() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MyUser value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MyUser():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_MyUser value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MyUser() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int id,
            String loginNumber,
            String username,
            String email,
            String nickName,
            String picture,
            String phone,
            int type,
            int status,
            String loginTime,
            bool enabled,
            bool accountNonExpired,
            bool accountNonLocked,
            bool credentialsNonExpired,
            String city,
            String job,
            Vip vip,
            String intro,
            num openAiTokens,
            bool openAiFlag,
            String relationId,
            Enterprise? enterprise)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MyUser() when $default != null:
        return $default(
            _that.id,
            _that.loginNumber,
            _that.username,
            _that.email,
            _that.nickName,
            _that.picture,
            _that.phone,
            _that.type,
            _that.status,
            _that.loginTime,
            _that.enabled,
            _that.accountNonExpired,
            _that.accountNonLocked,
            _that.credentialsNonExpired,
            _that.city,
            _that.job,
            _that.vip,
            _that.intro,
            _that.openAiTokens,
            _that.openAiFlag,
            _that.relationId,
            _that.enterprise);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int id,
            String loginNumber,
            String username,
            String email,
            String nickName,
            String picture,
            String phone,
            int type,
            int status,
            String loginTime,
            bool enabled,
            bool accountNonExpired,
            bool accountNonLocked,
            bool credentialsNonExpired,
            String city,
            String job,
            Vip vip,
            String intro,
            num openAiTokens,
            bool openAiFlag,
            String relationId,
            Enterprise? enterprise)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MyUser():
        return $default(
            _that.id,
            _that.loginNumber,
            _that.username,
            _that.email,
            _that.nickName,
            _that.picture,
            _that.phone,
            _that.type,
            _that.status,
            _that.loginTime,
            _that.enabled,
            _that.accountNonExpired,
            _that.accountNonLocked,
            _that.credentialsNonExpired,
            _that.city,
            _that.job,
            _that.vip,
            _that.intro,
            _that.openAiTokens,
            _that.openAiFlag,
            _that.relationId,
            _that.enterprise);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int id,
            String loginNumber,
            String username,
            String email,
            String nickName,
            String picture,
            String phone,
            int type,
            int status,
            String loginTime,
            bool enabled,
            bool accountNonExpired,
            bool accountNonLocked,
            bool credentialsNonExpired,
            String city,
            String job,
            Vip vip,
            String intro,
            num openAiTokens,
            bool openAiFlag,
            String relationId,
            Enterprise? enterprise)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MyUser() when $default != null:
        return $default(
            _that.id,
            _that.loginNumber,
            _that.username,
            _that.email,
            _that.nickName,
            _that.picture,
            _that.phone,
            _that.type,
            _that.status,
            _that.loginTime,
            _that.enabled,
            _that.accountNonExpired,
            _that.accountNonLocked,
            _that.credentialsNonExpired,
            _that.city,
            _that.job,
            _that.vip,
            _that.intro,
            _that.openAiTokens,
            _that.openAiFlag,
            _that.relationId,
            _that.enterprise);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MyUser implements MyUser {
  const _MyUser(
      {required this.id,
      this.loginNumber = '',
      this.username = '',
      this.email = '',
      this.nickName = '未设置昵称',
      this.picture = '',
      this.phone = '',
      this.type = -1,
      this.status = -1,
      this.loginTime = '',
      this.enabled = false,
      this.accountNonExpired = false,
      this.accountNonLocked = false,
      this.credentialsNonExpired = false,
      this.city = "",
      this.job = "",
      this.vip = Vip.none,
      this.intro = '',
      this.openAiTokens = 0,
      this.openAiFlag = false,
      this.relationId = '',
      this.enterprise});
  factory _MyUser.fromJson(Map<String, dynamic> json) => _$MyUserFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String loginNumber;
  @override
  @JsonKey()
  final String username;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String nickName;
  @override
  @JsonKey()
  final String picture;
  @override
  @JsonKey()
  final String phone;
  @override
  @JsonKey()
  final int type;
  @override
  @JsonKey()
  final int status;
  @override
  @JsonKey()
  final String loginTime;
  @override
  @JsonKey()
  final bool enabled;
  @override
  @JsonKey()
  final bool accountNonExpired;
  @override
  @JsonKey()
  final bool accountNonLocked;
  @override
  @JsonKey()
  final bool credentialsNonExpired;
  @override
  @JsonKey()
  final String city;
  @override
  @JsonKey()
  final String job;
  @override
  @JsonKey()
  final Vip vip;
  @override
  @JsonKey()
  final String intro;
  @override
  @JsonKey()
  final num openAiTokens;
  @override
  @JsonKey()
  final bool openAiFlag;
  @override
  @JsonKey()
  final String relationId;
  @override
  final Enterprise? enterprise;

  /// Create a copy of MyUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MyUserCopyWith<_MyUser> get copyWith =>
      __$MyUserCopyWithImpl<_MyUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MyUserToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MyUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.loginNumber, loginNumber) ||
                other.loginNumber == loginNumber) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.loginTime, loginTime) ||
                other.loginTime == loginTime) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.accountNonExpired, accountNonExpired) ||
                other.accountNonExpired == accountNonExpired) &&
            (identical(other.accountNonLocked, accountNonLocked) ||
                other.accountNonLocked == accountNonLocked) &&
            (identical(other.credentialsNonExpired, credentialsNonExpired) ||
                other.credentialsNonExpired == credentialsNonExpired) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.job, job) || other.job == job) &&
            (identical(other.vip, vip) || other.vip == vip) &&
            (identical(other.intro, intro) || other.intro == intro) &&
            (identical(other.openAiTokens, openAiTokens) ||
                other.openAiTokens == openAiTokens) &&
            (identical(other.openAiFlag, openAiFlag) ||
                other.openAiFlag == openAiFlag) &&
            (identical(other.relationId, relationId) ||
                other.relationId == relationId) &&
            (identical(other.enterprise, enterprise) ||
                other.enterprise == enterprise));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        loginNumber,
        username,
        email,
        nickName,
        picture,
        phone,
        type,
        status,
        loginTime,
        enabled,
        accountNonExpired,
        accountNonLocked,
        credentialsNonExpired,
        city,
        job,
        vip,
        intro,
        openAiTokens,
        openAiFlag,
        relationId,
        enterprise
      ]);

  @override
  String toString() {
    return 'MyUser(id: $id, loginNumber: $loginNumber, username: $username, email: $email, nickName: $nickName, picture: $picture, phone: $phone, type: $type, status: $status, loginTime: $loginTime, enabled: $enabled, accountNonExpired: $accountNonExpired, accountNonLocked: $accountNonLocked, credentialsNonExpired: $credentialsNonExpired, city: $city, job: $job, vip: $vip, intro: $intro, openAiTokens: $openAiTokens, openAiFlag: $openAiFlag, relationId: $relationId, enterprise: $enterprise)';
  }
}

/// @nodoc
abstract mixin class _$MyUserCopyWith<$Res> implements $MyUserCopyWith<$Res> {
  factory _$MyUserCopyWith(_MyUser value, $Res Function(_MyUser) _then) =
      __$MyUserCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String loginNumber,
      String username,
      String email,
      String nickName,
      String picture,
      String phone,
      int type,
      int status,
      String loginTime,
      bool enabled,
      bool accountNonExpired,
      bool accountNonLocked,
      bool credentialsNonExpired,
      String city,
      String job,
      Vip vip,
      String intro,
      num openAiTokens,
      bool openAiFlag,
      String relationId,
      Enterprise? enterprise});

  @override
  $EnterpriseCopyWith<$Res>? get enterprise;
}

/// @nodoc
class __$MyUserCopyWithImpl<$Res> implements _$MyUserCopyWith<$Res> {
  __$MyUserCopyWithImpl(this._self, this._then);

  final _MyUser _self;
  final $Res Function(_MyUser) _then;

  /// Create a copy of MyUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? loginNumber = null,
    Object? username = null,
    Object? email = null,
    Object? nickName = null,
    Object? picture = null,
    Object? phone = null,
    Object? type = null,
    Object? status = null,
    Object? loginTime = null,
    Object? enabled = null,
    Object? accountNonExpired = null,
    Object? accountNonLocked = null,
    Object? credentialsNonExpired = null,
    Object? city = null,
    Object? job = null,
    Object? vip = null,
    Object? intro = null,
    Object? openAiTokens = null,
    Object? openAiFlag = null,
    Object? relationId = null,
    Object? enterprise = freezed,
  }) {
    return _then(_MyUser(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      loginNumber: null == loginNumber
          ? _self.loginNumber
          : loginNumber // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: null == nickName
          ? _self.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _self.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      loginTime: null == loginTime
          ? _self.loginTime
          : loginTime // ignore: cast_nullable_to_non_nullable
              as String,
      enabled: null == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      accountNonExpired: null == accountNonExpired
          ? _self.accountNonExpired
          : accountNonExpired // ignore: cast_nullable_to_non_nullable
              as bool,
      accountNonLocked: null == accountNonLocked
          ? _self.accountNonLocked
          : accountNonLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      credentialsNonExpired: null == credentialsNonExpired
          ? _self.credentialsNonExpired
          : credentialsNonExpired // ignore: cast_nullable_to_non_nullable
              as bool,
      city: null == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      job: null == job
          ? _self.job
          : job // ignore: cast_nullable_to_non_nullable
              as String,
      vip: null == vip
          ? _self.vip
          : vip // ignore: cast_nullable_to_non_nullable
              as Vip,
      intro: null == intro
          ? _self.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String,
      openAiTokens: null == openAiTokens
          ? _self.openAiTokens
          : openAiTokens // ignore: cast_nullable_to_non_nullable
              as num,
      openAiFlag: null == openAiFlag
          ? _self.openAiFlag
          : openAiFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      relationId: null == relationId
          ? _self.relationId
          : relationId // ignore: cast_nullable_to_non_nullable
              as String,
      enterprise: freezed == enterprise
          ? _self.enterprise
          : enterprise // ignore: cast_nullable_to_non_nullable
              as Enterprise?,
    ));
  }

  /// Create a copy of MyUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EnterpriseCopyWith<$Res>? get enterprise {
    if (_self.enterprise == null) {
      return null;
    }

    return $EnterpriseCopyWith<$Res>(_self.enterprise!, (value) {
      return _then(_self.copyWith(enterprise: value));
    });
  }
}

/// @nodoc
mixin _$Enterprise {
  @JsonKey(name: 'enable')
  bool get enable;
  @JsonKey(name: 'id')
  int get id;
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(name: 'phone')
  String get phone;
  @JsonKey(name: 'profile')
  String get profile;
  @JsonKey(name: 'qq')
  String get qq;
  @JsonKey(name: 'wechat')
  String get wechat;

  /// Create a copy of Enterprise
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EnterpriseCopyWith<Enterprise> get copyWith =>
      _$EnterpriseCopyWithImpl<Enterprise>(this as Enterprise, _$identity);

  /// Serializes this Enterprise to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Enterprise &&
            (identical(other.enable, enable) || other.enable == enable) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.qq, qq) || other.qq == qq) &&
            (identical(other.wechat, wechat) || other.wechat == wechat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, enable, id, name, phone, profile, qq, wechat);

  @override
  String toString() {
    return 'Enterprise(enable: $enable, id: $id, name: $name, phone: $phone, profile: $profile, qq: $qq, wechat: $wechat)';
  }
}

/// @nodoc
abstract mixin class $EnterpriseCopyWith<$Res> {
  factory $EnterpriseCopyWith(
          Enterprise value, $Res Function(Enterprise) _then) =
      _$EnterpriseCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'enable') bool enable,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'phone') String phone,
      @JsonKey(name: 'profile') String profile,
      @JsonKey(name: 'qq') String qq,
      @JsonKey(name: 'wechat') String wechat});
}

/// @nodoc
class _$EnterpriseCopyWithImpl<$Res> implements $EnterpriseCopyWith<$Res> {
  _$EnterpriseCopyWithImpl(this._self, this._then);

  final Enterprise _self;
  final $Res Function(Enterprise) _then;

  /// Create a copy of Enterprise
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enable = null,
    Object? id = null,
    Object? name = null,
    Object? phone = null,
    Object? profile = null,
    Object? qq = null,
    Object? wechat = null,
  }) {
    return _then(_self.copyWith(
      enable: null == enable
          ? _self.enable
          : enable // ignore: cast_nullable_to_non_nullable
              as bool,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      profile: null == profile
          ? _self.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String,
      qq: null == qq
          ? _self.qq
          : qq // ignore: cast_nullable_to_non_nullable
              as String,
      wechat: null == wechat
          ? _self.wechat
          : wechat // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [Enterprise].
extension EnterprisePatterns on Enterprise {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Enterprise value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Enterprise() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Enterprise value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Enterprise():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Enterprise value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Enterprise() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'enable') bool enable,
            @JsonKey(name: 'id') int id,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'phone') String phone,
            @JsonKey(name: 'profile') String profile,
            @JsonKey(name: 'qq') String qq,
            @JsonKey(name: 'wechat') String wechat)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Enterprise() when $default != null:
        return $default(_that.enable, _that.id, _that.name, _that.phone,
            _that.profile, _that.qq, _that.wechat);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'enable') bool enable,
            @JsonKey(name: 'id') int id,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'phone') String phone,
            @JsonKey(name: 'profile') String profile,
            @JsonKey(name: 'qq') String qq,
            @JsonKey(name: 'wechat') String wechat)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Enterprise():
        return $default(_that.enable, _that.id, _that.name, _that.phone,
            _that.profile, _that.qq, _that.wechat);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'enable') bool enable,
            @JsonKey(name: 'id') int id,
            @JsonKey(name: 'name') String name,
            @JsonKey(name: 'phone') String phone,
            @JsonKey(name: 'profile') String profile,
            @JsonKey(name: 'qq') String qq,
            @JsonKey(name: 'wechat') String wechat)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Enterprise() when $default != null:
        return $default(_that.enable, _that.id, _that.name, _that.phone,
            _that.profile, _that.qq, _that.wechat);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Enterprise extends Enterprise {
  const _Enterprise(
      {@JsonKey(name: 'enable') this.enable = false,
      @JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'name') this.name = '',
      @JsonKey(name: 'phone') this.phone = '',
      @JsonKey(name: 'profile') this.profile = '',
      @JsonKey(name: 'qq') this.qq = '',
      @JsonKey(name: 'wechat') this.wechat = ''})
      : super._();
  factory _Enterprise.fromJson(Map<String, dynamic> json) =>
      _$EnterpriseFromJson(json);

  @override
  @JsonKey(name: 'enable')
  final bool enable;
  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'phone')
  final String phone;
  @override
  @JsonKey(name: 'profile')
  final String profile;
  @override
  @JsonKey(name: 'qq')
  final String qq;
  @override
  @JsonKey(name: 'wechat')
  final String wechat;

  /// Create a copy of Enterprise
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EnterpriseCopyWith<_Enterprise> get copyWith =>
      __$EnterpriseCopyWithImpl<_Enterprise>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EnterpriseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Enterprise &&
            (identical(other.enable, enable) || other.enable == enable) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.qq, qq) || other.qq == qq) &&
            (identical(other.wechat, wechat) || other.wechat == wechat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, enable, id, name, phone, profile, qq, wechat);

  @override
  String toString() {
    return 'Enterprise(enable: $enable, id: $id, name: $name, phone: $phone, profile: $profile, qq: $qq, wechat: $wechat)';
  }
}

/// @nodoc
abstract mixin class _$EnterpriseCopyWith<$Res>
    implements $EnterpriseCopyWith<$Res> {
  factory _$EnterpriseCopyWith(
          _Enterprise value, $Res Function(_Enterprise) _then) =
      __$EnterpriseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'enable') bool enable,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'phone') String phone,
      @JsonKey(name: 'profile') String profile,
      @JsonKey(name: 'qq') String qq,
      @JsonKey(name: 'wechat') String wechat});
}

/// @nodoc
class __$EnterpriseCopyWithImpl<$Res> implements _$EnterpriseCopyWith<$Res> {
  __$EnterpriseCopyWithImpl(this._self, this._then);

  final _Enterprise _self;
  final $Res Function(_Enterprise) _then;

  /// Create a copy of Enterprise
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? enable = null,
    Object? id = null,
    Object? name = null,
    Object? phone = null,
    Object? profile = null,
    Object? qq = null,
    Object? wechat = null,
  }) {
    return _then(_Enterprise(
      enable: null == enable
          ? _self.enable
          : enable // ignore: cast_nullable_to_non_nullable
              as bool,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      profile: null == profile
          ? _self.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String,
      qq: null == qq
          ? _self.qq
          : qq // ignore: cast_nullable_to_non_nullable
              as String,
      wechat: null == wechat
          ? _self.wechat
          : wechat // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
