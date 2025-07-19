// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pager.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Pager {
  @JsonKey(name: 'routerName')
  String get routername;
  PagerParams? get params;

  /// Create a copy of Pager
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PagerCopyWith<Pager> get copyWith =>
      _$PagerCopyWithImpl<Pager>(this as Pager, _$identity);

  /// Serializes this Pager to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Pager &&
            (identical(other.routername, routername) ||
                other.routername == routername) &&
            (identical(other.params, params) || other.params == params));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, routername, params);

  @override
  String toString() {
    return 'Pager(routername: $routername, params: $params)';
  }
}

/// @nodoc
abstract mixin class $PagerCopyWith<$Res> {
  factory $PagerCopyWith(Pager value, $Res Function(Pager) _then) =
      _$PagerCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'routerName') String routername, PagerParams? params});

  $PagerParamsCopyWith<$Res>? get params;
}

/// @nodoc
class _$PagerCopyWithImpl<$Res> implements $PagerCopyWith<$Res> {
  _$PagerCopyWithImpl(this._self, this._then);

  final Pager _self;
  final $Res Function(Pager) _then;

  /// Create a copy of Pager
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routername = null,
    Object? params = freezed,
  }) {
    return _then(_self.copyWith(
      routername: null == routername
          ? _self.routername
          : routername // ignore: cast_nullable_to_non_nullable
              as String,
      params: freezed == params
          ? _self.params
          : params // ignore: cast_nullable_to_non_nullable
              as PagerParams?,
    ));
  }

  /// Create a copy of Pager
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PagerParamsCopyWith<$Res>? get params {
    if (_self.params == null) {
      return null;
    }

    return $PagerParamsCopyWith<$Res>(_self.params!, (value) {
      return _then(_self.copyWith(params: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Pager extends Pager {
  const _Pager({@JsonKey(name: 'routerName') this.routername = '', this.params})
      : super._();
  factory _Pager.fromJson(Map<String, dynamic> json) => _$PagerFromJson(json);

  @override
  @JsonKey(name: 'routerName')
  final String routername;
  @override
  final PagerParams? params;

  /// Create a copy of Pager
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PagerCopyWith<_Pager> get copyWith =>
      __$PagerCopyWithImpl<_Pager>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PagerToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Pager &&
            (identical(other.routername, routername) ||
                other.routername == routername) &&
            (identical(other.params, params) || other.params == params));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, routername, params);

  @override
  String toString() {
    return 'Pager(routername: $routername, params: $params)';
  }
}

/// @nodoc
abstract mixin class _$PagerCopyWith<$Res> implements $PagerCopyWith<$Res> {
  factory _$PagerCopyWith(_Pager value, $Res Function(_Pager) _then) =
      __$PagerCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'routerName') String routername, PagerParams? params});

  @override
  $PagerParamsCopyWith<$Res>? get params;
}

/// @nodoc
class __$PagerCopyWithImpl<$Res> implements _$PagerCopyWith<$Res> {
  __$PagerCopyWithImpl(this._self, this._then);

  final _Pager _self;
  final $Res Function(_Pager) _then;

  /// Create a copy of Pager
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? routername = null,
    Object? params = freezed,
  }) {
    return _then(_Pager(
      routername: null == routername
          ? _self.routername
          : routername // ignore: cast_nullable_to_non_nullable
              as String,
      params: freezed == params
          ? _self.params
          : params // ignore: cast_nullable_to_non_nullable
              as PagerParams?,
    ));
  }

  /// Create a copy of Pager
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PagerParamsCopyWith<$Res>? get params {
    if (_self.params == null) {
      return null;
    }

    return $PagerParamsCopyWith<$Res>(_self.params!, (value) {
      return _then(_self.copyWith(params: value));
    });
  }
}

PagerParams _$PagerParamsFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return DefaultPagerParams.fromJson(json);
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
  /// Serializes this PagerParams to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PagerParams);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PagerParams()';
  }
}

/// @nodoc
class $PagerParamsCopyWith<$Res> {
  $PagerParamsCopyWith(PagerParams _, $Res Function(PagerParams) __);
}

/// @nodoc
@JsonSerializable()
class DefaultPagerParams extends PagerParams {
  const DefaultPagerParams({final String? $type})
      : $type = $type ?? 'default',
        super._();
  factory DefaultPagerParams.fromJson(Map<String, dynamic> json) =>
      _$DefaultPagerParamsFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$DefaultPagerParamsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DefaultPagerParams);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PagerParams()';
  }
}

