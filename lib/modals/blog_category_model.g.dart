// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlogCategoryImpl _$$BlogCategoryImplFromJson(Map<String, dynamic> json) =>
    _$BlogCategoryImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      logo: json['logo'] as String,
      intro: json['intro'] as String,
      createTime: (json['createTime'] as num).toInt(),
    );

Map<String, dynamic> _$$BlogCategoryImplToJson(_$BlogCategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
      'intro': instance.intro,
      'createTime': instance.createTime,
    };
