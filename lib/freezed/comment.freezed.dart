// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Comment {

@JsonKey(name: 'id') int get id;@JsonKey(name: 'email') String get email;@JsonKey(name: 'website') String get website;@JsonKey(name: 'content') String get content;@JsonKey(name: 'findKey') String get findkey;@JsonKey(name: 'name') String get name;@JsonKey(name: 'code') String get code;@JsonKey(name: 'avatarUrl') String get avatarUrl;@JsonKey(name: 'parentComment') Comment? get parentComment;@JsonKey(name: 'type') String get type;@JsonKey(name: 'childCommentWithData') List<Comment> get childCommentWithData;@JsonKey(name: 'createDate') String get createDate;@JsonKey(name: 'user') MyUser get user;@JsonKey(name: 'likeUsers') List<MyUser> get likeusers;@JsonKey(name: 'childComment') List<Comment> get childComment;
/// Create a copy of Comment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentCopyWith<Comment> get copyWith => _$CommentCopyWithImpl<Comment>(this as Comment, _$identity);

  /// Serializes this Comment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Comment&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.website, website) || other.website == website)&&(identical(other.content, content) || other.content == content)&&(identical(other.findkey, findkey) || other.findkey == findkey)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.parentComment, parentComment) || other.parentComment == parentComment)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.childCommentWithData, childCommentWithData)&&(identical(other.createDate, createDate) || other.createDate == createDate)&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other.likeusers, likeusers)&&const DeepCollectionEquality().equals(other.childComment, childComment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,website,content,findkey,name,code,avatarUrl,parentComment,type,const DeepCollectionEquality().hash(childCommentWithData),createDate,user,const DeepCollectionEquality().hash(likeusers),const DeepCollectionEquality().hash(childComment));

@override
String toString() {
  return 'Comment(id: $id, email: $email, website: $website, content: $content, findkey: $findkey, name: $name, code: $code, avatarUrl: $avatarUrl, parentComment: $parentComment, type: $type, childCommentWithData: $childCommentWithData, createDate: $createDate, user: $user, likeusers: $likeusers, childComment: $childComment)';
}


}

/// @nodoc
abstract mixin class $CommentCopyWith<$Res>  {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) _then) = _$CommentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'email') String email,@JsonKey(name: 'website') String website,@JsonKey(name: 'content') String content,@JsonKey(name: 'findKey') String findkey,@JsonKey(name: 'name') String name,@JsonKey(name: 'code') String code,@JsonKey(name: 'avatarUrl') String avatarUrl,@JsonKey(name: 'parentComment') Comment? parentComment,@JsonKey(name: 'type') String type,@JsonKey(name: 'childCommentWithData') List<Comment> childCommentWithData,@JsonKey(name: 'createDate') String createDate,@JsonKey(name: 'user') MyUser user,@JsonKey(name: 'likeUsers') List<MyUser> likeusers,@JsonKey(name: 'childComment') List<Comment> childComment
});


$CommentCopyWith<$Res>? get parentComment;$MyUserCopyWith<$Res> get user;

}
/// @nodoc
class _$CommentCopyWithImpl<$Res>
    implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._self, this._then);

  final Comment _self;
  final $Res Function(Comment) _then;

/// Create a copy of Comment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? website = null,Object? content = null,Object? findkey = null,Object? name = null,Object? code = null,Object? avatarUrl = null,Object? parentComment = freezed,Object? type = null,Object? childCommentWithData = null,Object? createDate = null,Object? user = null,Object? likeusers = null,Object? childComment = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,website: null == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,findkey: null == findkey ? _self.findkey : findkey // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,parentComment: freezed == parentComment ? _self.parentComment : parentComment // ignore: cast_nullable_to_non_nullable
as Comment?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,childCommentWithData: null == childCommentWithData ? _self.childCommentWithData : childCommentWithData // ignore: cast_nullable_to_non_nullable
as List<Comment>,createDate: null == createDate ? _self.createDate : createDate // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as MyUser,likeusers: null == likeusers ? _self.likeusers : likeusers // ignore: cast_nullable_to_non_nullable
as List<MyUser>,childComment: null == childComment ? _self.childComment : childComment // ignore: cast_nullable_to_non_nullable
as List<Comment>,
  ));
}
/// Create a copy of Comment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommentCopyWith<$Res>? get parentComment {
    if (_self.parentComment == null) {
    return null;
  }

  return $CommentCopyWith<$Res>(_self.parentComment!, (value) {
    return _then(_self.copyWith(parentComment: value));
  });
}/// Create a copy of Comment
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

class _Comment extends Comment {
  const _Comment({@JsonKey(name: 'id') this.id = 0, @JsonKey(name: 'email') this.email = '', @JsonKey(name: 'website') this.website = '', @JsonKey(name: 'content') this.content = '', @JsonKey(name: 'findKey') this.findkey = '', @JsonKey(name: 'name') this.name = '', @JsonKey(name: 'code') this.code = '', @JsonKey(name: 'avatarUrl') this.avatarUrl = '', @JsonKey(name: 'parentComment') this.parentComment, @JsonKey(name: 'type') this.type = '', @JsonKey(name: 'childCommentWithData') final  List<Comment> childCommentWithData = const [], @JsonKey(name: 'createDate') this.createDate = '', @JsonKey(name: 'user') this.user = anonymousUser, @JsonKey(name: 'likeUsers') final  List<MyUser> likeusers = const [], @JsonKey(name: 'childComment') final  List<Comment> childComment = const []}): _childCommentWithData = childCommentWithData,_likeusers = likeusers,_childComment = childComment,super._();
  factory _Comment.fromJson(Map<String, dynamic> json) => _$CommentFromJson(json);

@override@JsonKey(name: 'id') final  int id;
@override@JsonKey(name: 'email') final  String email;
@override@JsonKey(name: 'website') final  String website;
@override@JsonKey(name: 'content') final  String content;
@override@JsonKey(name: 'findKey') final  String findkey;
@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'code') final  String code;
@override@JsonKey(name: 'avatarUrl') final  String avatarUrl;
@override@JsonKey(name: 'parentComment') final  Comment? parentComment;
@override@JsonKey(name: 'type') final  String type;
 final  List<Comment> _childCommentWithData;
