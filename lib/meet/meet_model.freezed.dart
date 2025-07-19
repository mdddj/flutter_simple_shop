// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meet_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MeetModel {
  String get aboutDiandian;
  int get age;
  int get id;
  String get location;
  String get mianjiInfo;
  String get name;
  String get soulCodeImage;
  String get soulName;
  String get toLocation;
  String get createDate;
  int get state;
  MyUser get user;
  IList<FileInfo> get images;

  /// Create a copy of MeetModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MeetModelCopyWith<MeetModel> get copyWith =>
      _$MeetModelCopyWithImpl<MeetModel>(this as MeetModel, _$identity);

  /// Serializes this MeetModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MeetModel &&
            (identical(other.aboutDiandian, aboutDiandian) ||
                other.aboutDiandian == aboutDiandian) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.mianjiInfo, mianjiInfo) ||
                other.mianjiInfo == mianjiInfo) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.soulCodeImage, soulCodeImage) ||
                other.soulCodeImage == soulCodeImage) &&
            (identical(other.soulName, soulName) ||
                other.soulName == soulName) &&
            (identical(other.toLocation, toLocation) ||
                other.toLocation == toLocation) &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other.images, images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      aboutDiandian,
      age,
      id,
      location,
      mianjiInfo,
      name,
      soulCodeImage,
      soulName,
      toLocation,
      createDate,
      state,
      user,
      const DeepCollectionEquality().hash(images));

  @override
  String toString() {
    return 'MeetModel(aboutDiandian: $aboutDiandian, age: $age, id: $id, location: $location, mianjiInfo: $mianjiInfo, name: $name, soulCodeImage: $soulCodeImage, soulName: $soulName, toLocation: $toLocation, createDate: $createDate, state: $state, user: $user, images: $images)';
  }
}

/// @nodoc
abstract mixin class $MeetModelCopyWith<$Res> {
  factory $MeetModelCopyWith(MeetModel value, $Res Function(MeetModel) _then) =
      _$MeetModelCopyWithImpl;
  @useResult
  $Res call(
      {String aboutDiandian,
      int age,
      int id,
      String location,
      String mianjiInfo,
      String name,
      String soulCodeImage,
      String soulName,
      String toLocation,
      String createDate,
      int state,
      MyUser user,
      IList<FileInfo> images});

  $MyUserCopyWith<$Res> get user;
}

/// @nodoc
class _$MeetModelCopyWithImpl<$Res> implements $MeetModelCopyWith<$Res> {
  _$MeetModelCopyWithImpl(this._self, this._then);

  final MeetModel _self;
  final $Res Function(MeetModel) _then;

  /// Create a copy of MeetModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aboutDiandian = null,
    Object? age = null,
    Object? id = null,
    Object? location = null,
    Object? mianjiInfo = null,
    Object? name = null,
    Object? soulCodeImage = null,
    Object? soulName = null,
    Object? toLocation = null,
    Object? createDate = null,
    Object? state = null,
    Object? user = null,
    Object? images = null,
  }) {
    return _then(_self.copyWith(
      aboutDiandian: null == aboutDiandian
          ? _self.aboutDiandian
          : aboutDiandian // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      location: null == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      mianjiInfo: null == mianjiInfo
          ? _self.mianjiInfo
          : mianjiInfo // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      soulCodeImage: null == soulCodeImage
          ? _self.soulCodeImage
          : soulCodeImage // ignore: cast_nullable_to_non_nullable
              as String,
      soulName: null == soulName
          ? _self.soulName
          : soulName // ignore: cast_nullable_to_non_nullable
              as String,
      toLocation: null == toLocation
          ? _self.toLocation
          : toLocation // ignore: cast_nullable_to_non_nullable
              as String,
      createDate: null == createDate
          ? _self.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as MyUser,
      images: null == images
          ? _self.images
          : images // ignore: cast_nullable_to_non_nullable
              as IList<FileInfo>,
    ));
  }

  /// Create a copy of MeetModel
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
class _MeetModel implements MeetModel {
  const _MeetModel(
      {this.aboutDiandian = '',
      this.age = 0,
      required this.id,
      this.location = '',
      this.mianjiInfo = '',
      this.name = '',
      this.soulCodeImage = '',
      this.soulName = '',
      this.toLocation = '',
      this.createDate = '',
      this.state = 0,
      required this.user,
      this.images = const IListConst([])});
  factory _MeetModel.fromJson(Map<String, dynamic> json) =>
      _$MeetModelFromJson(json);

