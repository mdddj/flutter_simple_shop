// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'env_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EnvConfig {

@JsonKey(name: 'port') String get port;@JsonKey(name: 'host') String get host;@JsonKey(name: 'debugMode') bool get debugMode;@JsonKey(name: 'fontFamily') String get fontFamily;
/// Create a copy of EnvConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EnvConfigCopyWith<EnvConfig> get copyWith => _$EnvConfigCopyWithImpl<EnvConfig>(this as EnvConfig, _$identity);

  /// Serializes this EnvConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EnvConfig&&(identical(other.port, port) || other.port == port)&&(identical(other.host, host) || other.host == host)&&(identical(other.debugMode, debugMode) || other.debugMode == debugMode)&&(identical(other.fontFamily, fontFamily) || other.fontFamily == fontFamily));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,port,host,debugMode,fontFamily);

@override
String toString() {
  return 'EnvConfig(port: $port, host: $host, debugMode: $debugMode, fontFamily: $fontFamily)';
}


}

/// @nodoc
abstract mixin class $EnvConfigCopyWith<$Res>  {
  factory $EnvConfigCopyWith(EnvConfig value, $Res Function(EnvConfig) _then) = _$EnvConfigCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'port') String port,@JsonKey(name: 'host') String host,@JsonKey(name: 'debugMode') bool debugMode,@JsonKey(name: 'fontFamily') String fontFamily
});




}
/// @nodoc
class _$EnvConfigCopyWithImpl<$Res>
    implements $EnvConfigCopyWith<$Res> {
  _$EnvConfigCopyWithImpl(this._self, this._then);

  final EnvConfig _self;
  final $Res Function(EnvConfig) _then;

/// Create a copy of EnvConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? port = null,Object? host = null,Object? debugMode = null,Object? fontFamily = null,}) {
  return _then(_self.copyWith(
port: null == port ? _self.port : port // ignore: cast_nullable_to_non_nullable
as String,host: null == host ? _self.host : host // ignore: cast_nullable_to_non_nullable
as String,debugMode: null == debugMode ? _self.debugMode : debugMode // ignore: cast_nullable_to_non_nullable
as bool,fontFamily: null == fontFamily ? _self.fontFamily : fontFamily // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _EnvConfig extends EnvConfig {
  const _EnvConfig({@JsonKey(name: 'port') this.port = '', @JsonKey(name: 'host') this.host = '', @JsonKey(name: 'debugMode') this.debugMode = false, @JsonKey(name: 'fontFamily') this.fontFamily = ''}): super._();
  factory _EnvConfig.fromJson(Map<String, dynamic> json) => _$EnvConfigFromJson(json);

@override@JsonKey(name: 'port') final  String port;
@override@JsonKey(name: 'host') final  String host;
@override@JsonKey(name: 'debugMode') final  bool debugMode;
@override@JsonKey(name: 'fontFamily') final  String fontFamily;

/// Create a copy of EnvConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EnvConfigCopyWith<_EnvConfig> get copyWith => __$EnvConfigCopyWithImpl<_EnvConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EnvConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EnvConfig&&(identical(other.port, port) || other.port == port)&&(identical(other.host, host) || other.host == host)&&(identical(other.debugMode, debugMode) || other.debugMode == debugMode)&&(identical(other.fontFamily, fontFamily) || other.fontFamily == fontFamily));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,port,host,debugMode,fontFamily);

@override
String toString() {
  return 'EnvConfig(port: $port, host: $host, debugMode: $debugMode, fontFamily: $fontFamily)';
}


}

/// @nodoc
abstract mixin class _$EnvConfigCopyWith<$Res> implements $EnvConfigCopyWith<$Res> {
  factory _$EnvConfigCopyWith(_EnvConfig value, $Res Function(_EnvConfig) _then) = __$EnvConfigCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'port') String port,@JsonKey(name: 'host') String host,@JsonKey(name: 'debugMode') bool debugMode,@JsonKey(name: 'fontFamily') String fontFamily
});




}
/// @nodoc
class __$EnvConfigCopyWithImpl<$Res>
    implements _$EnvConfigCopyWith<$Res> {
  __$EnvConfigCopyWithImpl(this._self, this._then);

  final _EnvConfig _self;
  final $Res Function(_EnvConfig) _then;

/// Create a copy of EnvConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? port = null,Object? host = null,Object? debugMode = null,Object? fontFamily = null,}) {
  return _then(_EnvConfig(
port: null == port ? _self.port : port // ignore: cast_nullable_to_non_nullable
as String,host: null == host ? _self.host : host // ignore: cast_nullable_to_non_nullable
as String,debugMode: null == debugMode ? _self.debugMode : debugMode // ignore: cast_nullable_to_non_nullable
as bool,fontFamily: null == fontFamily ? _self.fontFamily : fontFamily // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
