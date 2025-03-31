// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carousel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Carousel _$CarouselFromJson(Map<String, dynamic> json) => _Carousel(
  topicImage: json['topicImage'] as String? ?? '',
  activityId: json['activityId'] as String? ?? '',
  topicId: (json['topicId'] as num?)?.toInt() ?? 0,
  sourceType: (json['sourceType'] as num?)?.toInt() ?? 0,
  link: json['link'] as String? ?? '',
  topicName: json['topicName'] as String? ?? '',
);

Map<String, dynamic> _$CarouselToJson(_Carousel instance) => <String, dynamic>{
  'topicImage': instance.topicImage,
  'activityId': instance.activityId,
  'topicId': instance.topicId,
  'sourceType': instance.sourceType,
  'link': instance.link,
  'topicName': instance.topicName,
};
