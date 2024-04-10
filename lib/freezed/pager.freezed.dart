// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pager.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Pager _$PagerFromJson(Map<String, dynamic> json) {
  return _Pager.fromJson(json);
}

/// @nodoc
mixin _$Pager {
  @JsonKey(name: 'routerName')
  String get routername => throw _privateConstructorUsedError;
  PagerParams? get params => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PagerCopyWith<Pager> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagerCopyWith<$Res> {
  factory $PagerCopyWith(Pager value, $Res Function(Pager) then) =
      _$PagerCopyWithImpl<$Res, Pager>;
  @useResult
  $Res call(
      {@JsonKey(name: 'routerName') String routername, PagerParams? params});

  $PagerParamsCopyWith<$Res>? get params;
}

/// @nodoc
class _$PagerCopyWithImpl<$Res, $Val extends Pager>
    implements $PagerCopyWith<$Res> {
  _$PagerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routername = null,
    Object? params = freezed,
  }) {
    return _then(_value.copyWith(
      routername: null == routername
          ? _value.routername
          : routername // ignore: cast_nullable_to_non_nullable
              as String,
      params: freezed == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as PagerParams?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PagerParamsCopyWith<$Res>? get params {
    if (_value.params == null) {
      return null;
    }

    return $PagerParamsCopyWith<$Res>(_value.params!, (value) {
      return _then(_value.copyWith(params: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PagerImplCopyWith<$Res> implements $PagerCopyWith<$Res> {
  factory _$$PagerImplCopyWith(
          _$PagerImpl value, $Res Function(_$PagerImpl) then) =
      __$$PagerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'routerName') String routername, PagerParams? params});

  @override
  $PagerParamsCopyWith<$Res>? get params;
}

/// @nodoc
class __$$PagerImplCopyWithImpl<$Res>
    extends _$PagerCopyWithImpl<$Res, _$PagerImpl>
    implements _$$PagerImplCopyWith<$Res> {
  __$$PagerImplCopyWithImpl(
      _$PagerImpl _value, $Res Function(_$PagerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routername = null,
    Object? params = freezed,
  }) {
    return _then(_$PagerImpl(
      routername: null == routername
          ? _value.routername
          : routername // ignore: cast_nullable_to_non_nullable
              as String,
      params: freezed == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as PagerParams?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PagerImpl extends _Pager {
  const _$PagerImpl(
      {@JsonKey(name: 'routerName') this.routername = '', this.params})
      : super._();

  factory _$PagerImpl.fromJson(Map<String, dynamic> json) =>
      _$$PagerImplFromJson(json);

  @override
  @JsonKey(name: 'routerName')
  final String routername;
  @override
  final PagerParams? params;

  @override
  String toString() {
    return 'Pager(routername: $routername, params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PagerImpl &&
            (identical(other.routername, routername) ||
                other.routername == routername) &&
            (identical(other.params, params) || other.params == params));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, routername, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PagerImplCopyWith<_$PagerImpl> get copyWith =>
      __$$PagerImplCopyWithImpl<_$PagerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PagerImplToJson(
      this,
    );
  }
}

abstract class _Pager extends Pager {
  const factory _Pager(
      {@JsonKey(name: 'routerName') final String routername,
      final PagerParams? params}) = _$PagerImpl;
  const _Pager._() : super._();

  factory _Pager.fromJson(Map<String, dynamic> json) = _$PagerImpl.fromJson;

  @override
  @JsonKey(name: 'routerName')
  String get routername;
  @override
  PagerParams? get params;
  @override
  @JsonKey(ignore: true)
  _$$PagerImplCopyWith<_$PagerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PagerParams _$PagerParamsFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _PagerParams.fromJson(json);
    case 'dynListPageParam':
      return DynPageParams.fromJson(json);
    case 'dynWritePageParam':
      return DynWriteParams.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'PagerParams',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$PagerParams {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(
            String name,
            String emptyText,
            ResourceWidgetCardStyle style,
            @JsonKey(
                fromJson: null,
                toJson: null,
                includeToJson: false,
                includeFromJson: false)
            Widget? emptyChild)
        dynListPageParam,
    required TResult Function(String name, ProductShare? productShare,
            String? title, bool disableSelectOtherCategory, String? hintText)
        dynWritePageParam,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(
            String name,
            String emptyText,
            ResourceWidgetCardStyle style,
            @JsonKey(
                fromJson: null,
                toJson: null,
                includeToJson: false,
                includeFromJson: false)
            Widget? emptyChild)?
        dynListPageParam,
    TResult? Function(String name, ProductShare? productShare, String? title,
            bool disableSelectOtherCategory, String? hintText)?
        dynWritePageParam,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(
            String name,
            String emptyText,
            ResourceWidgetCardStyle style,
            @JsonKey(
                fromJson: null,
                toJson: null,
                includeToJson: false,
                includeFromJson: false)
            Widget? emptyChild)?
        dynListPageParam,
    TResult Function(String name, ProductShare? productShare, String? title,
            bool disableSelectOtherCategory, String? hintText)?
        dynWritePageParam,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PagerParams value) $default, {
    required TResult Function(DynPageParams value) dynListPageParam,
    required TResult Function(DynWriteParams value) dynWritePageParam,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PagerParams value)? $default, {
    TResult? Function(DynPageParams value)? dynListPageParam,
    TResult? Function(DynWriteParams value)? dynWritePageParam,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PagerParams value)? $default, {
    TResult Function(DynPageParams value)? dynListPageParam,
    TResult Function(DynWriteParams value)? dynWritePageParam,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagerParamsCopyWith<$Res> {
  factory $PagerParamsCopyWith(
          PagerParams value, $Res Function(PagerParams) then) =
      _$PagerParamsCopyWithImpl<$Res, PagerParams>;
}

/// @nodoc
class _$PagerParamsCopyWithImpl<$Res, $Val extends PagerParams>
    implements $PagerParamsCopyWith<$Res> {
  _$PagerParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PagerParamsImplCopyWith<$Res> {
  factory _$$PagerParamsImplCopyWith(
          _$PagerParamsImpl value, $Res Function(_$PagerParamsImpl) then) =
      __$$PagerParamsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PagerParamsImplCopyWithImpl<$Res>
    extends _$PagerParamsCopyWithImpl<$Res, _$PagerParamsImpl>
    implements _$$PagerParamsImplCopyWith<$Res> {
  __$$PagerParamsImplCopyWithImpl(
      _$PagerParamsImpl _value, $Res Function(_$PagerParamsImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$PagerParamsImpl extends _PagerParams {
  const _$PagerParamsImpl({final String? $type})
      : $type = $type ?? 'default',
        super._();

  factory _$PagerParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PagerParamsImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PagerParams()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PagerParamsImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(
            String name,
            String emptyText,
            ResourceWidgetCardStyle style,
            @JsonKey(
                fromJson: null,
                toJson: null,
                includeToJson: false,
                includeFromJson: false)
            Widget? emptyChild)
        dynListPageParam,
    required TResult Function(String name, ProductShare? productShare,
            String? title, bool disableSelectOtherCategory, String? hintText)
        dynWritePageParam,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(
            String name,
            String emptyText,
            ResourceWidgetCardStyle style,
            @JsonKey(
                fromJson: null,
                toJson: null,
                includeToJson: false,
                includeFromJson: false)
            Widget? emptyChild)?
        dynListPageParam,
    TResult? Function(String name, ProductShare? productShare, String? title,
            bool disableSelectOtherCategory, String? hintText)?
        dynWritePageParam,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(
            String name,
            String emptyText,
            ResourceWidgetCardStyle style,
            @JsonKey(
                fromJson: null,
                toJson: null,
                includeToJson: false,
                includeFromJson: false)
            Widget? emptyChild)?
        dynListPageParam,
    TResult Function(String name, ProductShare? productShare, String? title,
            bool disableSelectOtherCategory, String? hintText)?
        dynWritePageParam,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PagerParams value) $default, {
    required TResult Function(DynPageParams value) dynListPageParam,
    required TResult Function(DynWriteParams value) dynWritePageParam,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PagerParams value)? $default, {
    TResult? Function(DynPageParams value)? dynListPageParam,
    TResult? Function(DynWriteParams value)? dynWritePageParam,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PagerParams value)? $default, {
    TResult Function(DynPageParams value)? dynListPageParam,
    TResult Function(DynWriteParams value)? dynWritePageParam,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PagerParamsImplToJson(
      this,
    );
  }
}

abstract class _PagerParams extends PagerParams {
  const factory _PagerParams() = _$PagerParamsImpl;
  const _PagerParams._() : super._();

  factory _PagerParams.fromJson(Map<String, dynamic> json) =
      _$PagerParamsImpl.fromJson;
}

/// @nodoc
abstract class _$$DynPageParamsImplCopyWith<$Res> {
  factory _$$DynPageParamsImplCopyWith(
          _$DynPageParamsImpl value, $Res Function(_$DynPageParamsImpl) then) =
      __$$DynPageParamsImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      String emptyText,
      ResourceWidgetCardStyle style,
      @JsonKey(
          fromJson: null,
          toJson: null,
          includeToJson: false,
          includeFromJson: false)
      Widget? emptyChild});
}

/// @nodoc
class __$$DynPageParamsImplCopyWithImpl<$Res>
    extends _$PagerParamsCopyWithImpl<$Res, _$DynPageParamsImpl>
    implements _$$DynPageParamsImplCopyWith<$Res> {
  __$$DynPageParamsImplCopyWithImpl(
      _$DynPageParamsImpl _value, $Res Function(_$DynPageParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? emptyText = null,
    Object? style = null,
    Object? emptyChild = freezed,
  }) {
    return _then(_$DynPageParamsImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      emptyText: null == emptyText
          ? _value.emptyText
          : emptyText // ignore: cast_nullable_to_non_nullable
              as String,
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as ResourceWidgetCardStyle,
      emptyChild: freezed == emptyChild
          ? _value.emptyChild
          : emptyChild // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DynPageParamsImpl extends DynPageParams {
  _$DynPageParamsImpl(
      {required this.name,
      this.emptyText = '暂无动态，快去发布一条吧',
      this.style = ResourceWidgetCardStyle.waterfall,
      @JsonKey(
          fromJson: null,
          toJson: null,
          includeToJson: false,
          includeFromJson: false)
      this.emptyChild,
      final String? $type})
      : $type = $type ?? 'dynListPageParam',
        super._();

  factory _$DynPageParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DynPageParamsImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey()
  final String emptyText;
  @override
  @JsonKey()
  final ResourceWidgetCardStyle style;
  @override
  @JsonKey(
      fromJson: null,
      toJson: null,
      includeToJson: false,
      includeFromJson: false)
  final Widget? emptyChild;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PagerParams.dynListPageParam(name: $name, emptyText: $emptyText, style: $style, emptyChild: $emptyChild)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynPageParamsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.emptyText, emptyText) ||
                other.emptyText == emptyText) &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.emptyChild, emptyChild) ||
                other.emptyChild == emptyChild));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, emptyText, style, emptyChild);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DynPageParamsImplCopyWith<_$DynPageParamsImpl> get copyWith =>
      __$$DynPageParamsImplCopyWithImpl<_$DynPageParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(
            String name,
            String emptyText,
            ResourceWidgetCardStyle style,
            @JsonKey(
                fromJson: null,
                toJson: null,
                includeToJson: false,
                includeFromJson: false)
            Widget? emptyChild)
        dynListPageParam,
    required TResult Function(String name, ProductShare? productShare,
            String? title, bool disableSelectOtherCategory, String? hintText)
        dynWritePageParam,
  }) {
    return dynListPageParam(name, emptyText, style, emptyChild);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(
            String name,
            String emptyText,
            ResourceWidgetCardStyle style,
            @JsonKey(
                fromJson: null,
                toJson: null,
                includeToJson: false,
                includeFromJson: false)
            Widget? emptyChild)?
        dynListPageParam,
    TResult? Function(String name, ProductShare? productShare, String? title,
            bool disableSelectOtherCategory, String? hintText)?
        dynWritePageParam,
  }) {
    return dynListPageParam?.call(name, emptyText, style, emptyChild);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(
            String name,
            String emptyText,
            ResourceWidgetCardStyle style,
            @JsonKey(
                fromJson: null,
                toJson: null,
                includeToJson: false,
                includeFromJson: false)
            Widget? emptyChild)?
        dynListPageParam,
    TResult Function(String name, ProductShare? productShare, String? title,
            bool disableSelectOtherCategory, String? hintText)?
        dynWritePageParam,
    required TResult orElse(),
  }) {
    if (dynListPageParam != null) {
      return dynListPageParam(name, emptyText, style, emptyChild);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PagerParams value) $default, {
    required TResult Function(DynPageParams value) dynListPageParam,
    required TResult Function(DynWriteParams value) dynWritePageParam,
  }) {
    return dynListPageParam(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PagerParams value)? $default, {
    TResult? Function(DynPageParams value)? dynListPageParam,
    TResult? Function(DynWriteParams value)? dynWritePageParam,
  }) {
    return dynListPageParam?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PagerParams value)? $default, {
    TResult Function(DynPageParams value)? dynListPageParam,
    TResult Function(DynWriteParams value)? dynWritePageParam,
    required TResult orElse(),
  }) {
    if (dynListPageParam != null) {
      return dynListPageParam(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DynPageParamsImplToJson(
      this,
    );
  }
}

abstract class DynPageParams extends PagerParams {
  factory DynPageParams(
      {required final String name,
      final String emptyText,
      final ResourceWidgetCardStyle style,
      @JsonKey(
          fromJson: null,
          toJson: null,
          includeToJson: false,
          includeFromJson: false)
      final Widget? emptyChild}) = _$DynPageParamsImpl;
  DynPageParams._() : super._();

  factory DynPageParams.fromJson(Map<String, dynamic> json) =
      _$DynPageParamsImpl.fromJson;

  String get name;
  String get emptyText;
  ResourceWidgetCardStyle get style;
  @JsonKey(
      fromJson: null,
      toJson: null,
      includeToJson: false,
      includeFromJson: false)
  Widget? get emptyChild;
  @JsonKey(ignore: true)
  _$$DynPageParamsImplCopyWith<_$DynPageParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DynWriteParamsImplCopyWith<$Res> {
  factory _$$DynWriteParamsImplCopyWith(_$DynWriteParamsImpl value,
          $Res Function(_$DynWriteParamsImpl) then) =
      __$$DynWriteParamsImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      ProductShare? productShare,
      String? title,
      bool disableSelectOtherCategory,
      String? hintText});

  $ProductShareCopyWith<$Res>? get productShare;
}

/// @nodoc
class __$$DynWriteParamsImplCopyWithImpl<$Res>
    extends _$PagerParamsCopyWithImpl<$Res, _$DynWriteParamsImpl>
    implements _$$DynWriteParamsImplCopyWith<$Res> {
  __$$DynWriteParamsImplCopyWithImpl(
      _$DynWriteParamsImpl _value, $Res Function(_$DynWriteParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? productShare = freezed,
    Object? title = freezed,
    Object? disableSelectOtherCategory = null,
    Object? hintText = freezed,
  }) {
    return _then(_$DynWriteParamsImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      productShare: freezed == productShare
          ? _value.productShare
          : productShare // ignore: cast_nullable_to_non_nullable
              as ProductShare?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      disableSelectOtherCategory: null == disableSelectOtherCategory
          ? _value.disableSelectOtherCategory
          : disableSelectOtherCategory // ignore: cast_nullable_to_non_nullable
              as bool,
      hintText: freezed == hintText
          ? _value.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductShareCopyWith<$Res>? get productShare {
    if (_value.productShare == null) {
      return null;
    }

    return $ProductShareCopyWith<$Res>(_value.productShare!, (value) {
      return _then(_value.copyWith(productShare: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$DynWriteParamsImpl extends DynWriteParams {
  _$DynWriteParamsImpl(
      {required this.name,
      this.productShare,
      this.title,
      this.disableSelectOtherCategory = false,
      this.hintText,
      final String? $type})
      : $type = $type ?? 'dynWritePageParam',
        super._();

  factory _$DynWriteParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DynWriteParamsImplFromJson(json);

  @override
  final String name;
  @override
  final ProductShare? productShare;
  @override
  final String? title;
  @override
  @JsonKey()
  final bool disableSelectOtherCategory;
  @override
  final String? hintText;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PagerParams.dynWritePageParam(name: $name, productShare: $productShare, title: $title, disableSelectOtherCategory: $disableSelectOtherCategory, hintText: $hintText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynWriteParamsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.productShare, productShare) ||
                other.productShare == productShare) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.disableSelectOtherCategory,
                    disableSelectOtherCategory) ||
                other.disableSelectOtherCategory ==
                    disableSelectOtherCategory) &&
            (identical(other.hintText, hintText) ||
                other.hintText == hintText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, productShare, title,
      disableSelectOtherCategory, hintText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DynWriteParamsImplCopyWith<_$DynWriteParamsImpl> get copyWith =>
      __$$DynWriteParamsImplCopyWithImpl<_$DynWriteParamsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(
            String name,
            String emptyText,
            ResourceWidgetCardStyle style,
            @JsonKey(
                fromJson: null,
                toJson: null,
                includeToJson: false,
                includeFromJson: false)
            Widget? emptyChild)
        dynListPageParam,
    required TResult Function(String name, ProductShare? productShare,
            String? title, bool disableSelectOtherCategory, String? hintText)
        dynWritePageParam,
  }) {
    return dynWritePageParam(
        name, productShare, title, disableSelectOtherCategory, hintText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(
            String name,
            String emptyText,
            ResourceWidgetCardStyle style,
            @JsonKey(
                fromJson: null,
                toJson: null,
                includeToJson: false,
                includeFromJson: false)
            Widget? emptyChild)?
        dynListPageParam,
    TResult? Function(String name, ProductShare? productShare, String? title,
            bool disableSelectOtherCategory, String? hintText)?
        dynWritePageParam,
  }) {
    return dynWritePageParam?.call(
        name, productShare, title, disableSelectOtherCategory, hintText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(
            String name,
            String emptyText,
            ResourceWidgetCardStyle style,
            @JsonKey(
                fromJson: null,
                toJson: null,
                includeToJson: false,
                includeFromJson: false)
            Widget? emptyChild)?
        dynListPageParam,
    TResult Function(String name, ProductShare? productShare, String? title,
            bool disableSelectOtherCategory, String? hintText)?
        dynWritePageParam,
    required TResult orElse(),
  }) {
    if (dynWritePageParam != null) {
      return dynWritePageParam(
          name, productShare, title, disableSelectOtherCategory, hintText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PagerParams value) $default, {
    required TResult Function(DynPageParams value) dynListPageParam,
    required TResult Function(DynWriteParams value) dynWritePageParam,
  }) {
    return dynWritePageParam(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PagerParams value)? $default, {
    TResult? Function(DynPageParams value)? dynListPageParam,
    TResult? Function(DynWriteParams value)? dynWritePageParam,
  }) {
    return dynWritePageParam?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PagerParams value)? $default, {
    TResult Function(DynPageParams value)? dynListPageParam,
    TResult Function(DynWriteParams value)? dynWritePageParam,
    required TResult orElse(),
  }) {
    if (dynWritePageParam != null) {
      return dynWritePageParam(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DynWriteParamsImplToJson(
      this,
    );
  }
}

abstract class DynWriteParams extends PagerParams {
  factory DynWriteParams(
      {required final String name,
      final ProductShare? productShare,
      final String? title,
      final bool disableSelectOtherCategory,
      final String? hintText}) = _$DynWriteParamsImpl;
  DynWriteParams._() : super._();

  factory DynWriteParams.fromJson(Map<String, dynamic> json) =
      _$DynWriteParamsImpl.fromJson;

  String get name;
  ProductShare? get productShare;
  String? get title;
  bool get disableSelectOtherCategory;
  String? get hintText;
  @JsonKey(ignore: true)
  _$$DynWriteParamsImplCopyWith<_$DynWriteParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
