// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BlogCategory _$$_BlogCategoryFromJson(Map<String, dynamic> json) =>
    _$_BlogCategory(
      id: json['id'] as int,
      name: json['name'] as String,
      logo: json['logo'] as String,
      intro: json['intro'] as String,
      createTime: json['createTime'] as int,
    );

Map<String, dynamic> _$$_BlogCategoryToJson(_$_BlogCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
      'intro': instance.intro,
      'createTime': instance.createTime,
    };
