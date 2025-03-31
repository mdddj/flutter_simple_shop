// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TKCarousel {

@JsonKey(name: 'activityID') String get activityID;@JsonKey(name: 'link') String get link;@JsonKey(name: 'sourceType') int get sourceType;@JsonKey(name: 'topicID') int get topicID;@JsonKey(name: 'topicImage') String get topicImage;@JsonKey(name: 'topicName') String get topicName;
/// Create a copy of TKCarousel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TKCarouselCopyWith<TKCarousel> get copyWith => _$TKCarouselCopyWithImpl<TKCarousel>(this as TKCarousel, _$identity);

  /// Serializes this TKCarousel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TKCarousel&&(identical(other.activityID, activityID) || other.activityID == activityID)&&(identical(other.link, link) || other.link == link)&&(identical(other.sourceType, sourceType) || other.sourceType == sourceType)&&(identical(other.topicID, topicID) || other.topicID == topicID)&&(identical(other.topicImage, topicImage) || other.topicImage == topicImage)&&(identical(other.topicName, topicName) || other.topicName == topicName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,activityID,link,sourceType,topicID,topicImage,topicName);

@override
String toString() {
  return 'TKCarousel(activityID: $activityID, link: $link, sourceType: $sourceType, topicID: $topicID, topicImage: $topicImage, topicName: $topicName)';
}


}

/// @nodoc
abstract mixin class $TKCarouselCopyWith<$Res>  {
  factory $TKCarouselCopyWith(TKCarousel value, $Res Function(TKCarousel) _then) = _$TKCarouselCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'activityID') String activityID,@JsonKey(name: 'link') String link,@JsonKey(name: 'sourceType') int sourceType,@JsonKey(name: 'topicID') int topicID,@JsonKey(name: 'topicImage') String topicImage,@JsonKey(name: 'topicName') String topicName
});




}
/// @nodoc
class _$TKCarouselCopyWithImpl<$Res>
    implements $TKCarouselCopyWith<$Res> {
  _$TKCarouselCopyWithImpl(this._self, this._then);

  final TKCarousel _self;
  final $Res Function(TKCarousel) _then;

/// Create a copy of TKCarousel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? activityID = null,Object? link = null,Object? sourceType = null,Object? topicID = null,Object? topicImage = null,Object? topicName = null,}) {
  return _then(_self.copyWith(
activityID: null == activityID ? _self.activityID : activityID // ignore: cast_nullable_to_non_nullable
as String,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,sourceType: null == sourceType ? _self.sourceType : sourceType // ignore: cast_nullable_to_non_nullable
as int,topicID: null == topicID ? _self.topicID : topicID // ignore: cast_nullable_to_non_nullable
as int,topicImage: null == topicImage ? _self.topicImage : topicImage // ignore: cast_nullable_to_non_nullable
as String,topicName: null == topicName ? _self.topicName : topicName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TKCarousel extends TKCarousel {
  const _TKCarousel({@JsonKey(name: 'activityID') this.activityID = '', @JsonKey(name: 'link') this.link = '', @JsonKey(name: 'sourceType') this.sourceType = 0, @JsonKey(name: 'topicID') this.topicID = 0, @JsonKey(name: 'topicImage') this.topicImage = '', @JsonKey(name: 'topicName') this.topicName = ''}): super._();
  factory _TKCarousel.fromJson(Map<String, dynamic> json) => _$TKCarouselFromJson(json);

@override@JsonKey(name: 'activityID') final  String activityID;
@override@JsonKey(name: 'link') final  String link;
@override@JsonKey(name: 'sourceType') final  int sourceType;
@override@JsonKey(name: 'topicID') final  int topicID;
@override@JsonKey(name: 'topicImage') final  String topicImage;
@override@JsonKey(name: 'topicName') final  String topicName;

/// Create a copy of TKCarousel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TKCarouselCopyWith<_TKCarousel> get copyWith => __$TKCarouselCopyWithImpl<_TKCarousel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TKCarouselToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TKCarousel&&(identical(other.activityID, activityID) || other.activityID == activityID)&&(identical(other.link, link) || other.link == link)&&(identical(other.sourceType, sourceType) || other.sourceType == sourceType)&&(identical(other.topicID, topicID) || other.topicID == topicID)&&(identical(other.topicImage, topicImage) || other.topicImage == topicImage)&&(identical(other.topicName, topicName) || other.topicName == topicName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,activityID,link,sourceType,topicID,topicImage,topicName);

@override
String toString() {
  return 'TKCarousel(activityID: $activityID, link: $link, sourceType: $sourceType, topicID: $topicID, topicImage: $topicImage, topicName: $topicName)';
}


}

/// @nodoc
abstract mixin class _$TKCarouselCopyWith<$Res> implements $TKCarouselCopyWith<$Res> {
  factory _$TKCarouselCopyWith(_TKCarousel value, $Res Function(_TKCarousel) _then) = __$TKCarouselCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'activityID') String activityID,@JsonKey(name: 'link') String link,@JsonKey(name: 'sourceType') int sourceType,@JsonKey(name: 'topicID') int topicID,@JsonKey(name: 'topicImage') String topicImage,@JsonKey(name: 'topicName') String topicName
});




}
/// @nodoc
class __$TKCarouselCopyWithImpl<$Res>
    implements _$TKCarouselCopyWith<$Res> {
  __$TKCarouselCopyWithImpl(this._self, this._then);

  final _TKCarousel _self;
  final $Res Function(_TKCarousel) _then;

/// Create a copy of TKCarousel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? activityID = null,Object? link = null,Object? sourceType = null,Object? topicID = null,Object? topicImage = null,Object? topicName = null,}) {
  return _then(_TKCarousel(
activityID: null == activityID ? _self.activityID : activityID // ignore: cast_nullable_to_non_nullable
as String,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,sourceType: null == sourceType ? _self.sourceType : sourceType // ignore: cast_nullable_to_non_nullable
as int,topicID: null == topicID ? _self.topicID : topicID // ignore: cast_nullable_to_non_nullable
as int,topicImage: null == topicImage ? _self.topicImage : topicImage // ignore: cast_nullable_to_non_nullable
as String,topicName: null == topicName ? _self.topicName : topicName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
