// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resource_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResourceCategory {

@JsonKey(name: 'description') String get description;@JsonKey(name: 'id') int get id;@JsonKey(name: 'logo') String get logo;@JsonKey(name: 'name') String get name;@JsonKey(name: 'type') dynamic get type;
/// Create a copy of ResourceCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResourceCategoryCopyWith<ResourceCategory> get copyWith => _$ResourceCategoryCopyWithImpl<ResourceCategory>(this as ResourceCategory, _$identity);

  /// Serializes this ResourceCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResourceCategory&&(identical(other.description, description) || other.description == description)&&(identical(other.id, id) || other.id == id)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.type, type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,id,logo,name,const DeepCollectionEquality().hash(type));

@override
String toString() {
  return 'ResourceCategory(description: $description, id: $id, logo: $logo, name: $name, type: $type)';
}


}

/// @nodoc
abstract mixin class $ResourceCategoryCopyWith<$Res>  {
  factory $ResourceCategoryCopyWith(ResourceCategory value, $Res Function(ResourceCategory) _then) = _$ResourceCategoryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'description') String description,@JsonKey(name: 'id') int id,@JsonKey(name: 'logo') String logo,@JsonKey(name: 'name') String name,@JsonKey(name: 'type') dynamic type
});




}
/// @nodoc
class _$ResourceCategoryCopyWithImpl<$Res>
    implements $ResourceCategoryCopyWith<$Res> {
  _$ResourceCategoryCopyWithImpl(this._self, this._then);

  final ResourceCategory _self;
  final $Res Function(ResourceCategory) _then;

/// Create a copy of ResourceCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? description = null,Object? id = null,Object? logo = null,Object? name = null,Object? type = freezed,}) {
  return _then(_self.copyWith(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,logo: null == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ResourceCategory extends ResourceCategory {
  const _ResourceCategory({@JsonKey(name: 'description') this.description = '', @JsonKey(name: 'id') this.id = 0, @JsonKey(name: 'logo') this.logo = '', @JsonKey(name: 'name') this.name = '', @JsonKey(name: 'type') this.type}): super._();
  factory _ResourceCategory.fromJson(Map<String, dynamic> json) => _$ResourceCategoryFromJson(json);

@override@JsonKey(name: 'description') final  String description;
@override@JsonKey(name: 'id') final  int id;
@override@JsonKey(name: 'logo') final  String logo;
@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'type') final  dynamic type;

/// Create a copy of ResourceCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResourceCategoryCopyWith<_ResourceCategory> get copyWith => __$ResourceCategoryCopyWithImpl<_ResourceCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResourceCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResourceCategory&&(identical(other.description, description) || other.description == description)&&(identical(other.id, id) || other.id == id)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.type, type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,id,logo,name,const DeepCollectionEquality().hash(type));

@override
String toString() {
  return 'ResourceCategory(description: $description, id: $id, logo: $logo, name: $name, type: $type)';
}


}

/// @nodoc
abstract mixin class _$ResourceCategoryCopyWith<$Res> implements $ResourceCategoryCopyWith<$Res> {
  factory _$ResourceCategoryCopyWith(_ResourceCategory value, $Res Function(_ResourceCategory) _then) = __$ResourceCategoryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'description') String description,@JsonKey(name: 'id') int id,@JsonKey(name: 'logo') String logo,@JsonKey(name: 'name') String name,@JsonKey(name: 'type') dynamic type
});




}
/// @nodoc
class __$ResourceCategoryCopyWithImpl<$Res>
    implements _$ResourceCategoryCopyWith<$Res> {
  __$ResourceCategoryCopyWithImpl(this._self, this._then);

  final _ResourceCategory _self;
  final $Res Function(_ResourceCategory) _then;

/// Create a copy of ResourceCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? description = null,Object? id = null,Object? logo = null,Object? name = null,Object? type = freezed,}) {
  return _then(_ResourceCategory(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,logo: null == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$Resource {

@JsonKey(name: 'authority') int get authority;@JsonKey(name: 'clickCount') int get clickcount;@JsonKey(name: 'content') String get content;@JsonKey(name: 'createDate') String get createdate;@JsonKey(name: 'description') String get description;@JsonKey(name: 'id') int get id;@JsonKey(name: 'label') String get label;@JsonKey(name: 'links') String get links;@JsonKey(name: 'thumbnailImage') String get thumbnailimage;@JsonKey(name: 'title') String get title;@JsonKey(name: 'type') String get type;@JsonKey(name: 'category') ResourceCategory get category;@JsonKey(name: 'user') MyUser get user;@JsonKey(name: 'mianji') MeetModel? get meetModel;@JsonKey(name: 'images') IList<FileInfo> get images;@JsonKey(name: 'thumbnail') String get thumbnail;@JsonKey(name: 'thumbnailPath') String get thumbnailPath;@JsonKey(name: 'share') ProductShare? get share;
/// Create a copy of Resource
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResourceCopyWith<Resource> get copyWith => _$ResourceCopyWithImpl<Resource>(this as Resource, _$identity);

  /// Serializes this Resource to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Resource&&(identical(other.authority, authority) || other.authority == authority)&&(identical(other.clickcount, clickcount) || other.clickcount == clickcount)&&(identical(other.content, content) || other.content == content)&&(identical(other.createdate, createdate) || other.createdate == createdate)&&(identical(other.description, description) || other.description == description)&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.links, links) || other.links == links)&&(identical(other.thumbnailimage, thumbnailimage) || other.thumbnailimage == thumbnailimage)&&(identical(other.title, title) || other.title == title)&&(identical(other.type, type) || other.type == type)&&(identical(other.category, category) || other.category == category)&&(identical(other.user, user) || other.user == user)&&(identical(other.meetModel, meetModel) || other.meetModel == meetModel)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.thumbnailPath, thumbnailPath) || other.thumbnailPath == thumbnailPath)&&(identical(other.share, share) || other.share == share));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,authority,clickcount,content,createdate,description,id,label,links,thumbnailimage,title,type,category,user,meetModel,const DeepCollectionEquality().hash(images),thumbnail,thumbnailPath,share);

@override
String toString() {
  return 'Resource(authority: $authority, clickcount: $clickcount, content: $content, createdate: $createdate, description: $description, id: $id, label: $label, links: $links, thumbnailimage: $thumbnailimage, title: $title, type: $type, category: $category, user: $user, meetModel: $meetModel, images: $images, thumbnail: $thumbnail, thumbnailPath: $thumbnailPath, share: $share)';
}


}

/// @nodoc
abstract mixin class $ResourceCopyWith<$Res>  {
  factory $ResourceCopyWith(Resource value, $Res Function(Resource) _then) = _$ResourceCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'authority') int authority,@JsonKey(name: 'clickCount') int clickcount,@JsonKey(name: 'content') String content,@JsonKey(name: 'createDate') String createdate,@JsonKey(name: 'description') String description,@JsonKey(name: 'id') int id,@JsonKey(name: 'label') String label,@JsonKey(name: 'links') String links,@JsonKey(name: 'thumbnailImage') String thumbnailimage,@JsonKey(name: 'title') String title,@JsonKey(name: 'type') String type,@JsonKey(name: 'category') ResourceCategory category,@JsonKey(name: 'user') MyUser user,@JsonKey(name: 'mianji') MeetModel? meetModel,@JsonKey(name: 'images') IList<FileInfo> images,@JsonKey(name: 'thumbnail') String thumbnail,@JsonKey(name: 'thumbnailPath') String thumbnailPath,@JsonKey(name: 'share') ProductShare? share
});


$ResourceCategoryCopyWith<$Res> get category;$MyUserCopyWith<$Res> get user;$MeetModelCopyWith<$Res>? get meetModel;$ProductShareCopyWith<$Res>? get share;

}
/// @nodoc
class _$ResourceCopyWithImpl<$Res>
    implements $ResourceCopyWith<$Res> {
  _$ResourceCopyWithImpl(this._self, this._then);

  final Resource _self;
  final $Res Function(Resource) _then;

/// Create a copy of Resource
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? authority = null,Object? clickcount = null,Object? content = null,Object? createdate = null,Object? description = null,Object? id = null,Object? label = null,Object? links = null,Object? thumbnailimage = null,Object? title = null,Object? type = null,Object? category = null,Object? user = null,Object? meetModel = freezed,Object? images = null,Object? thumbnail = null,Object? thumbnailPath = null,Object? share = freezed,}) {
  return _then(_self.copyWith(
authority: null == authority ? _self.authority : authority // ignore: cast_nullable_to_non_nullable
as int,clickcount: null == clickcount ? _self.clickcount : clickcount // ignore: cast_nullable_to_non_nullable
as int,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,createdate: null == createdate ? _self.createdate : createdate // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,links: null == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as String,thumbnailimage: null == thumbnailimage ? _self.thumbnailimage : thumbnailimage // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as ResourceCategory,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as MyUser,meetModel: freezed == meetModel ? _self.meetModel : meetModel // ignore: cast_nullable_to_non_nullable
as MeetModel?,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as IList<FileInfo>,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,thumbnailPath: null == thumbnailPath ? _self.thumbnailPath : thumbnailPath // ignore: cast_nullable_to_non_nullable
as String,share: freezed == share ? _self.share : share // ignore: cast_nullable_to_non_nullable
as ProductShare?,
  ));
}
/// Create a copy of Resource
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResourceCategoryCopyWith<$Res> get category {
  
  return $ResourceCategoryCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of Resource
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyUserCopyWith<$Res> get user {
  
  return $MyUserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of Resource
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MeetModelCopyWith<$Res>? get meetModel {
    if (_self.meetModel == null) {
    return null;
  }

  return $MeetModelCopyWith<$Res>(_self.meetModel!, (value) {
    return _then(_self.copyWith(meetModel: value));
  });
}/// Create a copy of Resource
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductShareCopyWith<$Res>? get share {
    if (_self.share == null) {
    return null;
  }

  return $ProductShareCopyWith<$Res>(_self.share!, (value) {
    return _then(_self.copyWith(share: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _Resource extends Resource {
  const _Resource({@JsonKey(name: 'authority') this.authority = 0, @JsonKey(name: 'clickCount') this.clickcount = 0, @JsonKey(name: 'content') this.content = '', @JsonKey(name: 'createDate') this.createdate = '', @JsonKey(name: 'description') this.description = '', @JsonKey(name: 'id') this.id = 0, @JsonKey(name: 'label') this.label = '', @JsonKey(name: 'links') this.links = '', @JsonKey(name: 'thumbnailImage') this.thumbnailimage = '', @JsonKey(name: 'title') this.title = '', @JsonKey(name: 'type') this.type = '', @JsonKey(name: 'category') this.category = const ResourceCategory(), @JsonKey(name: 'user') required this.user, @JsonKey(name: 'mianji') this.meetModel, @JsonKey(name: 'images') this.images = const IListConst([]), @JsonKey(name: 'thumbnail') this.thumbnail = '', @JsonKey(name: 'thumbnailPath') this.thumbnailPath = '', @JsonKey(name: 'share') this.share}): super._();
  factory _Resource.fromJson(Map<String, dynamic> json) => _$ResourceFromJson(json);

@override@JsonKey(name: 'authority') final  int authority;
@override@JsonKey(name: 'clickCount') final  int clickcount;
@override@JsonKey(name: 'content') final  String content;
@override@JsonKey(name: 'createDate') final  String createdate;
@override@JsonKey(name: 'description') final  String description;
@override@JsonKey(name: 'id') final  int id;
@override@JsonKey(name: 'label') final  String label;
@override@JsonKey(name: 'links') final  String links;
@override@JsonKey(name: 'thumbnailImage') final  String thumbnailimage;
@override@JsonKey(name: 'title') final  String title;
@override@JsonKey(name: 'type') final  String type;
@override@JsonKey(name: 'category') final  ResourceCategory category;
@override@JsonKey(name: 'user') final  MyUser user;
@override@JsonKey(name: 'mianji') final  MeetModel? meetModel;
@override@JsonKey(name: 'images') final  IList<FileInfo> images;
@override@JsonKey(name: 'thumbnail') final  String thumbnail;
@override@JsonKey(name: 'thumbnailPath') final  String thumbnailPath;
@override@JsonKey(name: 'share') final  ProductShare? share;

/// Create a copy of Resource
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResourceCopyWith<_Resource> get copyWith => __$ResourceCopyWithImpl<_Resource>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResourceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Resource&&(identical(other.authority, authority) || other.authority == authority)&&(identical(other.clickcount, clickcount) || other.clickcount == clickcount)&&(identical(other.content, content) || other.content == content)&&(identical(other.createdate, createdate) || other.createdate == createdate)&&(identical(other.description, description) || other.description == description)&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.links, links) || other.links == links)&&(identical(other.thumbnailimage, thumbnailimage) || other.thumbnailimage == thumbnailimage)&&(identical(other.title, title) || other.title == title)&&(identical(other.type, type) || other.type == type)&&(identical(other.category, category) || other.category == category)&&(identical(other.user, user) || other.user == user)&&(identical(other.meetModel, meetModel) || other.meetModel == meetModel)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.thumbnailPath, thumbnailPath) || other.thumbnailPath == thumbnailPath)&&(identical(other.share, share) || other.share == share));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,authority,clickcount,content,createdate,description,id,label,links,thumbnailimage,title,type,category,user,meetModel,const DeepCollectionEquality().hash(images),thumbnail,thumbnailPath,share);

@override
String toString() {
  return 'Resource(authority: $authority, clickcount: $clickcount, content: $content, createdate: $createdate, description: $description, id: $id, label: $label, links: $links, thumbnailimage: $thumbnailimage, title: $title, type: $type, category: $category, user: $user, meetModel: $meetModel, images: $images, thumbnail: $thumbnail, thumbnailPath: $thumbnailPath, share: $share)';
}


}

/// @nodoc
abstract mixin class _$ResourceCopyWith<$Res> implements $ResourceCopyWith<$Res> {
  factory _$ResourceCopyWith(_Resource value, $Res Function(_Resource) _then) = __$ResourceCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'authority') int authority,@JsonKey(name: 'clickCount') int clickcount,@JsonKey(name: 'content') String content,@JsonKey(name: 'createDate') String createdate,@JsonKey(name: 'description') String description,@JsonKey(name: 'id') int id,@JsonKey(name: 'label') String label,@JsonKey(name: 'links') String links,@JsonKey(name: 'thumbnailImage') String thumbnailimage,@JsonKey(name: 'title') String title,@JsonKey(name: 'type') String type,@JsonKey(name: 'category') ResourceCategory category,@JsonKey(name: 'user') MyUser user,@JsonKey(name: 'mianji') MeetModel? meetModel,@JsonKey(name: 'images') IList<FileInfo> images,@JsonKey(name: 'thumbnail') String thumbnail,@JsonKey(name: 'thumbnailPath') String thumbnailPath,@JsonKey(name: 'share') ProductShare? share
});


