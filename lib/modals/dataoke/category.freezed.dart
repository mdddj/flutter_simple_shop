// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Category {

@HiveField(0) String get cname;@HiveField(1) String get cpic;@HiveField(2) List<Subcategory> get subcategories;@HiveField(3) int get cid;
/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryCopyWith<Category> get copyWith => _$CategoryCopyWithImpl<Category>(this as Category, _$identity);

  /// Serializes this Category to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Category&&(identical(other.cname, cname) || other.cname == cname)&&(identical(other.cpic, cpic) || other.cpic == cpic)&&const DeepCollectionEquality().equals(other.subcategories, subcategories)&&(identical(other.cid, cid) || other.cid == cid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cname,cpic,const DeepCollectionEquality().hash(subcategories),cid);

@override
String toString() {
  return 'Category(cname: $cname, cpic: $cpic, subcategories: $subcategories, cid: $cid)';
}


}

/// @nodoc
abstract mixin class $CategoryCopyWith<$Res>  {
  factory $CategoryCopyWith(Category value, $Res Function(Category) _then) = _$CategoryCopyWithImpl;
@useResult
$Res call({
@HiveField(0) String cname,@HiveField(1) String cpic,@HiveField(2) List<Subcategory> subcategories,@HiveField(3) int cid
});




}
/// @nodoc
class _$CategoryCopyWithImpl<$Res>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._self, this._then);

  final Category _self;
  final $Res Function(Category) _then;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cname = null,Object? cpic = null,Object? subcategories = null,Object? cid = null,}) {
  return _then(_self.copyWith(
cname: null == cname ? _self.cname : cname // ignore: cast_nullable_to_non_nullable
as String,cpic: null == cpic ? _self.cpic : cpic // ignore: cast_nullable_to_non_nullable
as String,subcategories: null == subcategories ? _self.subcategories : subcategories // ignore: cast_nullable_to_non_nullable
as List<Subcategory>,cid: null == cid ? _self.cid : cid // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Category extends Category {
  const _Category({@HiveField(0) this.cname = '', @HiveField(1) this.cpic = '', @HiveField(2) final  List<Subcategory> subcategories = const [], @HiveField(3) this.cid = 0}): _subcategories = subcategories,super._();
  factory _Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);

@override@JsonKey()@HiveField(0) final  String cname;
@override@JsonKey()@HiveField(1) final  String cpic;
 final  List<Subcategory> _subcategories;
@override@JsonKey()@HiveField(2) List<Subcategory> get subcategories {
  if (_subcategories is EqualUnmodifiableListView) return _subcategories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_subcategories);
}

@override@JsonKey()@HiveField(3) final  int cid;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryCopyWith<_Category> get copyWith => __$CategoryCopyWithImpl<_Category>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Category&&(identical(other.cname, cname) || other.cname == cname)&&(identical(other.cpic, cpic) || other.cpic == cpic)&&const DeepCollectionEquality().equals(other._subcategories, _subcategories)&&(identical(other.cid, cid) || other.cid == cid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cname,cpic,const DeepCollectionEquality().hash(_subcategories),cid);

@override
String toString() {
  return 'Category(cname: $cname, cpic: $cpic, subcategories: $subcategories, cid: $cid)';
}


}

