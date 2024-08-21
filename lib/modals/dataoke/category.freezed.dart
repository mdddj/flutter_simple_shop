// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  @HiveField(0)
  String get cname => throw _privateConstructorUsedError;
  @HiveField(1)
  String get cpic => throw _privateConstructorUsedError;
  @HiveField(2)
  List<Subcategory> get subcategories => throw _privateConstructorUsedError;
  @HiveField(3)
  int get cid => throw _privateConstructorUsedError;

  /// Serializes this Category to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call(
      {@HiveField(0) String cname,
      @HiveField(1) String cpic,
      @HiveField(2) List<Subcategory> subcategories,
      @HiveField(3) int cid});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cname = null,
    Object? cpic = null,
    Object? subcategories = null,
    Object? cid = null,
  }) {
    return _then(_value.copyWith(
      cname: null == cname
          ? _value.cname
          : cname // ignore: cast_nullable_to_non_nullable
              as String,
      cpic: null == cpic
          ? _value.cpic
          : cpic // ignore: cast_nullable_to_non_nullable
              as String,
      subcategories: null == subcategories
          ? _value.subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<Subcategory>,
      cid: null == cid
          ? _value.cid
          : cid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryImplCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$$CategoryImplCopyWith(
          _$CategoryImpl value, $Res Function(_$CategoryImpl) then) =
      __$$CategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String cname,
      @HiveField(1) String cpic,
      @HiveField(2) List<Subcategory> subcategories,
      @HiveField(3) int cid});
}

