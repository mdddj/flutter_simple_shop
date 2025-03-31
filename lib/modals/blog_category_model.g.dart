// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BlogCategory _$BlogCategoryFromJson(Map<String, dynamic> json) =>
    _BlogCategory(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      logo: json['logo'] as String,
      intro: json['intro'] as String,
      createTime: (json['createTime'] as num).toInt(),
    );

Map<String, dynamic> _$BlogCategoryToJson(_BlogCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
      'intro': instance.intro,
      'createTime': instance.createTime,
    };
