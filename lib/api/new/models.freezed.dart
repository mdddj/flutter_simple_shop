// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TKCarousel _$TKCarouselFromJson(Map<String, dynamic> json) {
  return _TKCarousel.fromJson(json);
}

/// @nodoc
mixin _$TKCarousel {
  @JsonKey(name: 'activityID')
  String get activityID => throw _privateConstructorUsedError;
  @JsonKey(name: 'link')
  String get link => throw _privateConstructorUsedError;
  @JsonKey(name: 'sourceType')
  int get sourceType => throw _privateConstructorUsedError;
  @JsonKey(name: 'topicID')
  int get topicID => throw _privateConstructorUsedError;
  @JsonKey(name: 'topicImage')
  String get topicImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'topicName')
  String get topicName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TKCarouselCopyWith<TKCarousel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TKCarouselCopyWith<$Res> {
  factory $TKCarouselCopyWith(
          TKCarousel value, $Res Function(TKCarousel) then) =
      _$TKCarouselCopyWithImpl<$Res, TKCarousel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'activityID') String activityID,
      @JsonKey(name: 'link') String link,
      @JsonKey(name: 'sourceType') int sourceType,
      @JsonKey(name: 'topicID') int topicID,
      @JsonKey(name: 'topicImage') String topicImage,
      @JsonKey(name: 'topicName') String topicName});
}

/// @nodoc
class _$TKCarouselCopyWithImpl<$Res, $Val extends TKCarousel>
    implements $TKCarouselCopyWith<$Res> {
  _$TKCarouselCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityID = null,
    Object? link = null,
    Object? sourceType = null,
    Object? topicID = null,
    Object? topicImage = null,
    Object? topicName = null,
  }) {
    return _then(_value.copyWith(
      activityID: null == activityID
          ? _value.activityID
          : activityID // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      sourceType: null == sourceType
          ? _value.sourceType
          : sourceType // ignore: cast_nullable_to_non_nullable
              as int,
      topicID: null == topicID
          ? _value.topicID
          : topicID // ignore: cast_nullable_to_non_nullable
              as int,
      topicImage: null == topicImage
          ? _value.topicImage
          : topicImage // ignore: cast_nullable_to_non_nullable
              as String,
      topicName: null == topicName
          ? _value.topicName
          : topicName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TKCarouselImplCopyWith<$Res>
    implements $TKCarouselCopyWith<$Res> {
  factory _$$TKCarouselImplCopyWith(
          _$TKCarouselImpl value, $Res Function(_$TKCarouselImpl) then) =
      __$$TKCarouselImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'activityID') String activityID,
      @JsonKey(name: 'link') String link,
      @JsonKey(name: 'sourceType') int sourceType,
      @JsonKey(name: 'topicID') int topicID,
      @JsonKey(name: 'topicImage') String topicImage,
      @JsonKey(name: 'topicName') String topicName});
}

/// @nodoc
class __$$TKCarouselImplCopyWithImpl<$Res>
    extends _$TKCarouselCopyWithImpl<$Res, _$TKCarouselImpl>
    implements _$$TKCarouselImplCopyWith<$Res> {
  __$$TKCarouselImplCopyWithImpl(
      _$TKCarouselImpl _value, $Res Function(_$TKCarouselImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityID = null,
    Object? link = null,
    Object? sourceType = null,
    Object? topicID = null,
    Object? topicImage = null,
    Object? topicName = null,
  }) {
    return _then(_$TKCarouselImpl(
      activityID: null == activityID
          ? _value.activityID
          : activityID // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      sourceType: null == sourceType
          ? _value.sourceType
          : sourceType // ignore: cast_nullable_to_non_nullable
              as int,
      topicID: null == topicID
          ? _value.topicID
          : topicID // ignore: cast_nullable_to_non_nullable
              as int,
      topicImage: null == topicImage
          ? _value.topicImage
          : topicImage // ignore: cast_nullable_to_non_nullable
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
class _$TKCarouselImpl extends _TKCarousel {
  const _$TKCarouselImpl(
      {@JsonKey(name: 'activityID') this.activityID = '',
      @JsonKey(name: 'link') this.link = '',
      @JsonKey(name: 'sourceType') this.sourceType = 0,
      @JsonKey(name: 'topicID') this.topicID = 0,
      @JsonKey(name: 'topicImage') this.topicImage = '',
      @JsonKey(name: 'topicName') this.topicName = ''})
      : super._();

  factory _$TKCarouselImpl.fromJson(Map<String, dynamic> json) =>
      _$$TKCarouselImplFromJson(json);

  @override
  @JsonKey(name: 'activityID')
  final String activityID;
  @override
  @JsonKey(name: 'link')
  final String link;
  @override
  @JsonKey(name: 'sourceType')
  final int sourceType;
  @override
  @JsonKey(name: 'topicID')
  final int topicID;
  @override
  @JsonKey(name: 'topicImage')
  final String topicImage;
  @override
  @JsonKey(name: 'topicName')
  final String topicName;

  @override
  String toString() {
    return 'TKCarousel(activityID: $activityID, link: $link, sourceType: $sourceType, topicID: $topicID, topicImage: $topicImage, topicName: $topicName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TKCarouselImpl &&
            (identical(other.activityID, activityID) ||
                other.activityID == activityID) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.sourceType, sourceType) ||
                other.sourceType == sourceType) &&
            (identical(other.topicID, topicID) || other.topicID == topicID) &&
            (identical(other.topicImage, topicImage) ||
                other.topicImage == topicImage) &&
            (identical(other.topicName, topicName) ||
                other.topicName == topicName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, activityID, link, sourceType,
      topicID, topicImage, topicName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TKCarouselImplCopyWith<_$TKCarouselImpl> get copyWith =>
      __$$TKCarouselImplCopyWithImpl<_$TKCarouselImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TKCarouselImplToJson(
      this,
    );
  }
}

abstract class _TKCarousel extends TKCarousel {
  const factory _TKCarousel(
      {@JsonKey(name: 'activityID') final String activityID,
      @JsonKey(name: 'link') final String link,
      @JsonKey(name: 'sourceType') final int sourceType,
      @JsonKey(name: 'topicID') final int topicID,
      @JsonKey(name: 'topicImage') final String topicImage,
      @JsonKey(name: 'topicName') final String topicName}) = _$TKCarouselImpl;
  const _TKCarousel._() : super._();

  factory _TKCarousel.fromJson(Map<String, dynamic> json) =
      _$TKCarouselImpl.fromJson;

  @override
  @JsonKey(name: 'activityID')
  String get activityID;
  @override
  @JsonKey(name: 'link')
  String get link;
  @override
  @JsonKey(name: 'sourceType')
  int get sourceType;
  @override
  @JsonKey(name: 'topicID')
  int get topicID;
  @override
  @JsonKey(name: 'topicImage')
  String get topicImage;
  @override
  @JsonKey(name: 'topicName')
  String get topicName;
  @override
  @JsonKey(ignore: true)
  _$$TKCarouselImplCopyWith<_$TKCarouselImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