/// @nodoc
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
      _$CategoryImpl _value, $Res Function(_$CategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cname = null,
    Object? cpic = null,
    Object? subcategories = null,
    Object? cid = null,
  }) {
    return _then(_$CategoryImpl(
      cname: null == cname
          ? _value.cname
          : cname // ignore: cast_nullable_to_non_nullable
              as String,
      cpic: null == cpic
          ? _value.cpic
          : cpic // ignore: cast_nullable_to_non_nullable
              as String,
      subcategories: null == subcategories
          ? _value._subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<Subcategory>,
      cid: null == cid
          ? _value.cid
          : cid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryImpl extends _Category {
  const _$CategoryImpl(
      {@HiveField(0) this.cname = '',
      @HiveField(1) this.cpic = '',
      @HiveField(2) final List<Subcategory> subcategories = const [],
      @HiveField(3) this.cid = 0})
      : _subcategories = subcategories,
        super._();

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

  @override
  @JsonKey()
  @HiveField(0)
  final String cname;
  @override
  @JsonKey()
  @HiveField(1)
  final String cpic;
  final List<Subcategory> _subcategories;
  @override
  @JsonKey()
  @HiveField(2)
  List<Subcategory> get subcategories {
    if (_subcategories is EqualUnmodifiableListView) return _subcategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subcategories);
  }

  @override
  @JsonKey()
  @HiveField(3)
  final int cid;

  @override
  String toString() {
    return 'Category(cname: $cname, cpic: $cpic, subcategories: $subcategories, cid: $cid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.cname, cname) || other.cname == cname) &&
            (identical(other.cpic, cpic) || other.cpic == cpic) &&
            const DeepCollectionEquality()
                .equals(other._subcategories, _subcategories) &&
            (identical(other.cid, cid) || other.cid == cid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, cname, cpic,
      const DeepCollectionEquality().hash(_subcategories), cid);

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      __$$CategoryImplCopyWithImpl<_$CategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryImplToJson(
      this,
    );
  }
}

abstract class _Category extends Category {
  const factory _Category(
      {@HiveField(0) final String cname,
      @HiveField(1) final String cpic,
      @HiveField(2) final List<Subcategory> subcategories,
      @HiveField(3) final int cid}) = _$CategoryImpl;
  const _Category._() : super._();

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

  @override
  @HiveField(0)
  String get cname;
  @override
  @HiveField(1)
  String get cpic;
  @override
  @HiveField(2)
  List<Subcategory> get subcategories;
  @override
  @HiveField(3)
  int get cid;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Subcategory _$SubcategoryFromJson(Map<String, dynamic> json) {
  return _Subcategory.fromJson(json);
}

/// @nodoc
mixin _$Subcategory {
  @HiveField(0)
  int get subcid => throw _privateConstructorUsedError;
  @HiveField(1)
  String get scpic => throw _privateConstructorUsedError;
  @HiveField(2)
  String get subcname => throw _privateConstructorUsedError;

  /// Serializes this Subcategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Subcategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubcategoryCopyWith<Subcategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubcategoryCopyWith<$Res> {
  factory $SubcategoryCopyWith(
          Subcategory value, $Res Function(Subcategory) then) =
      _$SubcategoryCopyWithImpl<$Res, Subcategory>;
  @useResult
  $Res call(
      {@HiveField(0) int subcid,
      @HiveField(1) String scpic,
      @HiveField(2) String subcname});
}

/// @nodoc
class _$SubcategoryCopyWithImpl<$Res, $Val extends Subcategory>
    implements $SubcategoryCopyWith<$Res> {
  _$SubcategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Subcategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subcid = null,
    Object? scpic = null,
    Object? subcname = null,
  }) {
    return _then(_value.copyWith(
      subcid: null == subcid
          ? _value.subcid
          : subcid // ignore: cast_nullable_to_non_nullable
              as int,
      scpic: null == scpic
          ? _value.scpic
          : scpic // ignore: cast_nullable_to_non_nullable
              as String,
      subcname: null == subcname
          ? _value.subcname
          : subcname // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubcategoryImplCopyWith<$Res>
    implements $SubcategoryCopyWith<$Res> {
  factory _$$SubcategoryImplCopyWith(
          _$SubcategoryImpl value, $Res Function(_$SubcategoryImpl) then) =
      __$$SubcategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int subcid,
      @HiveField(1) String scpic,
      @HiveField(2) String subcname});
}

/// @nodoc
class __$$SubcategoryImplCopyWithImpl<$Res>
    extends _$SubcategoryCopyWithImpl<$Res, _$SubcategoryImpl>
    implements _$$SubcategoryImplCopyWith<$Res> {
  __$$SubcategoryImplCopyWithImpl(
      _$SubcategoryImpl _value, $Res Function(_$SubcategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Subcategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subcid = null,
    Object? scpic = null,
    Object? subcname = null,
  }) {
    return _then(_$SubcategoryImpl(
      subcid: null == subcid
          ? _value.subcid
          : subcid // ignore: cast_nullable_to_non_nullable
              as int,
      scpic: null == scpic
          ? _value.scpic
          : scpic // ignore: cast_nullable_to_non_nullable
              as String,
      subcname: null == subcname
          ? _value.subcname
          : subcname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubcategoryImpl extends _Subcategory {
  const _$SubcategoryImpl(
      {@HiveField(0) this.subcid = 0,
      @HiveField(1) this.scpic = '',
      @HiveField(2) this.subcname = ''})
      : super._();

  factory _$SubcategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubcategoryImplFromJson(json);

  @override
  @JsonKey()
  @HiveField(0)
  final int subcid;
  @override
  @JsonKey()
  @HiveField(1)
  final String scpic;
  @override
  @JsonKey()
  @HiveField(2)
  final String subcname;

  @override
  String toString() {
    return 'Subcategory(subcid: $subcid, scpic: $scpic, subcname: $subcname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubcategoryImpl &&
            (identical(other.subcid, subcid) || other.subcid == subcid) &&
            (identical(other.scpic, scpic) || other.scpic == scpic) &&
            (identical(other.subcname, subcname) ||
                other.subcname == subcname));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, subcid, scpic, subcname);

  /// Create a copy of Subcategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubcategoryImplCopyWith<_$SubcategoryImpl> get copyWith =>
      __$$SubcategoryImplCopyWithImpl<_$SubcategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubcategoryImplToJson(
      this,
    );
  }
}

abstract class _Subcategory extends Subcategory {
  const factory _Subcategory(
      {@HiveField(0) final int subcid,
      @HiveField(1) final String scpic,
      @HiveField(2) final String subcname}) = _$SubcategoryImpl;
  const _Subcategory._() : super._();

  factory _Subcategory.fromJson(Map<String, dynamic> json) =
      _$SubcategoryImpl.fromJson;

  @override
  @HiveField(0)
  int get subcid;
  @override
  @HiveField(1)
  String get scpic;
  @override
  @HiveField(2)
  String get subcname;

  /// Create a copy of Subcategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubcategoryImplCopyWith<_$SubcategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryWrapper _$CategoryWrapperFromJson(Map<String, dynamic> json) {
  return _CategoryWrapper.fromJson(json);
}

/// @nodoc
mixin _$CategoryWrapper {
  @HiveField(0)
  List<Category> get categorys => throw _privateConstructorUsedError;

  /// Serializes this CategoryWrapper to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryWrapperCopyWith<CategoryWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryWrapperCopyWith<$Res> {
  factory $CategoryWrapperCopyWith(
          CategoryWrapper value, $Res Function(CategoryWrapper) then) =
      _$CategoryWrapperCopyWithImpl<$Res, CategoryWrapper>;
  @useResult
  $Res call({@HiveField(0) List<Category> categorys});
}

/// @nodoc
class _$CategoryWrapperCopyWithImpl<$Res, $Val extends CategoryWrapper>
    implements $CategoryWrapperCopyWith<$Res> {
  _$CategoryWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryWrapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categorys = null,
  }) {
    return _then(_value.copyWith(
      categorys: null == categorys
          ? _value.categorys
          : categorys // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryWrapperImplCopyWith<$Res>
    implements $CategoryWrapperCopyWith<$Res> {
  factory _$$CategoryWrapperImplCopyWith(_$CategoryWrapperImpl value,
          $Res Function(_$CategoryWrapperImpl) then) =
      __$$CategoryWrapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) List<Category> categorys});
}

/// @nodoc
class __$$CategoryWrapperImplCopyWithImpl<$Res>
    extends _$CategoryWrapperCopyWithImpl<$Res, _$CategoryWrapperImpl>
    implements _$$CategoryWrapperImplCopyWith<$Res> {
  __$$CategoryWrapperImplCopyWithImpl(
      _$CategoryWrapperImpl _value, $Res Function(_$CategoryWrapperImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryWrapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categorys = null,
  }) {
    return _then(_$CategoryWrapperImpl(
      categorys: null == categorys
          ? _value._categorys
          : categorys // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryWrapperImpl extends _CategoryWrapper {
  const _$CategoryWrapperImpl(
      {@HiveField(0) final List<Category> categorys = const []})
      : _categorys = categorys,
        super._();

  factory _$CategoryWrapperImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryWrapperImplFromJson(json);

  final List<Category> _categorys;
  @override
  @JsonKey()
  @HiveField(0)
  List<Category> get categorys {
    if (_categorys is EqualUnmodifiableListView) return _categorys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categorys);
  }

  @override
  String toString() {
    return 'CategoryWrapper(categorys: $categorys)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryWrapperImpl &&
            const DeepCollectionEquality()
                .equals(other._categorys, _categorys));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_categorys));

  /// Create a copy of CategoryWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryWrapperImplCopyWith<_$CategoryWrapperImpl> get copyWith =>
      __$$CategoryWrapperImplCopyWithImpl<_$CategoryWrapperImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryWrapperImplToJson(
      this,
    );
  }
}

abstract class _CategoryWrapper extends CategoryWrapper {
  const factory _CategoryWrapper(
      {@HiveField(0) final List<Category> categorys}) = _$CategoryWrapperImpl;
  const _CategoryWrapper._() : super._();

  factory _CategoryWrapper.fromJson(Map<String, dynamic> json) =
      _$CategoryWrapperImpl.fromJson;

  @override
  @HiveField(0)
  List<Category> get categorys;

  /// Create a copy of CategoryWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryWrapperImplCopyWith<_$CategoryWrapperImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
