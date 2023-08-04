// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Comment _$CommentFromJson(Map<String, dynamic> json) {
  return _Comment.fromJson(json);
}

/// @nodoc
mixin _$Comment {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'website')
  String get website => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'findKey')
  String get findkey => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatarUrl')
  String get avatarUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'parentComment')
  Comment? get parentComment => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'childCommentWithData')
  List<Comment> get childCommentWithData => throw _privateConstructorUsedError;
  @JsonKey(name: 'createDate')
  String get createDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  MyUser get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'likeUsers')
  List<MyUser> get likeusers => throw _privateConstructorUsedError;
  @JsonKey(name: 'childComment')
  List<Comment> get childComment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentCopyWith<Comment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) =
      _$CommentCopyWithImpl<$Res, Comment>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'website') String website,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'findKey') String findkey,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'code') String code,
      @JsonKey(name: 'avatarUrl') String avatarUrl,
      @JsonKey(name: 'parentComment') Comment? parentComment,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'childCommentWithData') List<Comment> childCommentWithData,
      @JsonKey(name: 'createDate') String createDate,
      @JsonKey(name: 'user') MyUser user,
      @JsonKey(name: 'likeUsers') List<MyUser> likeusers,
      @JsonKey(name: 'childComment') List<Comment> childComment});

  $CommentCopyWith<$Res>? get parentComment;
  $MyUserCopyWith<$Res> get user;
}

/// @nodoc
class _$CommentCopyWithImpl<$Res, $Val extends Comment>
    implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? website = null,
    Object? content = null,
    Object? findkey = null,
    Object? name = null,
    Object? code = null,
    Object? avatarUrl = null,
    Object? parentComment = freezed,
    Object? type = null,
    Object? childCommentWithData = null,
    Object? createDate = null,
    Object? user = null,
    Object? likeusers = null,
    Object? childComment = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      website: null == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      findkey: null == findkey
          ? _value.findkey
          : findkey // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      parentComment: freezed == parentComment
          ? _value.parentComment
          : parentComment // ignore: cast_nullable_to_non_nullable
              as Comment?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      childCommentWithData: null == childCommentWithData
          ? _value.childCommentWithData
          : childCommentWithData // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as MyUser,
      likeusers: null == likeusers
          ? _value.likeusers
          : likeusers // ignore: cast_nullable_to_non_nullable
              as List<MyUser>,
      childComment: null == childComment
          ? _value.childComment
          : childComment // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CommentCopyWith<$Res>? get parentComment {
    if (_value.parentComment == null) {
      return null;
    }

    return $CommentCopyWith<$Res>(_value.parentComment!, (value) {
      return _then(_value.copyWith(parentComment: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MyUserCopyWith<$Res> get user {
    return $MyUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CommentCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$$_CommentCopyWith(
          _$_Comment value, $Res Function(_$_Comment) then) =
      __$$_CommentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'website') String website,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'findKey') String findkey,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'code') String code,
      @JsonKey(name: 'avatarUrl') String avatarUrl,
      @JsonKey(name: 'parentComment') Comment? parentComment,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'childCommentWithData') List<Comment> childCommentWithData,
      @JsonKey(name: 'createDate') String createDate,
      @JsonKey(name: 'user') MyUser user,
      @JsonKey(name: 'likeUsers') List<MyUser> likeusers,
      @JsonKey(name: 'childComment') List<Comment> childComment});

  @override
  $CommentCopyWith<$Res>? get parentComment;
  @override
  $MyUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_CommentCopyWithImpl<$Res>
    extends _$CommentCopyWithImpl<$Res, _$_Comment>
    implements _$$_CommentCopyWith<$Res> {
  __$$_CommentCopyWithImpl(_$_Comment _value, $Res Function(_$_Comment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? website = null,
    Object? content = null,
    Object? findkey = null,
    Object? name = null,
    Object? code = null,
    Object? avatarUrl = null,
    Object? parentComment = freezed,
    Object? type = null,
    Object? childCommentWithData = null,
    Object? createDate = null,
    Object? user = null,
    Object? likeusers = null,
    Object? childComment = null,
  }) {
    return _then(_$_Comment(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      website: null == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      findkey: null == findkey
          ? _value.findkey
          : findkey // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      parentComment: freezed == parentComment
          ? _value.parentComment
          : parentComment // ignore: cast_nullable_to_non_nullable
              as Comment?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      childCommentWithData: null == childCommentWithData
          ? _value._childCommentWithData
          : childCommentWithData // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as MyUser,
      likeusers: null == likeusers
          ? _value._likeusers
          : likeusers // ignore: cast_nullable_to_non_nullable
              as List<MyUser>,
      childComment: null == childComment
          ? _value._childComment
          : childComment // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Comment extends _Comment {
  const _$_Comment(
      {@JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'email') this.email = '',
      @JsonKey(name: 'website') this.website = '',
      @JsonKey(name: 'content') this.content = '',
      @JsonKey(name: 'findKey') this.findkey = '',
      @JsonKey(name: 'name') this.name = '',
      @JsonKey(name: 'code') this.code = '',
      @JsonKey(name: 'avatarUrl') this.avatarUrl = '',
      @JsonKey(name: 'parentComment') this.parentComment,
      @JsonKey(name: 'type') this.type = '',
      @JsonKey(name: 'childCommentWithData')
      final List<Comment> childCommentWithData = const [],
      @JsonKey(name: 'createDate') this.createDate = '',
      @JsonKey(name: 'user') this.user = anonymousUser,
      @JsonKey(name: 'likeUsers') final List<MyUser> likeusers = const [],
      @JsonKey(name: 'childComment')
      final List<Comment> childComment = const []})
      : _childCommentWithData = childCommentWithData,
        _likeusers = likeusers,
        _childComment = childComment,
        super._();

  factory _$_Comment.fromJson(Map<String, dynamic> json) =>
      _$$_CommentFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'website')
  final String website;
  @override
  @JsonKey(name: 'content')
  final String content;
  @override
  @JsonKey(name: 'findKey')
  final String findkey;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'code')
  final String code;
  @override
  @JsonKey(name: 'avatarUrl')
  final String avatarUrl;
  @override
  @JsonKey(name: 'parentComment')
  final Comment? parentComment;
  @override
  @JsonKey(name: 'type')
  final String type;
  final List<Comment> _childCommentWithData;
  @override
  @JsonKey(name: 'childCommentWithData')
  List<Comment> get childCommentWithData {
    if (_childCommentWithData is EqualUnmodifiableListView)
      return _childCommentWithData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_childCommentWithData);
  }

  @override
  @JsonKey(name: 'createDate')
  final String createDate;
  @override
  @JsonKey(name: 'user')
  final MyUser user;
  final List<MyUser> _likeusers;
  @override
  @JsonKey(name: 'likeUsers')
  List<MyUser> get likeusers {
    if (_likeusers is EqualUnmodifiableListView) return _likeusers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likeusers);
  }

  final List<Comment> _childComment;
  @override
  @JsonKey(name: 'childComment')
  List<Comment> get childComment {
    if (_childComment is EqualUnmodifiableListView) return _childComment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_childComment);
  }

  @override
  String toString() {
    return 'Comment(id: $id, email: $email, website: $website, content: $content, findkey: $findkey, name: $name, code: $code, avatarUrl: $avatarUrl, parentComment: $parentComment, type: $type, childCommentWithData: $childCommentWithData, createDate: $createDate, user: $user, likeusers: $likeusers, childComment: $childComment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Comment &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.findkey, findkey) || other.findkey == findkey) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.parentComment, parentComment) ||
                other.parentComment == parentComment) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._childCommentWithData, _childCommentWithData) &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._likeusers, _likeusers) &&
            const DeepCollectionEquality()
                .equals(other._childComment, _childComment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      website,
      content,
      findkey,
      name,
      code,
      avatarUrl,
      parentComment,
      type,
      const DeepCollectionEquality().hash(_childCommentWithData),
      createDate,
      user,
      const DeepCollectionEquality().hash(_likeusers),
      const DeepCollectionEquality().hash(_childComment));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentCopyWith<_$_Comment> get copyWith =>
      __$$_CommentCopyWithImpl<_$_Comment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentToJson(
      this,
    );
  }
}

