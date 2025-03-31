// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Report {

@JsonKey(name: 'id') int get id;@JsonKey(name: 'content') String get content;@JsonKey(name: 'type') String get type;@JsonKey(name: 'createTime') String get createtime;@JsonKey(name: 'status') int get status;@JsonKey(name: 'comment') String get comment;@JsonKey(name: "user") MyUser get user;@JsonKey(name: "images") IList<FileInfo> get images;@JsonKey(name: 'resourceId') int? get resourceId;
/// Create a copy of Report
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportCopyWith<Report> get copyWith => _$ReportCopyWithImpl<Report>(this as Report, _$identity);

  /// Serializes this Report to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Report&&(identical(other.id, id) || other.id == id)&&(identical(other.content, content) || other.content == content)&&(identical(other.type, type) || other.type == type)&&(identical(other.createtime, createtime) || other.createtime == createtime)&&(identical(other.status, status) || other.status == status)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.resourceId, resourceId) || other.resourceId == resourceId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,content,type,createtime,status,comment,user,const DeepCollectionEquality().hash(images),resourceId);

@override
String toString() {
  return 'Report(id: $id, content: $content, type: $type, createtime: $createtime, status: $status, comment: $comment, user: $user, images: $images, resourceId: $resourceId)';
}


}

/// @nodoc
abstract mixin class $ReportCopyWith<$Res>  {
  factory $ReportCopyWith(Report value, $Res Function(Report) _then) = _$ReportCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'content') String content,@JsonKey(name: 'type') String type,@JsonKey(name: 'createTime') String createtime,@JsonKey(name: 'status') int status,@JsonKey(name: 'comment') String comment,@JsonKey(name: "user") MyUser user,@JsonKey(name: "images") IList<FileInfo> images,@JsonKey(name: 'resourceId') int? resourceId
});


$MyUserCopyWith<$Res> get user;

}
/// @nodoc
class _$ReportCopyWithImpl<$Res>
    implements $ReportCopyWith<$Res> {
  _$ReportCopyWithImpl(this._self, this._then);

  final Report _self;
  final $Res Function(Report) _then;

/// Create a copy of Report
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? content = null,Object? type = null,Object? createtime = null,Object? status = null,Object? comment = null,Object? user = null,Object? images = null,Object? resourceId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,createtime: null == createtime ? _self.createtime : createtime // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as MyUser,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as IList<FileInfo>,resourceId: freezed == resourceId ? _self.resourceId : resourceId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of Report
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

class _Report extends Report {
  const _Report({@JsonKey(name: 'id') this.id = 0, @JsonKey(name: 'content') this.content = '', @JsonKey(name: 'type') this.type = '', @JsonKey(name: 'createTime') this.createtime = '', @JsonKey(name: 'status') this.status = 0, @JsonKey(name: 'comment') this.comment = '', @JsonKey(name: "user") this.user = anonymousUser, @JsonKey(name: "images") this.images = const IListConst([]), @JsonKey(name: 'resourceId') this.resourceId}): super._();
  factory _Report.fromJson(Map<String, dynamic> json) => _$ReportFromJson(json);

@override@JsonKey(name: 'id') final  int id;
@override@JsonKey(name: 'content') final  String content;
@override@JsonKey(name: 'type') final  String type;
@override@JsonKey(name: 'createTime') final  String createtime;
@override@JsonKey(name: 'status') final  int status;
@override@JsonKey(name: 'comment') final  String comment;
@override@JsonKey(name: "user") final  MyUser user;
@override@JsonKey(name: "images") final  IList<FileInfo> images;
@override@JsonKey(name: 'resourceId') final  int? resourceId;

/// Create a copy of Report
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportCopyWith<_Report> get copyWith => __$ReportCopyWithImpl<_Report>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Report&&(identical(other.id, id) || other.id == id)&&(identical(other.content, content) || other.content == content)&&(identical(other.type, type) || other.type == type)&&(identical(other.createtime, createtime) || other.createtime == createtime)&&(identical(other.status, status) || other.status == status)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.resourceId, resourceId) || other.resourceId == resourceId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,content,type,createtime,status,comment,user,const DeepCollectionEquality().hash(images),resourceId);

