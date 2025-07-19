// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Comment _$CommentFromJson(Map<String, dynamic> json) => _Comment(
      id: (json['id'] as num?)?.toInt() ?? 0,
      email: json['email'] as String? ?? '',
      website: json['website'] as String? ?? '',
      content: json['content'] as String? ?? '',
      findkey: json['findKey'] as String? ?? '',
      name: json['name'] as String? ?? '',
      code: json['code'] as String? ?? '',
      avatarUrl: json['avatarUrl'] as String? ?? '',
      parentComment: json['parentComment'] == null
          ? null
          : Comment.fromJson(json['parentComment'] as Map<String, dynamic>),
      type: json['type'] as String? ?? '',
      childCommentWithData: (json['childCommentWithData'] as List<dynamic>?)
              ?.map((e) => Comment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createDate: json['createDate'] as String? ?? '',
      user: json['user'] == null
          ? anonymousUser
          : MyUser.fromJson(json['user'] as Map<String, dynamic>),
      likeusers: (json['likeUsers'] as List<dynamic>?)
              ?.map((e) => MyUser.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      childComment: (json['childComment'] as List<dynamic>?)
              ?.map((e) => Comment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$CommentToJson(_Comment instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'website': instance.website,
      'content': instance.content,
      'findKey': instance.findkey,
      'name': instance.name,
      'code': instance.code,
      'avatarUrl': instance.avatarUrl,
      'parentComment': instance.parentComment,
      'type': instance.type,
      'childCommentWithData': instance.childCommentWithData,
      'createDate': instance.createDate,
      'user': instance.user,
      'likeUsers': instance.likeusers,
      'childComment': instance.childComment,
    };
