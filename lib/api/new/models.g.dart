// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TKCarouselImpl _$$TKCarouselImplFromJson(Map<String, dynamic> json) =>
    _$TKCarouselImpl(
      activityID: json['activityID'] as String? ?? '',
      link: json['link'] as String? ?? '',
      sourceType: json['sourceType'] as int? ?? 0,
      topicID: json['topicID'] as int? ?? 0,
      topicImage: json['topicImage'] as String? ?? '',
      topicName: json['topicName'] as String? ?? '',
    );

Map<String, dynamic> _$$TKCarouselImplToJson(_$TKCarouselImpl instance) =>
    <String, dynamic>{
      'activityID': instance.activityID,
      'link': instance.link,
      'sourceType': instance.sourceType,
      'topicID': instance.topicID,
      'topicImage': instance.topicImage,
      'topicName': instance.topicName,
    };
