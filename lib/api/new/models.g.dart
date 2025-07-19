// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TKCarousel _$TKCarouselFromJson(Map<String, dynamic> json) => _TKCarousel(
      activityID: json['activityID'] as String? ?? '',
      link: json['link'] as String? ?? '',
      sourceType: (json['sourceType'] as num?)?.toInt() ?? 0,
      topicID: (json['topicID'] as num?)?.toInt() ?? 0,
      topicImage: json['topicImage'] as String? ?? '',
      topicName: json['topicName'] as String? ?? '',
    );

Map<String, dynamic> _$TKCarouselToJson(_TKCarousel instance) =>
    <String, dynamic>{
      'activityID': instance.activityID,
      'link': instance.link,
      'sourceType': instance.sourceType,
      'topicID': instance.topicID,
      'topicImage': instance.topicImage,
      'topicName': instance.topicName,
    };
