// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddMeetParams {

@JsonKey(name: 'id') int get id;@JsonKey(name: 'name') String get name;@JsonKey(name: 'age') int get age;@JsonKey(name: 'soulName') String get soulname;@JsonKey(name: 'soulCodeImage') String get soulcodeimage;@JsonKey(name: 'mianjiInfo') String get mianjiinfo;@JsonKey(name: 'location') String get location;@JsonKey(name: 'toLocation') String get tolocation;@JsonKey(name: 'aboutDiandian') String get aboutdiandian;@JsonKey(name: 'state') int get state;
/// Create a copy of AddMeetParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddMeetParamsCopyWith<AddMeetParams> get copyWith => _$AddMeetParamsCopyWithImpl<AddMeetParams>(this as AddMeetParams, _$identity);

  /// Serializes this AddMeetParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddMeetParams&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.age, age) || other.age == age)&&(identical(other.soulname, soulname) || other.soulname == soulname)&&(identical(other.soulcodeimage, soulcodeimage) || other.soulcodeimage == soulcodeimage)&&(identical(other.mianjiinfo, mianjiinfo) || other.mianjiinfo == mianjiinfo)&&(identical(other.location, location) || other.location == location)&&(identical(other.tolocation, tolocation) || other.tolocation == tolocation)&&(identical(other.aboutdiandian, aboutdiandian) || other.aboutdiandian == aboutdiandian)&&(identical(other.state, state) || other.state == state));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,age,soulname,soulcodeimage,mianjiinfo,location,tolocation,aboutdiandian,state);

@override
String toString() {
  return 'AddMeetParams(id: $id, name: $name, age: $age, soulname: $soulname, soulcodeimage: $soulcodeimage, mianjiinfo: $mianjiinfo, location: $location, tolocation: $tolocation, aboutdiandian: $aboutdiandian, state: $state)';
}


}

/// @nodoc
abstract mixin class $AddMeetParamsCopyWith<$Res>  {
  factory $AddMeetParamsCopyWith(AddMeetParams value, $Res Function(AddMeetParams) _then) = _$AddMeetParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'name') String name,@JsonKey(name: 'age') int age,@JsonKey(name: 'soulName') String soulname,@JsonKey(name: 'soulCodeImage') String soulcodeimage,@JsonKey(name: 'mianjiInfo') String mianjiinfo,@JsonKey(name: 'location') String location,@JsonKey(name: 'toLocation') String tolocation,@JsonKey(name: 'aboutDiandian') String aboutdiandian,@JsonKey(name: 'state') int state
});




}
/// @nodoc
class _$AddMeetParamsCopyWithImpl<$Res>
    implements $AddMeetParamsCopyWith<$Res> {
  _$AddMeetParamsCopyWithImpl(this._self, this._then);

  final AddMeetParams _self;
  final $Res Function(AddMeetParams) _then;

/// Create a copy of AddMeetParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? age = null,Object? soulname = null,Object? soulcodeimage = null,Object? mianjiinfo = null,Object? location = null,Object? tolocation = null,Object? aboutdiandian = null,Object? state = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,soulname: null == soulname ? _self.soulname : soulname // ignore: cast_nullable_to_non_nullable
as String,soulcodeimage: null == soulcodeimage ? _self.soulcodeimage : soulcodeimage // ignore: cast_nullable_to_non_nullable
as String,mianjiinfo: null == mianjiinfo ? _self.mianjiinfo : mianjiinfo // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,tolocation: null == tolocation ? _self.tolocation : tolocation // ignore: cast_nullable_to_non_nullable
as String,aboutdiandian: null == aboutdiandian ? _self.aboutdiandian : aboutdiandian // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AddMeetParams extends AddMeetParams {
  const _AddMeetParams({@JsonKey(name: 'id') this.id = 0, @JsonKey(name: 'name') this.name = '', @JsonKey(name: 'age') this.age = 0, @JsonKey(name: 'soulName') this.soulname = '', @JsonKey(name: 'soulCodeImage') this.soulcodeimage = '', @JsonKey(name: 'mianjiInfo') this.mianjiinfo = '', @JsonKey(name: 'location') this.location = '', @JsonKey(name: 'toLocation') this.tolocation = '', @JsonKey(name: 'aboutDiandian') this.aboutdiandian = '', @JsonKey(name: 'state') this.state = 0}): super._();
  factory _AddMeetParams.fromJson(Map<String, dynamic> json) => _$AddMeetParamsFromJson(json);

@override@JsonKey(name: 'id') final  int id;
@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'age') final  int age;
@override@JsonKey(name: 'soulName') final  String soulname;
@override@JsonKey(name: 'soulCodeImage') final  String soulcodeimage;
@override@JsonKey(name: 'mianjiInfo') final  String mianjiinfo;
@override@JsonKey(name: 'location') final  String location;
@override@JsonKey(name: 'toLocation') final  String tolocation;
@override@JsonKey(name: 'aboutDiandian') final  String aboutdiandian;
@override@JsonKey(name: 'state') final  int state;

