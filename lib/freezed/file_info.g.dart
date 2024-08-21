// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FileInfoImpl _$$FileInfoImplFromJson(Map<String, dynamic> json) =>
    _$FileInfoImpl(
      absolutePath: json['absolutePath'] as String? ?? '',
      collect: json['collect'] as bool? ?? false,
      createDate: json['createDate'] as String? ?? '',
      fileName: json['fileName'] as String? ?? '',
      fileSize: (json['fileSize'] as num?)?.toInt() ?? 0,
      fileType: json['fileType'] as String? ?? '',
      height: (json['height'] as num?)?.toInt() ?? 0,
      id: (json['id'] as num?)?.toInt() ?? 0,
      intro: json['intro'] as String? ?? '',
      tagColor: json['tagColor'] as String? ?? '',
      updateDate: json['updateDate'] as String? ?? '',
      url: json['url'] as String? ?? '',
      width: (json['width'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$FileInfoImplToJson(_$FileInfoImpl instance) =>
    <String, dynamic>{
      'absolutePath': instance.absolutePath,
      'collect': instance.collect,
      'createDate': instance.createDate,
      'fileName': instance.fileName,
      'fileSize': instance.fileSize,
      'fileType': instance.fileType,
      'height': instance.height,
      'id': instance.id,
      'intro': instance.intro,
      'tagColor': instance.tagColor,
      'updateDate': instance.updateDate,
      'url': instance.url,
      'width': instance.width,
    };
