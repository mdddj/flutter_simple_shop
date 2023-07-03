import 'package:freezed_annotation/freezed_annotation.dart';

import '../provider/riverpod/model/my_user.dart';
part 'comment.freezed.dart';
part 'comment.g.dart';


///评论对象
@freezed
class Comment with _$Comment {
  const Comment._();

  const factory Comment({
    @JsonKey(name: 'id') @Default(0)  int id,
    @JsonKey(name: 'email') @Default('')  String email,
    @JsonKey(name: 'website') @Default('')  String website,
    @JsonKey(name: 'content') @Default('')  String content,
    @JsonKey(name: 'findKey') @Default('')  String findkey,
    @JsonKey(name: 'name') @Default('')  String name,
    @JsonKey(name: 'code') @Default('')  String code,
    @JsonKey(name: 'avatarUrl') @Default('')  String avatarUrl,
    @JsonKey(name: 'parentComment') Comment? parentComment,
    @JsonKey(name: 'type') @Default('')  String type,
    @JsonKey(name: 'childCommentWithData') @Default([])  List<Comment> childCommentWithData,
    @JsonKey(name: 'createDate') @Default('')  String createDate,
    @JsonKey(name: 'user') @Default(anonymousUser)  MyUser user,
    @JsonKey(name: 'likeUsers') @Default([])  List<MyUser> likeusers,
    @JsonKey(name: 'childComment') @Default([])  List<Comment> childComment,
  }) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) => _$CommentFromJson(json);

}