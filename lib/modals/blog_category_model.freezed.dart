// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blog_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BlogCategory {

 int get id; String get name; String get logo; String get intro; int get createTime;
/// Create a copy of BlogCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BlogCategoryCopyWith<BlogCategory> get copyWith => _$BlogCategoryCopyWithImpl<BlogCategory>(this as BlogCategory, _$identity);

  /// Serializes this BlogCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BlogCategory&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.intro, intro) || other.intro == intro)&&(identical(other.createTime, createTime) || other.createTime == createTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,logo,intro,createTime);

@override
String toString() {
  return 'BlogCategory(id: $id, name: $name, logo: $logo, intro: $intro, createTime: $createTime)';
}


}

/// @nodoc
abstract mixin class $BlogCategoryCopyWith<$Res>  {
  factory $BlogCategoryCopyWith(BlogCategory value, $Res Function(BlogCategory) _then) = _$BlogCategoryCopyWithImpl;
@useResult
$Res call({
 int id, String name, String logo, String intro, int createTime
});




}
/// @nodoc
class _$BlogCategoryCopyWithImpl<$Res>
    implements $BlogCategoryCopyWith<$Res> {
  _$BlogCategoryCopyWithImpl(this._self, this._then);

  final BlogCategory _self;
  final $Res Function(BlogCategory) _then;

/// Create a copy of BlogCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? logo = null,Object? intro = null,Object? createTime = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,logo: null == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String,intro: null == intro ? _self.intro : intro // ignore: cast_nullable_to_non_nullable
as String,createTime: null == createTime ? _self.createTime : createTime // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _BlogCategory extends BlogCategory {
  const _BlogCategory({required this.id, required this.name, required this.logo, required this.intro, required this.createTime}): super._();
  factory _BlogCategory.fromJson(Map<String, dynamic> json) => _$BlogCategoryFromJson(json);

@override final  int id;
@override final  String name;
@override final  String logo;
@override final  String intro;
@override final  int createTime;

/// Create a copy of BlogCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BlogCategoryCopyWith<_BlogCategory> get copyWith => __$BlogCategoryCopyWithImpl<_BlogCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BlogCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BlogCategory&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.intro, intro) || other.intro == intro)&&(identical(other.createTime, createTime) || other.createTime == createTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,logo,intro,createTime);

@override
String toString() {
  return 'BlogCategory(id: $id, name: $name, logo: $logo, intro: $intro, createTime: $createTime)';
}


}

/// @nodoc
abstract mixin class _$BlogCategoryCopyWith<$Res> implements $BlogCategoryCopyWith<$Res> {
  factory _$BlogCategoryCopyWith(_BlogCategory value, $Res Function(_BlogCategory) _then) = __$BlogCategoryCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String logo, String intro, int createTime
});




}
/// @nodoc
class __$BlogCategoryCopyWithImpl<$Res>
    implements _$BlogCategoryCopyWith<$Res> {
  __$BlogCategoryCopyWithImpl(this._self, this._then);

  final _BlogCategory _self;
  final $Res Function(_BlogCategory) _then;

/// Create a copy of BlogCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? logo = null,Object? intro = null,Object? createTime = null,}) {
  return _then(_BlogCategory(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,logo: null == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String,intro: null == intro ? _self.intro : intro // ignore: cast_nullable_to_non_nullable
as String,createTime: null == createTime ? _self.createTime : createTime // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