@override@JsonKey(name: 'childCommentWithData') List<Comment> get childCommentWithData {
  if (_childCommentWithData is EqualUnmodifiableListView) return _childCommentWithData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_childCommentWithData);
}

@override@JsonKey(name: 'createDate') final  String createDate;
@override@JsonKey(name: 'user') final  MyUser user;
 final  List<MyUser> _likeusers;
@override@JsonKey(name: 'likeUsers') List<MyUser> get likeusers {
  if (_likeusers is EqualUnmodifiableListView) return _likeusers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_likeusers);
}

 final  List<Comment> _childComment;
@override@JsonKey(name: 'childComment') List<Comment> get childComment {
  if (_childComment is EqualUnmodifiableListView) return _childComment;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_childComment);
}


/// Create a copy of Comment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommentCopyWith<_Comment> get copyWith => __$CommentCopyWithImpl<_Comment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Comment&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.website, website) || other.website == website)&&(identical(other.content, content) || other.content == content)&&(identical(other.findkey, findkey) || other.findkey == findkey)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.parentComment, parentComment) || other.parentComment == parentComment)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._childCommentWithData, _childCommentWithData)&&(identical(other.createDate, createDate) || other.createDate == createDate)&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other._likeusers, _likeusers)&&const DeepCollectionEquality().equals(other._childComment, _childComment));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,website,content,findkey,name,code,avatarUrl,parentComment,type,const DeepCollectionEquality().hash(_childCommentWithData),createDate,user,const DeepCollectionEquality().hash(_likeusers),const DeepCollectionEquality().hash(_childComment));

@override
String toString() {
  return 'Comment(id: $id, email: $email, website: $website, content: $content, findkey: $findkey, name: $name, code: $code, avatarUrl: $avatarUrl, parentComment: $parentComment, type: $type, childCommentWithData: $childCommentWithData, createDate: $createDate, user: $user, likeusers: $likeusers, childComment: $childComment)';
}


}

/// @nodoc
abstract mixin class _$CommentCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$CommentCopyWith(_Comment value, $Res Function(_Comment) _then) = __$CommentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'email') String email,@JsonKey(name: 'website') String website,@JsonKey(name: 'content') String content,@JsonKey(name: 'findKey') String findkey,@JsonKey(name: 'name') String name,@JsonKey(name: 'code') String code,@JsonKey(name: 'avatarUrl') String avatarUrl,@JsonKey(name: 'parentComment') Comment? parentComment,@JsonKey(name: 'type') String type,@JsonKey(name: 'childCommentWithData') List<Comment> childCommentWithData,@JsonKey(name: 'createDate') String createDate,@JsonKey(name: 'user') MyUser user,@JsonKey(name: 'likeUsers') List<MyUser> likeusers,@JsonKey(name: 'childComment') List<Comment> childComment
});


@override $CommentCopyWith<$Res>? get parentComment;@override $MyUserCopyWith<$Res> get user;

}
/// @nodoc
class __$CommentCopyWithImpl<$Res>
    implements _$CommentCopyWith<$Res> {
  __$CommentCopyWithImpl(this._self, this._then);

  final _Comment _self;
  final $Res Function(_Comment) _then;

/// Create a copy of Comment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? website = null,Object? content = null,Object? findkey = null,Object? name = null,Object? code = null,Object? avatarUrl = null,Object? parentComment = freezed,Object? type = null,Object? childCommentWithData = null,Object? createDate = null,Object? user = null,Object? likeusers = null,Object? childComment = null,}) {
  return _then(_Comment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,website: null == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,findkey: null == findkey ? _self.findkey : findkey // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,parentComment: freezed == parentComment ? _self.parentComment : parentComment // ignore: cast_nullable_to_non_nullable
as Comment?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,childCommentWithData: null == childCommentWithData ? _self._childCommentWithData : childCommentWithData // ignore: cast_nullable_to_non_nullable
as List<Comment>,createDate: null == createDate ? _self.createDate : createDate // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as MyUser,likeusers: null == likeusers ? _self._likeusers : likeusers // ignore: cast_nullable_to_non_nullable
as List<MyUser>,childComment: null == childComment ? _self._childComment : childComment // ignore: cast_nullable_to_non_nullable
as List<Comment>,
  ));
}

/// Create a copy of Comment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommentCopyWith<$Res>? get parentComment {
    if (_self.parentComment == null) {
    return null;
  }

  return $CommentCopyWith<$Res>(_self.parentComment!, (value) {
    return _then(_self.copyWith(parentComment: value));
  });
}/// Create a copy of Comment
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