@override
String toString() {
  return 'Report(id: $id, content: $content, type: $type, createtime: $createtime, status: $status, comment: $comment, user: $user, images: $images, resourceId: $resourceId)';
}


}

/// @nodoc
abstract mixin class _$ReportCopyWith<$Res> implements $ReportCopyWith<$Res> {
  factory _$ReportCopyWith(_Report value, $Res Function(_Report) _then) = __$ReportCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'content') String content,@JsonKey(name: 'type') String type,@JsonKey(name: 'createTime') String createtime,@JsonKey(name: 'status') int status,@JsonKey(name: 'comment') String comment,@JsonKey(name: "user") MyUser user,@JsonKey(name: "images") IList<FileInfo> images,@JsonKey(name: 'resourceId') int? resourceId
});


@override $MyUserCopyWith<$Res> get user;

}
/// @nodoc
class __$ReportCopyWithImpl<$Res>
    implements _$ReportCopyWith<$Res> {
  __$ReportCopyWithImpl(this._self, this._then);

  final _Report _self;
  final $Res Function(_Report) _then;

/// Create a copy of Report
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? content = null,Object? type = null,Object? createtime = null,Object? status = null,Object? comment = null,Object? user = null,Object? images = null,Object? resourceId = freezed,}) {
  return _then(_Report(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,createtime: null == createtime ? _self.createtime : createtime // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as MyUser,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as IList<FileInfo>,resourceId: freezed == resourceId ? _self.resourceId : resourceId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of Report
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
mixin _$AddReportParams {

@JsonKey(name: 'content') String get content;@JsonKey(name: 'type') String get type;
/// Create a copy of AddReportParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddReportParamsCopyWith<AddReportParams> get copyWith => _$AddReportParamsCopyWithImpl<AddReportParams>(this as AddReportParams, _$identity);

  /// Serializes this AddReportParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddReportParams&&(identical(other.content, content) || other.content == content)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content,type);

@override
String toString() {
  return 'AddReportParams(content: $content, type: $type)';
}


}

/// @nodoc
abstract mixin class $AddReportParamsCopyWith<$Res>  {
  factory $AddReportParamsCopyWith(AddReportParams value, $Res Function(AddReportParams) _then) = _$AddReportParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'content') String content,@JsonKey(name: 'type') String type
});




}
/// @nodoc
class _$AddReportParamsCopyWithImpl<$Res>
    implements $AddReportParamsCopyWith<$Res> {
  _$AddReportParamsCopyWithImpl(this._self, this._then);

  final AddReportParams _self;
  final $Res Function(AddReportParams) _then;

/// Create a copy of AddReportParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = null,Object? type = null,}) {
  return _then(_self.copyWith(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AddReportParams extends AddReportParams {
  const _AddReportParams({@JsonKey(name: 'content') this.content = '', @JsonKey(name: 'type') this.type = ''}): super._();
  factory _AddReportParams.fromJson(Map<String, dynamic> json) => _$AddReportParamsFromJson(json);

@override@JsonKey(name: 'content') final  String content;
@override@JsonKey(name: 'type') final  String type;

/// Create a copy of AddReportParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddReportParamsCopyWith<_AddReportParams> get copyWith => __$AddReportParamsCopyWithImpl<_AddReportParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddReportParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddReportParams&&(identical(other.content, content) || other.content == content)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content,type);

@override
String toString() {
  return 'AddReportParams(content: $content, type: $type)';
}


}

/// @nodoc
abstract mixin class _$AddReportParamsCopyWith<$Res> implements $AddReportParamsCopyWith<$Res> {
  factory _$AddReportParamsCopyWith(_AddReportParams value, $Res Function(_AddReportParams) _then) = __$AddReportParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'content') String content,@JsonKey(name: 'type') String type
});




}
/// @nodoc
class __$AddReportParamsCopyWithImpl<$Res>
    implements _$AddReportParamsCopyWith<$Res> {
  __$AddReportParamsCopyWithImpl(this._self, this._then);

  final _AddReportParams _self;
  final $Res Function(_AddReportParams) _then;

/// Create a copy of AddReportParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = null,Object? type = null,}) {
  return _then(_AddReportParams(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
