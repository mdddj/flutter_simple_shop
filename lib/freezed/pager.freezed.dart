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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_PagerCopyWith<$Res> implements $PagerCopyWith<$Res> {
  factory _$$_PagerCopyWith(_$_Pager value, $Res Function(_$_Pager) then) =
      __$$_PagerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'routerName') String routername, PagerParams? params});

  @override
  $PagerParamsCopyWith<$Res>? get params;
}

/// @nodoc
class __$$_PagerCopyWithImpl<$Res> extends _$PagerCopyWithImpl<$Res, _$_Pager>
    implements _$$_PagerCopyWith<$Res> {
  __$$_PagerCopyWithImpl(_$_Pager _value, $Res Function(_$_Pager) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routername = null,
    Object? params = freezed,
  }) {
    return _then(_$_Pager(
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
class _$_Pager extends _Pager {
  const _$_Pager(
      {@JsonKey(name: 'routerName') this.routername = '', this.params})
      : super._();

  factory _$_Pager.fromJson(Map<String, dynamic> json) =>
      _$$_PagerFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pager &&
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
  _$$_PagerCopyWith<_$_Pager> get copyWith =>
      __$$_PagerCopyWithImpl<_$_Pager>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PagerToJson(
      this,
    );
  }
}

abstract class _Pager extends Pager {
  const factory _Pager(
      {@JsonKey(name: 'routerName') final String routername,
      final PagerParams? params}) = _$_Pager;
  const _Pager._() : super._();

  factory _Pager.fromJson(Map<String, dynamic> json) = _$_Pager.fromJson;

  @override
  @JsonKey(name: 'routerName')
  String get routername;
  @override
  PagerParams? get params;
  @override
  @JsonKey(ignore: true)
  _$$_PagerCopyWith<_$_Pager> get copyWith =>
      throw _privateConstructorUsedError;
}

PagerParams _$PagerParamsFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _PagerParams.fromJson(json);
    case 'dyn':
      return DynPageParams.fromJson(json);
    case 'dynWrite':
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
    required TResult Function(String name, String emptyText) dyn,
    required TResult Function(String name) dynWrite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String name, String emptyText)? dyn,
    TResult? Function(String name)? dynWrite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String name, String emptyText)? dyn,
    TResult Function(String name)? dynWrite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PagerParams value) $default, {
    required TResult Function(DynPageParams value) dyn,
    required TResult Function(DynWriteParams value) dynWrite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PagerParams value)? $default, {
    TResult? Function(DynPageParams value)? dyn,
    TResult? Function(DynWriteParams value)? dynWrite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PagerParams value)? $default, {
    TResult Function(DynPageParams value)? dyn,
    TResult Function(DynWriteParams value)? dynWrite,
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
abstract class _$$_PagerParamsCopyWith<$Res> {
  factory _$$_PagerParamsCopyWith(
          _$_PagerParams value, $Res Function(_$_PagerParams) then) =
      __$$_PagerParamsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PagerParamsCopyWithImpl<$Res>
    extends _$PagerParamsCopyWithImpl<$Res, _$_PagerParams>
    implements _$$_PagerParamsCopyWith<$Res> {
  __$$_PagerParamsCopyWithImpl(
      _$_PagerParams _value, $Res Function(_$_PagerParams) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_PagerParams extends _PagerParams {
  const _$_PagerParams({final String? $type})
      : $type = $type ?? 'default',
        super._();

  factory _$_PagerParams.fromJson(Map<String, dynamic> json) =>
      _$$_PagerParamsFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PagerParams()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PagerParams);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String name, String emptyText) dyn,
    required TResult Function(String name) dynWrite,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String name, String emptyText)? dyn,
    TResult? Function(String name)? dynWrite,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String name, String emptyText)? dyn,
    TResult Function(String name)? dynWrite,
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
    required TResult Function(DynPageParams value) dyn,
    required TResult Function(DynWriteParams value) dynWrite,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PagerParams value)? $default, {
    TResult? Function(DynPageParams value)? dyn,
    TResult? Function(DynWriteParams value)? dynWrite,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PagerParams value)? $default, {
    TResult Function(DynPageParams value)? dyn,
    TResult Function(DynWriteParams value)? dynWrite,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_PagerParamsToJson(
      this,
    );
  }
}

abstract class _PagerParams extends PagerParams {
  const factory _PagerParams() = _$_PagerParams;
  const _PagerParams._() : super._();

  factory _PagerParams.fromJson(Map<String, dynamic> json) =
      _$_PagerParams.fromJson;
}

/// @nodoc
abstract class _$$DynPageParamsCopyWith<$Res> {
  factory _$$DynPageParamsCopyWith(
          _$DynPageParams value, $Res Function(_$DynPageParams) then) =
      __$$DynPageParamsCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String emptyText});
}

