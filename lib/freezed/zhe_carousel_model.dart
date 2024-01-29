import 'package:freezed_annotation/freezed_annotation.dart';

part 'zhe_carousel_model.freezed.dart';
part 'zhe_carousel_model.g.dart';

@freezed
class ZheCarouselResult with _$ZheCarouselResult {
  const ZheCarouselResult._();

  const factory ZheCarouselResult({
    @JsonKey(name: 'content') @Default([]) List<ZheCarousel> content,
    @JsonKey(name: 'status') @Default(0) int status,
  }) = _ZheCarouselResult;

  factory ZheCarouselResult.fromJson(Map<String, dynamic> json) =>
      _$ZheCarouselResultFromJson(json);
}

@freezed
class ZheCarousel with _$ZheCarousel {
  const ZheCarousel._();

  const factory ZheCarousel({
    @JsonKey(name: 'code') @Default('') String code,
    @JsonKey(name: 'date_time') @Default('') String dateTime,
    @JsonKey(name: 'get_url') @Default('') String getUrl,
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'pic') @Default('') String pic,
  }) = _ZheCarousel;

  factory ZheCarousel.fromJson(Map<String, dynamic> json) =>
      _$ZheCarouselFromJson(json);
}