/// @nodoc
abstract mixin class _$CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) _then) = __$CategoryCopyWithImpl;
@override @useResult
$Res call({
@HiveField(0) String cname,@HiveField(1) String cpic,@HiveField(2) List<Subcategory> subcategories,@HiveField(3) int cid
});




}
/// @nodoc
class __$CategoryCopyWithImpl<$Res>
    implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(this._self, this._then);

  final _Category _self;
  final $Res Function(_Category) _then;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cname = null,Object? cpic = null,Object? subcategories = null,Object? cid = null,}) {
  return _then(_Category(
cname: null == cname ? _self.cname : cname // ignore: cast_nullable_to_non_nullable
as String,cpic: null == cpic ? _self.cpic : cpic // ignore: cast_nullable_to_non_nullable
as String,subcategories: null == subcategories ? _self._subcategories : subcategories // ignore: cast_nullable_to_non_nullable
as List<Subcategory>,cid: null == cid ? _self.cid : cid // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$Subcategory {

@HiveField(0) int get subcid;@HiveField(1) String get scpic;@HiveField(2) String get subcname;
/// Create a copy of Subcategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubcategoryCopyWith<Subcategory> get copyWith => _$SubcategoryCopyWithImpl<Subcategory>(this as Subcategory, _$identity);

  /// Serializes this Subcategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Subcategory&&(identical(other.subcid, subcid) || other.subcid == subcid)&&(identical(other.scpic, scpic) || other.scpic == scpic)&&(identical(other.subcname, subcname) || other.subcname == subcname));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subcid,scpic,subcname);

@override
String toString() {
  return 'Subcategory(subcid: $subcid, scpic: $scpic, subcname: $subcname)';
}


}

/// @nodoc
abstract mixin class $SubcategoryCopyWith<$Res>  {
  factory $SubcategoryCopyWith(Subcategory value, $Res Function(Subcategory) _then) = _$SubcategoryCopyWithImpl;
@useResult
$Res call({
@HiveField(0) int subcid,@HiveField(1) String scpic,@HiveField(2) String subcname
});




}
/// @nodoc
class _$SubcategoryCopyWithImpl<$Res>
    implements $SubcategoryCopyWith<$Res> {
  _$SubcategoryCopyWithImpl(this._self, this._then);

  final Subcategory _self;
  final $Res Function(Subcategory) _then;

/// Create a copy of Subcategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subcid = null,Object? scpic = null,Object? subcname = null,}) {
  return _then(_self.copyWith(
subcid: null == subcid ? _self.subcid : subcid // ignore: cast_nullable_to_non_nullable
as int,scpic: null == scpic ? _self.scpic : scpic // ignore: cast_nullable_to_non_nullable
as String,subcname: null == subcname ? _self.subcname : subcname // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Subcategory extends Subcategory {
  const _Subcategory({@HiveField(0) this.subcid = 0, @HiveField(1) this.scpic = '', @HiveField(2) this.subcname = ''}): super._();
  factory _Subcategory.fromJson(Map<String, dynamic> json) => _$SubcategoryFromJson(json);

@override@JsonKey()@HiveField(0) final  int subcid;
@override@JsonKey()@HiveField(1) final  String scpic;
@override@JsonKey()@HiveField(2) final  String subcname;

/// Create a copy of Subcategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubcategoryCopyWith<_Subcategory> get copyWith => __$SubcategoryCopyWithImpl<_Subcategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubcategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Subcategory&&(identical(other.subcid, subcid) || other.subcid == subcid)&&(identical(other.scpic, scpic) || other.scpic == scpic)&&(identical(other.subcname, subcname) || other.subcname == subcname));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subcid,scpic,subcname);

@override
String toString() {
  return 'Subcategory(subcid: $subcid, scpic: $scpic, subcname: $subcname)';
}


}

/// @nodoc
abstract mixin class _$SubcategoryCopyWith<$Res> implements $SubcategoryCopyWith<$Res> {
  factory _$SubcategoryCopyWith(_Subcategory value, $Res Function(_Subcategory) _then) = __$SubcategoryCopyWithImpl;
@override @useResult
$Res call({
@HiveField(0) int subcid,@HiveField(1) String scpic,@HiveField(2) String subcname
});




}
/// @nodoc
class __$SubcategoryCopyWithImpl<$Res>
    implements _$SubcategoryCopyWith<$Res> {
  __$SubcategoryCopyWithImpl(this._self, this._then);

  final _Subcategory _self;
  final $Res Function(_Subcategory) _then;

/// Create a copy of Subcategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subcid = null,Object? scpic = null,Object? subcname = null,}) {
  return _then(_Subcategory(
subcid: null == subcid ? _self.subcid : subcid // ignore: cast_nullable_to_non_nullable
as int,scpic: null == scpic ? _self.scpic : scpic // ignore: cast_nullable_to_non_nullable
as String,subcname: null == subcname ? _self.subcname : subcname // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$CategoryWrapper {

@HiveField(0) List<Category> get categorys;
/// Create a copy of CategoryWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryWrapperCopyWith<CategoryWrapper> get copyWith => _$CategoryWrapperCopyWithImpl<CategoryWrapper>(this as CategoryWrapper, _$identity);

  /// Serializes this CategoryWrapper to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryWrapper&&const DeepCollectionEquality().equals(other.categorys, categorys));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(categorys));

@override
String toString() {
  return 'CategoryWrapper(categorys: $categorys)';
}


}

/// @nodoc
abstract mixin class $CategoryWrapperCopyWith<$Res>  {
  factory $CategoryWrapperCopyWith(CategoryWrapper value, $Res Function(CategoryWrapper) _then) = _$CategoryWrapperCopyWithImpl;
@useResult
$Res call({
@HiveField(0) List<Category> categorys
});




}
/// @nodoc
class _$CategoryWrapperCopyWithImpl<$Res>
    implements $CategoryWrapperCopyWith<$Res> {
  _$CategoryWrapperCopyWithImpl(this._self, this._then);

  final CategoryWrapper _self;
  final $Res Function(CategoryWrapper) _then;

/// Create a copy of CategoryWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categorys = null,}) {
  return _then(_self.copyWith(
categorys: null == categorys ? _self.categorys : categorys // ignore: cast_nullable_to_non_nullable
as List<Category>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CategoryWrapper extends CategoryWrapper {
  const _CategoryWrapper({@HiveField(0) final  List<Category> categorys = const []}): _categorys = categorys,super._();
  factory _CategoryWrapper.fromJson(Map<String, dynamic> json) => _$CategoryWrapperFromJson(json);

 final  List<Category> _categorys;
@override@JsonKey()@HiveField(0) List<Category> get categorys {
  if (_categorys is EqualUnmodifiableListView) return _categorys;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categorys);
}


/// Create a copy of CategoryWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryWrapperCopyWith<_CategoryWrapper> get copyWith => __$CategoryWrapperCopyWithImpl<_CategoryWrapper>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryWrapperToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryWrapper&&const DeepCollectionEquality().equals(other._categorys, _categorys));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categorys));

@override
String toString() {
  return 'CategoryWrapper(categorys: $categorys)';
}


}

/// @nodoc
abstract mixin class _$CategoryWrapperCopyWith<$Res> implements $CategoryWrapperCopyWith<$Res> {
  factory _$CategoryWrapperCopyWith(_CategoryWrapper value, $Res Function(_CategoryWrapper) _then) = __$CategoryWrapperCopyWithImpl;
@override @useResult
$Res call({
@HiveField(0) List<Category> categorys
});




}
/// @nodoc
class __$CategoryWrapperCopyWithImpl<$Res>
    implements _$CategoryWrapperCopyWith<$Res> {
  __$CategoryWrapperCopyWithImpl(this._self, this._then);

  final _CategoryWrapper _self;
  final $Res Function(_CategoryWrapper) _then;

/// Create a copy of CategoryWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categorys = null,}) {
  return _then(_CategoryWrapper(
categorys: null == categorys ? _self._categorys : categorys // ignore: cast_nullable_to_non_nullable
as List<Category>,
  ));
}


}

// dart format on