@override $ResourceCategoryCopyWith<$Res> get category;@override $MyUserCopyWith<$Res> get user;@override $MeetModelCopyWith<$Res>? get meetModel;@override $ProductShareCopyWith<$Res>? get share;

}
/// @nodoc
class __$ResourceCopyWithImpl<$Res>
    implements _$ResourceCopyWith<$Res> {
  __$ResourceCopyWithImpl(this._self, this._then);

  final _Resource _self;
  final $Res Function(_Resource) _then;

/// Create a copy of Resource
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? authority = null,Object? clickcount = null,Object? content = null,Object? createdate = null,Object? description = null,Object? id = null,Object? label = null,Object? links = null,Object? thumbnailimage = null,Object? title = null,Object? type = null,Object? category = null,Object? user = null,Object? meetModel = freezed,Object? images = null,Object? thumbnail = null,Object? thumbnailPath = null,Object? share = freezed,}) {
  return _then(_Resource(
authority: null == authority ? _self.authority : authority // ignore: cast_nullable_to_non_nullable
as int,clickcount: null == clickcount ? _self.clickcount : clickcount // ignore: cast_nullable_to_non_nullable
as int,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,createdate: null == createdate ? _self.createdate : createdate // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,links: null == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as String,thumbnailimage: null == thumbnailimage ? _self.thumbnailimage : thumbnailimage // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as ResourceCategory,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as MyUser,meetModel: freezed == meetModel ? _self.meetModel : meetModel // ignore: cast_nullable_to_non_nullable
as MeetModel?,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as IList<FileInfo>,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,thumbnailPath: null == thumbnailPath ? _self.thumbnailPath : thumbnailPath // ignore: cast_nullable_to_non_nullable
as String,share: freezed == share ? _self.share : share // ignore: cast_nullable_to_non_nullable
as ProductShare?,
  ));
}

/// Create a copy of Resource
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResourceCategoryCopyWith<$Res> get category {
  
  return $ResourceCategoryCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of Resource
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyUserCopyWith<$Res> get user {
  
  return $MyUserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of Resource
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MeetModelCopyWith<$Res>? get meetModel {
    if (_self.meetModel == null) {
    return null;
  }

  return $MeetModelCopyWith<$Res>(_self.meetModel!, (value) {
    return _then(_self.copyWith(meetModel: value));
  });
}/// Create a copy of Resource
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductShareCopyWith<$Res>? get share {
    if (_self.share == null) {
    return null;
  }

  return $ProductShareCopyWith<$Res>(_self.share!, (value) {
    return _then(_self.copyWith(share: value));
  });
}
}

// dart format on
