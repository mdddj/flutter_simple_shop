// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Report _$$_ReportFromJson(Map<String, dynamic> json) => _$_Report(
      id: json['id'] as int? ?? 0,
      content: json['content'] as String? ?? '',
      type: json['type'] as String? ?? '',
      createtime: json['createTime'] as String? ?? '',
      status: json['status'] as int? ?? 0,
      comment: json['comment'] as String? ?? '',
      user: json['user'] == null
          ? anonymousUser
          : MyUser.fromJson(json['user'] as Map<String, dynamic>),
      images: json['images'] == null
          ? const IListConst([])
          : IList<FileInfo>.fromJson(json['images'],
              (value) => FileInfo.fromJson(value as Map<String, dynamic>)),
    );

Map<String, dynamic> _$$_ReportToJson(_$_Report instance) => <String, dynamic>{
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
    };

_$_AddReportParams _$$_AddReportParamsFromJson(Map<String, dynamic> json) =>
    _$_AddReportParams(
      content: json['content'] as String? ?? '',
      type: json['type'] as String? ?? '',
    );

Map<String, dynamic> _$$_AddReportParamsToJson(_$_AddReportParams instance) =>
    <String, dynamic>{
      'content': instance.content,
      'type': instance.type,
    };