  @override
  @JsonKey()
  final String aboutDiandian;
  @override
  @JsonKey()
  final int age;
  @override
  final int id;
  @override
  @JsonKey()
  final String location;
  @override
  @JsonKey()
  final String mianjiInfo;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String soulCodeImage;
  @override
  @JsonKey()
  final String soulName;
  @override
  @JsonKey()
  final String toLocation;
  @override
  @JsonKey()
  final String createDate;
  @override
  @JsonKey()
  final int state;
  @override
  final MyUser user;
  @override
  @JsonKey()
  final IList<FileInfo> images;

  /// Create a copy of MeetModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MeetModelCopyWith<_MeetModel> get copyWith =>
      __$MeetModelCopyWithImpl<_MeetModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MeetModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MeetModel &&
            (identical(other.aboutDiandian, aboutDiandian) ||
                other.aboutDiandian == aboutDiandian) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.mianjiInfo, mianjiInfo) ||
                other.mianjiInfo == mianjiInfo) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.soulCodeImage, soulCodeImage) ||
                other.soulCodeImage == soulCodeImage) &&
            (identical(other.soulName, soulName) ||
                other.soulName == soulName) &&
            (identical(other.toLocation, toLocation) ||
                other.toLocation == toLocation) &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other.images, images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      aboutDiandian,
      age,
      id,
      location,
      mianjiInfo,
      name,
      soulCodeImage,
      soulName,
      toLocation,
      createDate,
      state,
      user,
      const DeepCollectionEquality().hash(images));

  @override
  String toString() {
    return 'MeetModel(aboutDiandian: $aboutDiandian, age: $age, id: $id, location: $location, mianjiInfo: $mianjiInfo, name: $name, soulCodeImage: $soulCodeImage, soulName: $soulName, toLocation: $toLocation, createDate: $createDate, state: $state, user: $user, images: $images)';
  }
}

/// @nodoc
abstract mixin class _$MeetModelCopyWith<$Res>
    implements $MeetModelCopyWith<$Res> {
  factory _$MeetModelCopyWith(
          _MeetModel value, $Res Function(_MeetModel) _then) =
      __$MeetModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String aboutDiandian,
      int age,
      int id,
      String location,
      String mianjiInfo,
      String name,
      String soulCodeImage,
      String soulName,
      String toLocation,
      String createDate,
      int state,
      MyUser user,
      IList<FileInfo> images});

  @override
  $MyUserCopyWith<$Res> get user;
}

/// @nodoc
class __$MeetModelCopyWithImpl<$Res> implements _$MeetModelCopyWith<$Res> {
  __$MeetModelCopyWithImpl(this._self, this._then);

  final _MeetModel _self;
  final $Res Function(_MeetModel) _then;

  /// Create a copy of MeetModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? aboutDiandian = null,
    Object? age = null,
    Object? id = null,
    Object? location = null,
    Object? mianjiInfo = null,
    Object? name = null,
    Object? soulCodeImage = null,
    Object? soulName = null,
    Object? toLocation = null,
    Object? createDate = null,
    Object? state = null,
    Object? user = null,
    Object? images = null,
  }) {
    return _then(_MeetModel(
      aboutDiandian: null == aboutDiandian
          ? _self.aboutDiandian
          : aboutDiandian // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      location: null == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      mianjiInfo: null == mianjiInfo
          ? _self.mianjiInfo
          : mianjiInfo // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      soulCodeImage: null == soulCodeImage
          ? _self.soulCodeImage
          : soulCodeImage // ignore: cast_nullable_to_non_nullable
              as String,
      soulName: null == soulName
          ? _self.soulName
          : soulName // ignore: cast_nullable_to_non_nullable
              as String,
      toLocation: null == toLocation
          ? _self.toLocation
          : toLocation // ignore: cast_nullable_to_non_nullable
              as String,
      createDate: null == createDate
          ? _self.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as MyUser,
      images: null == images
          ? _self.images
          : images // ignore: cast_nullable_to_non_nullable
              as IList<FileInfo>,
    ));
  }

  /// Create a copy of MeetModel
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