/// @nodoc
@JsonSerializable()
class DynPageParams extends PagerParams {
  DynPageParams(
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
  factory DynPageParams.fromJson(Map<String, dynamic> json) =>
      _$DynPageParamsFromJson(json);

  final String name;
  @JsonKey()
  final String emptyText;
  @JsonKey()
  final ResourceWidgetCardStyle style;
  @JsonKey(
      fromJson: null,
      toJson: null,
      includeToJson: false,
      includeFromJson: false)
  final Widget? emptyChild;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of PagerParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DynPageParamsCopyWith<DynPageParams> get copyWith =>
      _$DynPageParamsCopyWithImpl<DynPageParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DynPageParamsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DynPageParams &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.emptyText, emptyText) ||
                other.emptyText == emptyText) &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.emptyChild, emptyChild) ||
                other.emptyChild == emptyChild));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, emptyText, style, emptyChild);

  @override
  String toString() {
    return 'PagerParams.dynListPageParam(name: $name, emptyText: $emptyText, style: $style, emptyChild: $emptyChild)';
  }
}

/// @nodoc
abstract mixin class $DynPageParamsCopyWith<$Res>
    implements $PagerParamsCopyWith<$Res> {
  factory $DynPageParamsCopyWith(
          DynPageParams value, $Res Function(DynPageParams) _then) =
      _$DynPageParamsCopyWithImpl;
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
class _$DynPageParamsCopyWithImpl<$Res>
    implements $DynPageParamsCopyWith<$Res> {
  _$DynPageParamsCopyWithImpl(this._self, this._then);

  final DynPageParams _self;
  final $Res Function(DynPageParams) _then;

  /// Create a copy of PagerParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? emptyText = null,
    Object? style = null,
    Object? emptyChild = freezed,
  }) {
    return _then(DynPageParams(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      emptyText: null == emptyText
          ? _self.emptyText
          : emptyText // ignore: cast_nullable_to_non_nullable
              as String,
      style: null == style
          ? _self.style
          : style // ignore: cast_nullable_to_non_nullable
              as ResourceWidgetCardStyle,
      emptyChild: freezed == emptyChild
          ? _self.emptyChild
          : emptyChild // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class DynWriteParams extends PagerParams {
  DynWriteParams(
      {required this.name,
      this.productShare,
      this.title,
      this.disableSelectOtherCategory = false,
      this.hintText,
      final String? $type})
      : $type = $type ?? 'dynWritePageParam',
        super._();
  factory DynWriteParams.fromJson(Map<String, dynamic> json) =>
      _$DynWriteParamsFromJson(json);

  final String name;
  final ProductShare? productShare;
  final String? title;
  @JsonKey()
  final bool disableSelectOtherCategory;
  final String? hintText;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of PagerParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DynWriteParamsCopyWith<DynWriteParams> get copyWith =>
      _$DynWriteParamsCopyWithImpl<DynWriteParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DynWriteParamsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DynWriteParams &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, productShare, title,
      disableSelectOtherCategory, hintText);

  @override
  String toString() {
    return 'PagerParams.dynWritePageParam(name: $name, productShare: $productShare, title: $title, disableSelectOtherCategory: $disableSelectOtherCategory, hintText: $hintText)';
  }
}

/// @nodoc
abstract mixin class $DynWriteParamsCopyWith<$Res>
    implements $PagerParamsCopyWith<$Res> {
  factory $DynWriteParamsCopyWith(
          DynWriteParams value, $Res Function(DynWriteParams) _then) =
      _$DynWriteParamsCopyWithImpl;
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
class _$DynWriteParamsCopyWithImpl<$Res>
    implements $DynWriteParamsCopyWith<$Res> {
  _$DynWriteParamsCopyWithImpl(this._self, this._then);

  final DynWriteParams _self;
  final $Res Function(DynWriteParams) _then;

  /// Create a copy of PagerParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? productShare = freezed,
    Object? title = freezed,
    Object? disableSelectOtherCategory = null,
    Object? hintText = freezed,
  }) {
    return _then(DynWriteParams(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      productShare: freezed == productShare
          ? _self.productShare
          : productShare // ignore: cast_nullable_to_non_nullable
              as ProductShare?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      disableSelectOtherCategory: null == disableSelectOtherCategory
          ? _self.disableSelectOtherCategory
          : disableSelectOtherCategory // ignore: cast_nullable_to_non_nullable
              as bool,
      hintText: freezed == hintText
          ? _self.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of PagerParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductShareCopyWith<$Res>? get productShare {
    if (_self.productShare == null) {
      return null;
    }

    return $ProductShareCopyWith<$Res>(_self.productShare!, (value) {
      return _then(_self.copyWith(productShare: value));
    });
  }
}

// dart format on