/// Create a copy of AddMeetParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddMeetParamsCopyWith<_AddMeetParams> get copyWith => __$AddMeetParamsCopyWithImpl<_AddMeetParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddMeetParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddMeetParams&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.age, age) || other.age == age)&&(identical(other.soulname, soulname) || other.soulname == soulname)&&(identical(other.soulcodeimage, soulcodeimage) || other.soulcodeimage == soulcodeimage)&&(identical(other.mianjiinfo, mianjiinfo) || other.mianjiinfo == mianjiinfo)&&(identical(other.location, location) || other.location == location)&&(identical(other.tolocation, tolocation) || other.tolocation == tolocation)&&(identical(other.aboutdiandian, aboutdiandian) || other.aboutdiandian == aboutdiandian)&&(identical(other.state, state) || other.state == state));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,age,soulname,soulcodeimage,mianjiinfo,location,tolocation,aboutdiandian,state);

@override
String toString() {
  return 'AddMeetParams(id: $id, name: $name, age: $age, soulname: $soulname, soulcodeimage: $soulcodeimage, mianjiinfo: $mianjiinfo, location: $location, tolocation: $tolocation, aboutdiandian: $aboutdiandian, state: $state)';
}


}

/// @nodoc
abstract mixin class _$AddMeetParamsCopyWith<$Res> implements $AddMeetParamsCopyWith<$Res> {
  factory _$AddMeetParamsCopyWith(_AddMeetParams value, $Res Function(_AddMeetParams) _then) = __$AddMeetParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'name') String name,@JsonKey(name: 'age') int age,@JsonKey(name: 'soulName') String soulname,@JsonKey(name: 'soulCodeImage') String soulcodeimage,@JsonKey(name: 'mianjiInfo') String mianjiinfo,@JsonKey(name: 'location') String location,@JsonKey(name: 'toLocation') String tolocation,@JsonKey(name: 'aboutDiandian') String aboutdiandian,@JsonKey(name: 'state') int state
});




}
/// @nodoc
class __$AddMeetParamsCopyWithImpl<$Res>
    implements _$AddMeetParamsCopyWith<$Res> {
  __$AddMeetParamsCopyWithImpl(this._self, this._then);

  final _AddMeetParams _self;
  final $Res Function(_AddMeetParams) _then;

/// Create a copy of AddMeetParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? age = null,Object? soulname = null,Object? soulcodeimage = null,Object? mianjiinfo = null,Object? location = null,Object? tolocation = null,Object? aboutdiandian = null,Object? state = null,}) {
  return _then(_AddMeetParams(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,soulname: null == soulname ? _self.soulname : soulname // ignore: cast_nullable_to_non_nullable
as String,soulcodeimage: null == soulcodeimage ? _self.soulcodeimage : soulcodeimage // ignore: cast_nullable_to_non_nullable
as String,mianjiinfo: null == mianjiinfo ? _self.mianjiinfo : mianjiinfo // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,tolocation: null == tolocation ? _self.tolocation : tolocation // ignore: cast_nullable_to_non_nullable
as String,aboutdiandian: null == aboutdiandian ? _self.aboutdiandian : aboutdiandian // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