abstract class _Comment extends Comment {
  const factory _Comment(
          {@JsonKey(name: 'id') final int id,
          @JsonKey(name: 'email') final String email,
          @JsonKey(name: 'website') final String website,
          @JsonKey(name: 'content') final String content,
          @JsonKey(name: 'findKey') final String findkey,
          @JsonKey(name: 'name') final String name,
          @JsonKey(name: 'code') final String code,
          @JsonKey(name: 'avatarUrl') final String avatarUrl,
          @JsonKey(name: 'parentComment') final Comment? parentComment,
          @JsonKey(name: 'type') final String type,
          @JsonKey(name: 'childCommentWithData')
          final List<Comment> childCommentWithData,
          @JsonKey(name: 'createDate') final String createDate,
          @JsonKey(name: 'user') final MyUser user,
          @JsonKey(name: 'likeUsers') final List<MyUser> likeusers,
          @JsonKey(name: 'childComment') final List<Comment> childComment}) =
      _$_Comment;
  const _Comment._() : super._();

  factory _Comment.fromJson(Map<String, dynamic> json) = _$_Comment.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'website')
  String get website;
  @override
  @JsonKey(name: 'content')
  String get content;
  @override
  @JsonKey(name: 'findKey')
  String get findkey;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'code')
  String get code;
  @override
  @JsonKey(name: 'avatarUrl')
  String get avatarUrl;
  @override
  @JsonKey(name: 'parentComment')
  Comment? get parentComment;
  @override
  @JsonKey(name: 'type')
  String get type;
  @override
  @JsonKey(name: 'childCommentWithData')
  List<Comment> get childCommentWithData;
  @override
  @JsonKey(name: 'createDate')
  String get createDate;
  @override
  @JsonKey(name: 'user')
  MyUser get user;
  @override
  @JsonKey(name: 'likeUsers')
  List<MyUser> get likeusers;
  @override
  @JsonKey(name: 'childComment')
  List<Comment> get childComment;
  @override
  @JsonKey(ignore: true)
  _$$_CommentCopyWith<_$_Comment> get copyWith =>
      throw _privateConstructorUsedError;
}
