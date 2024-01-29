import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class TKCarousel with _$TKCarousel {
  const TKCarousel._();

  const factory TKCarousel({
    @JsonKey(name: 'activityID') @Default('') String activityID,
    @JsonKey(name: 'link') @Default('') String link,
    @JsonKey(name: 'sourceType') @Default(0) int sourceType,
    @JsonKey(name: 'topicID') @Default(0) int topicID,
    @JsonKey(name: 'topicImage') @Default('') String topicImage,
    @JsonKey(name: 'topicName') @Default('') String topicName,
  }) = _TKCarousel;

  factory TKCarousel.fromJson(dynamic json) => _$TKCarouselFromJson(json);
}
