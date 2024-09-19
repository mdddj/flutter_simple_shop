// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportImpl _$$ReportImplFromJson(Map<String, dynamic> json) => _$ReportImpl(
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

Map<String, dynamic> _$$ReportImplToJson(_$ReportImpl instance) =>
    <String, dynamic>{
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

_$AddReportParamsImpl _$$AddReportParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$AddReportParamsImpl(
      content: json['content'] as String? ?? '',
      type: json['type'] as String? ?? '',
    );

Map<String, dynamic> _$$AddReportParamsImplToJson(
        _$AddReportParamsImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'type': instance.type,
    };
