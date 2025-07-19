// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Report _$ReportFromJson(Map<String, dynamic> json) => _Report(
      id: (json['id'] as num?)?.toInt() ?? 0,
      content: json['content'] as String? ?? '',
      type: json['type'] as String? ?? '',
      createtime: json['createTime'] as String? ?? '',
      status: (json['status'] as num?)?.toInt() ?? 0,
      comment: json['comment'] as String? ?? '',
      user: json['user'] == null
          ? anonymousUser
          : MyUser.fromJson(json['user'] as Map<String, dynamic>),
      images: json['images'] == null
          ? const IListConst([])
          : IList<FileInfo>.fromJson(json['images'],
              (value) => FileInfo.fromJson(value as Map<String, dynamic>)),
      resourceId: (json['resourceId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ReportToJson(_Report instance) => <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'type': instance.type,
      'createTime': instance.createtime,
      'status': instance.status,
      'comment': instance.comment,
      'user': instance.user,
      'images': instance.images.toJson(
        (value) => value,
      ),
      'resourceId': instance.resourceId,
    };

_AddReportParams _$AddReportParamsFromJson(Map<String, dynamic> json) =>
    _AddReportParams(
      content: json['content'] as String? ?? '',
      type: json['type'] as String? ?? '',
    );

Map<String, dynamic> _$AddReportParamsToJson(_AddReportParams instance) =>
    <String, dynamic>{
      'content': instance.content,
      'type': instance.type,
    };
