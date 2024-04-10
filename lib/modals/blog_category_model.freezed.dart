// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blog_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlogCategory _$BlogCategoryFromJson(Map<String, dynamic> json) {
  return _BlogCategory.fromJson(json);
}

/// @nodoc
mixin _$BlogCategory {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;
  String get intro => throw _privateConstructorUsedError;
  int get createTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlogCategoryCopyWith<BlogCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogCategoryCopyWith<$Res> {
  factory $BlogCategoryCopyWith(
          BlogCategory value, $Res Function(BlogCategory) then) =
      _$BlogCategoryCopyWithImpl<$Res, BlogCategory>;
  @useResult
  $Res call({int id, String name, String logo, String intro, int createTime});
}

/// @nodoc
class _$BlogCategoryCopyWithImpl<$Res, $Val extends BlogCategory>
    implements $BlogCategoryCopyWith<$Res> {
  _$BlogCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logo = null,
    Object? intro = null,
    Object? createTime = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      intro: null == intro
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String,
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlogCategoryImplCopyWith<$Res>
    implements $BlogCategoryCopyWith<$Res> {
  factory _$$BlogCategoryImplCopyWith(
          _$BlogCategoryImpl value, $Res Function(_$BlogCategoryImpl) then) =
      __$$BlogCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String logo, String intro, int createTime});
}

/// @nodoc
class __$$BlogCategoryImplCopyWithImpl<$Res>
    extends _$BlogCategoryCopyWithImpl<$Res, _$BlogCategoryImpl>
    implements _$$BlogCategoryImplCopyWith<$Res> {
  __$$BlogCategoryImplCopyWithImpl(
      _$BlogCategoryImpl _value, $Res Function(_$BlogCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logo = null,
    Object? intro = null,
    Object? createTime = null,
  }) {
    return _then(_$BlogCategoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      intro: null == intro
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String,
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlogCategoryImpl extends _BlogCategory {
  const _$BlogCategoryImpl(
      {required this.id,
      required this.name,
      required this.logo,
      required this.intro,
      required this.createTime})
      : super._();

  factory _$BlogCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlogCategoryImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String logo;
  @override
  final String intro;
  @override
  final int createTime;

  @override
  String toString() {
    return 'BlogCategory(id: $id, name: $name, logo: $logo, intro: $intro, createTime: $createTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.intro, intro) || other.intro == intro) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, logo, intro, createTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogCategoryImplCopyWith<_$BlogCategoryImpl> get copyWith =>
      __$$BlogCategoryImplCopyWithImpl<_$BlogCategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlogCategoryImplToJson(
      this,
    );
  }
}

abstract class _BlogCategory extends BlogCategory {
  const factory _BlogCategory(
      {required final int id,
      required final String name,
      required final String logo,
      required final String intro,
      required final int createTime}) = _$BlogCategoryImpl;
  const _BlogCategory._() : super._();

  factory _BlogCategory.fromJson(Map<String, dynamic> json) =
      _$BlogCategoryImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get logo;
  @override
  String get intro;
  @override
  int get createTime;
  @override
  @JsonKey(ignore: true)
  _$$BlogCategoryImplCopyWith<_$BlogCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
