import 'package:freezed_annotation/freezed_annotation.dart';

part 'carousel.freezed.dart';

part 'carousel.g.dart';

@freezed
sealed class Carousel with _$Carousel {
  const Carousel._();

  const factory Carousel({
    @Default('') String topicImage,
    @Default('') String activityId,
    @Default(0) int topicId,
    @Default(0) int sourceType,
    @Default('') String link,
    @Default('') String topicName,
  }) = _Carousel;

  factory Carousel.fromJson(Map<String, dynamic> json) =>
      _$CarouselFromJson(json);
}