/// @nodoc
class __$$DynPageParamsCopyWithImpl<$Res>
    extends _$PagerParamsCopyWithImpl<$Res, _$DynPageParams>
    implements _$$DynPageParamsCopyWith<$Res> {
  __$$DynPageParamsCopyWithImpl(
      _$DynPageParams _value, $Res Function(_$DynPageParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? emptyText = null,
  }) {
    return _then(_$DynPageParams(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      emptyText: null == emptyText
          ? _value.emptyText
          : emptyText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DynPageParams extends DynPageParams {
  _$DynPageParams(
      {required this.name,
      this.emptyText = '暂无动态，快去发布一条吧',
      final String? $type})
      : $type = $type ?? 'dyn',
        super._();

  factory _$DynPageParams.fromJson(Map<String, dynamic> json) =>
      _$$DynPageParamsFromJson(json);

  @override
  final String name;
  @override
  @JsonKey()
  final String emptyText;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PagerParams.dyn(name: $name, emptyText: $emptyText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynPageParams &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.emptyText, emptyText) ||
                other.emptyText == emptyText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, emptyText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DynPageParamsCopyWith<_$DynPageParams> get copyWith =>
      __$$DynPageParamsCopyWithImpl<_$DynPageParams>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String name, String emptyText) dyn,
    required TResult Function(String name) dynWrite,
  }) {
    return dyn(name, emptyText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String name, String emptyText)? dyn,
    TResult? Function(String name)? dynWrite,
  }) {
    return dyn?.call(name, emptyText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String name, String emptyText)? dyn,
    TResult Function(String name)? dynWrite,
    required TResult orElse(),
  }) {
    if (dyn != null) {
      return dyn(name, emptyText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PagerParams value) $default, {
    required TResult Function(DynPageParams value) dyn,
    required TResult Function(DynWriteParams value) dynWrite,
  }) {
    return dyn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PagerParams value)? $default, {
    TResult? Function(DynPageParams value)? dyn,
    TResult? Function(DynWriteParams value)? dynWrite,
  }) {
    return dyn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PagerParams value)? $default, {
    TResult Function(DynPageParams value)? dyn,
    TResult Function(DynWriteParams value)? dynWrite,
    required TResult orElse(),
  }) {
    if (dyn != null) {
      return dyn(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DynPageParamsToJson(
      this,
    );
  }
}

abstract class DynPageParams extends PagerParams {
  factory DynPageParams({required final String name, final String emptyText}) =
      _$DynPageParams;
  DynPageParams._() : super._();

  factory DynPageParams.fromJson(Map<String, dynamic> json) =
      _$DynPageParams.fromJson;

  String get name;
  String get emptyText;
  @JsonKey(ignore: true)
  _$$DynPageParamsCopyWith<_$DynPageParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DynWriteParamsCopyWith<$Res> {
  factory _$$DynWriteParamsCopyWith(
          _$DynWriteParams value, $Res Function(_$DynWriteParams) then) =
      __$$DynWriteParamsCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$DynWriteParamsCopyWithImpl<$Res>
    extends _$PagerParamsCopyWithImpl<$Res, _$DynWriteParams>
    implements _$$DynWriteParamsCopyWith<$Res> {
  __$$DynWriteParamsCopyWithImpl(
      _$DynWriteParams _value, $Res Function(_$DynWriteParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$DynWriteParams(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DynWriteParams extends DynWriteParams {
  _$DynWriteParams({required this.name, final String? $type})
      : $type = $type ?? 'dynWrite',
        super._();

  factory _$DynWriteParams.fromJson(Map<String, dynamic> json) =>
      _$$DynWriteParamsFromJson(json);

  @override
  final String name;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PagerParams.dynWrite(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynWriteParams &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DynWriteParamsCopyWith<_$DynWriteParams> get copyWith =>
      __$$DynWriteParamsCopyWithImpl<_$DynWriteParams>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String name, String emptyText) dyn,
    required TResult Function(String name) dynWrite,
  }) {
    return dynWrite(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String name, String emptyText)? dyn,
    TResult? Function(String name)? dynWrite,
  }) {
    return dynWrite?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String name, String emptyText)? dyn,
    TResult Function(String name)? dynWrite,
    required TResult orElse(),
  }) {
    if (dynWrite != null) {
      return dynWrite(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PagerParams value) $default, {
    required TResult Function(DynPageParams value) dyn,
    required TResult Function(DynWriteParams value) dynWrite,
  }) {
    return dynWrite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PagerParams value)? $default, {
    TResult? Function(DynPageParams value)? dyn,
    TResult? Function(DynWriteParams value)? dynWrite,
  }) {
    return dynWrite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PagerParams value)? $default, {
    TResult Function(DynPageParams value)? dyn,
    TResult Function(DynWriteParams value)? dynWrite,
    required TResult orElse(),
  }) {
    if (dynWrite != null) {
      return dynWrite(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DynWriteParamsToJson(
      this,
    );
  }
}

abstract class DynWriteParams extends PagerParams {
  factory DynWriteParams({required final String name}) = _$DynWriteParams;
  DynWriteParams._() : super._();

  factory DynWriteParams.fromJson(Map<String, dynamic> json) =
      _$DynWriteParams.fromJson;

  String get name;
  @JsonKey(ignore: true)
  _$$DynWriteParamsCopyWith<_$DynWriteParams> get copyWith =>
      throw _privateConstructorUsedError;
}
