// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'carousel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Carousel _$CarouselFromJson(Map<String, dynamic> json) {
  return _Carousel.fromJson(json);
}

/// @nodoc
mixin _$Carousel {
  String get topicImage => throw _privateConstructorUsedError;
  String get activityId => throw _privateConstructorUsedError;
  int get topicId => throw _privateConstructorUsedError;
  int get sourceType => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get topicName => throw _privateConstructorUsedError;

  /// Serializes this Carousel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Carousel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CarouselCopyWith<Carousel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarouselCopyWith<$Res> {
  factory $CarouselCopyWith(Carousel value, $Res Function(Carousel) then) =
      _$CarouselCopyWithImpl<$Res, Carousel>;
  @useResult
  $Res call(
      {String topicImage,
      String activityId,
      int topicId,
      int sourceType,
      String link,
      String topicName});
}

/// @nodoc
class _$CarouselCopyWithImpl<$Res, $Val extends Carousel>
    implements $CarouselCopyWith<$Res> {
  _$CarouselCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Carousel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topicImage = null,
    Object? activityId = null,
    Object? topicId = null,
    Object? sourceType = null,
    Object? link = null,
    Object? topicName = null,
  }) {
    return _then(_value.copyWith(
      topicImage: null == topicImage
          ? _value.topicImage
          : topicImage // ignore: cast_nullable_to_non_nullable
              as String,
      activityId: null == activityId
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as String,
      topicId: null == topicId
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as int,
      sourceType: null == sourceType
          ? _value.sourceType
          : sourceType // ignore: cast_nullable_to_non_nullable
              as int,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      topicName: null == topicName
          ? _value.topicName
          : topicName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CarouselImplCopyWith<$Res>
    implements $CarouselCopyWith<$Res> {
  factory _$$CarouselImplCopyWith(
          _$CarouselImpl value, $Res Function(_$CarouselImpl) then) =
      __$$CarouselImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String topicImage,
      String activityId,
      int topicId,
      int sourceType,
      String link,
      String topicName});
}

/// @nodoc
class __$$CarouselImplCopyWithImpl<$Res>
    extends _$CarouselCopyWithImpl<$Res, _$CarouselImpl>
    implements _$$CarouselImplCopyWith<$Res> {
  __$$CarouselImplCopyWithImpl(
      _$CarouselImpl _value, $Res Function(_$CarouselImpl) _then)
      : super(_value, _then);

  /// Create a copy of Carousel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topicImage = null,
    Object? activityId = null,
    Object? topicId = null,
    Object? sourceType = null,
    Object? link = null,
    Object? topicName = null,
  }) {
    return _then(_$CarouselImpl(
      topicImage: null == topicImage
          ? _value.topicImage
          : topicImage // ignore: cast_nullable_to_non_nullable
              as String,
      activityId: null == activityId
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as String,
      topicId: null == topicId
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as int,
      sourceType: null == sourceType
          ? _value.sourceType
          : sourceType // ignore: cast_nullable_to_non_nullable
              as int,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      topicName: null == topicName
          ? _value.topicName
          : topicName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarouselImpl extends _Carousel {
  const _$CarouselImpl(
      {this.topicImage = '',
      this.activityId = '',
      this.topicId = 0,
      this.sourceType = 0,
      this.link = '',
      this.topicName = ''})
      : super._();

  factory _$CarouselImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarouselImplFromJson(json);

  @override
  @JsonKey()
  final String topicImage;
  @override
  @JsonKey()
  final String activityId;
  @override
  @JsonKey()
  final int topicId;
  @override
  @JsonKey()
  final int sourceType;
  @override
  @JsonKey()
  final String link;
  @override
  @JsonKey()
  final String topicName;

  @override
  String toString() {
    return 'Carousel(topicImage: $topicImage, activityId: $activityId, topicId: $topicId, sourceType: $sourceType, link: $link, topicName: $topicName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarouselImpl &&
            (identical(other.topicImage, topicImage) ||
                other.topicImage == topicImage) &&
            (identical(other.activityId, activityId) ||
                other.activityId == activityId) &&
            (identical(other.topicId, topicId) || other.topicId == topicId) &&
            (identical(other.sourceType, sourceType) ||
                other.sourceType == sourceType) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.topicName, topicName) ||
                other.topicName == topicName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, topicImage, activityId, topicId,
      sourceType, link, topicName);

  /// Create a copy of Carousel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CarouselImplCopyWith<_$CarouselImpl> get copyWith =>
      __$$CarouselImplCopyWithImpl<_$CarouselImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarouselImplToJson(
      this,
    );
  }
}

abstract class _Carousel extends Carousel {
  const factory _Carousel(
      {final String topicImage,
      final String activityId,
      final int topicId,
      final int sourceType,
      final String link,
      final String topicName}) = _$CarouselImpl;
  const _Carousel._() : super._();

  factory _Carousel.fromJson(Map<String, dynamic> json) =
      _$CarouselImpl.fromJson;

  @override
  String get topicImage;
  @override
  String get activityId;
  @override
  int get topicId;
  @override
  int get sourceType;
  @override
  String get link;
  @override
  String get topicName;

  /// Create a copy of Carousel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarouselImplCopyWith<_$CarouselImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
