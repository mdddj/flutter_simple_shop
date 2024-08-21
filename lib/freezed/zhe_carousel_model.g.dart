// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zhe_carousel_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ZheCarouselResultImpl _$$ZheCarouselResultImplFromJson(
        Map<String, dynamic> json) =>
    _$ZheCarouselResultImpl(
      content: (json['content'] as List<dynamic>?)
              ?.map((e) => ZheCarousel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      status: (json['status'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ZheCarouselResultImplToJson(
        _$ZheCarouselResultImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'status': instance.status,
    };

_$ZheCarouselImpl _$$ZheCarouselImplFromJson(Map<String, dynamic> json) =>
    _$ZheCarouselImpl(
      code: json['code'] as String? ?? '',
      dateTime: json['date_time'] as String? ?? '',
      getUrl: json['get_url'] as String? ?? '',
      name: json['name'] as String? ?? '',
      pic: json['pic'] as String? ?? '',
    );

Map<String, dynamic> _$$ZheCarouselImplToJson(_$ZheCarouselImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'date_time': instance.dateTime,
      'get_url': instance.getUrl,
      'name': instance.name,
      'pic': instance.pic,
    };
