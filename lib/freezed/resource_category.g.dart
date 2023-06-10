// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResourceCategory _$$_ResourceCategoryFromJson(Map<String, dynamic> json) =>
    _$_ResourceCategory(
      description: json['description'] as String? ?? '',
      id: json['id'] as int? ?? 0,
      logo: json['logo'] as String? ?? '',
      name: json['name'] as String? ?? '',
      type: json['type'],
    );

Map<String, dynamic> _$$_ResourceCategoryToJson(_$_ResourceCategory instance) =>
    <String, dynamic>{
      'description': instance.description,
      'id': instance.id,
      'logo': instance.logo,
      'name': instance.name,
      'type': instance.type,
    };

_$_Resource _$$_ResourceFromJson(Map<String, dynamic> json) => _$_Resource(
      authority: json['authority'] as int? ?? 0,
      clickcount: json['clickCount'] as int? ?? 0,
      content: json['content'] as String? ?? '',
      createdate: json['createDate'] as String? ?? '',
      description: json['description'] as String? ?? '',
      id: json['id'] as int? ?? 0,
      label: json['label'] as String? ?? '',
      links: json['links'] as String? ?? '',
      thumbnailimage: json['thumbnailImage'] as String? ?? '',
      title: json['title'] as String? ?? '',
      type: json['type'] as String? ?? '',
      category: json['category'] == null
          ? const ResourceCategory()
          : ResourceCategory.fromJson(json['category'] as Map<String, dynamic>),
      user: MyUser.fromJson(json['user'] as Map<String, dynamic>),
      meetModel:
          json['mianji'] == null ? null : MeetModel.fromJson(json['mianji']),
      images: json['images'] == null
          ? const IListConst([])
          : IList<FileInfo>.fromJson(json['images'],
              (value) => FileInfo.fromJson(value as Map<String, dynamic>)),
    );

Map<String, dynamic> _$$_ResourceToJson(_$_Resource instance) =>
    <String, dynamic>{
      'authority': instance.authority,
      'clickCount': instance.clickcount,
      'content': instance.content,
      'createDate': instance.createdate,
      'description': instance.description,
      'id': instance.id,
      'label': instance.label,
      'links': instance.links,
      'thumbnailImage': instance.thumbnailimage,
      'title': instance.title,
      'type': instance.type,
      'category': instance.category,
      'user': instance.user,
      'mianji': instance.meetModel,
      'images': instance.images.toJson(
        (value) => value,
      ),
    };

_$_FileInfo _$$_FileInfoFromJson(Map<String, dynamic> json) => _$_FileInfo(
      absolutePath: json['absolutePath'] as String? ?? '',
      collect: json['collect'] as bool? ?? false,
      createDate: json['createDate'] as String? ?? '',
      fileName: json['fileName'] as String? ?? '',
      fileSize: json['fileSize'] as int? ?? 0,
      fileType: json['fileType'] as String? ?? '',
      height: json['height'] as int? ?? 0,
      id: json['id'] as int? ?? 0,
      intro: json['intro'] as String? ?? '',
      tagColor: json['tagColor'] as String? ?? '',
      url: json['url'] as String? ?? '',
      width: json['width'] as int? ?? 0,
    );

Map<String, dynamic> _$$_FileInfoToJson(_$_FileInfo instance) =>
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
      'url': instance.url,
      'width': instance.width,
    };
