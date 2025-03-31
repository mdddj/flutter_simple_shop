// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'carousel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Carousel {

 String get topicImage; String get activityId; int get topicId; int get sourceType; String get link; String get topicName;
/// Create a copy of Carousel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CarouselCopyWith<Carousel> get copyWith => _$CarouselCopyWithImpl<Carousel>(this as Carousel, _$identity);

  /// Serializes this Carousel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Carousel&&(identical(other.topicImage, topicImage) || other.topicImage == topicImage)&&(identical(other.activityId, activityId) || other.activityId == activityId)&&(identical(other.topicId, topicId) || other.topicId == topicId)&&(identical(other.sourceType, sourceType) || other.sourceType == sourceType)&&(identical(other.link, link) || other.link == link)&&(identical(other.topicName, topicName) || other.topicName == topicName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,topicImage,activityId,topicId,sourceType,link,topicName);

@override
String toString() {
  return 'Carousel(topicImage: $topicImage, activityId: $activityId, topicId: $topicId, sourceType: $sourceType, link: $link, topicName: $topicName)';
}


}

/// @nodoc
abstract mixin class $CarouselCopyWith<$Res>  {
  factory $CarouselCopyWith(Carousel value, $Res Function(Carousel) _then) = _$CarouselCopyWithImpl;
@useResult
$Res call({
 String topicImage, String activityId, int topicId, int sourceType, String link, String topicName
});




}
/// @nodoc
class _$CarouselCopyWithImpl<$Res>
    implements $CarouselCopyWith<$Res> {
  _$CarouselCopyWithImpl(this._self, this._then);

  final Carousel _self;
  final $Res Function(Carousel) _then;

/// Create a copy of Carousel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? topicImage = null,Object? activityId = null,Object? topicId = null,Object? sourceType = null,Object? link = null,Object? topicName = null,}) {
  return _then(_self.copyWith(
topicImage: null == topicImage ? _self.topicImage : topicImage // ignore: cast_nullable_to_non_nullable
as String,activityId: null == activityId ? _self.activityId : activityId // ignore: cast_nullable_to_non_nullable
as String,topicId: null == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as int,sourceType: null == sourceType ? _self.sourceType : sourceType // ignore: cast_nullable_to_non_nullable
as int,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,topicName: null == topicName ? _self.topicName : topicName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Carousel extends Carousel {
  const _Carousel({this.topicImage = '', this.activityId = '', this.topicId = 0, this.sourceType = 0, this.link = '', this.topicName = ''}): super._();
  factory _Carousel.fromJson(Map<String, dynamic> json) => _$CarouselFromJson(json);

@override@JsonKey() final  String topicImage;
@override@JsonKey() final  String activityId;
@override@JsonKey() final  int topicId;
@override@JsonKey() final  int sourceType;
@override@JsonKey() final  String link;
@override@JsonKey() final  String topicName;

/// Create a copy of Carousel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CarouselCopyWith<_Carousel> get copyWith => __$CarouselCopyWithImpl<_Carousel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CarouselToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Carousel&&(identical(other.topicImage, topicImage) || other.topicImage == topicImage)&&(identical(other.activityId, activityId) || other.activityId == activityId)&&(identical(other.topicId, topicId) || other.topicId == topicId)&&(identical(other.sourceType, sourceType) || other.sourceType == sourceType)&&(identical(other.link, link) || other.link == link)&&(identical(other.topicName, topicName) || other.topicName == topicName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,topicImage,activityId,topicId,sourceType,link,topicName);

@override
String toString() {
  return 'Carousel(topicImage: $topicImage, activityId: $activityId, topicId: $topicId, sourceType: $sourceType, link: $link, topicName: $topicName)';
}


}

/// @nodoc
abstract mixin class _$CarouselCopyWith<$Res> implements $CarouselCopyWith<$Res> {
  factory _$CarouselCopyWith(_Carousel value, $Res Function(_Carousel) _then) = __$CarouselCopyWithImpl;
@override @useResult
$Res call({
 String topicImage, String activityId, int topicId, int sourceType, String link, String topicName
});




}
/// @nodoc
class __$CarouselCopyWithImpl<$Res>
    implements _$CarouselCopyWith<$Res> {
  __$CarouselCopyWithImpl(this._self, this._then);

  final _Carousel _self;
  final $Res Function(_Carousel) _then;

/// Create a copy of Carousel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? topicImage = null,Object? activityId = null,Object? topicId = null,Object? sourceType = null,Object? link = null,Object? topicName = null,}) {
  return _then(_Carousel(
topicImage: null == topicImage ? _self.topicImage : topicImage // ignore: cast_nullable_to_non_nullable
as String,activityId: null == activityId ? _self.activityId : activityId // ignore: cast_nullable_to_non_nullable
as String,topicId: null == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as int,sourceType: null == sourceType ? _self.sourceType : sourceType // ignore: cast_nullable_to_non_nullable
as int,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,topicName: null == topicName ? _self.topicName : topicName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
