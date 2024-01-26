// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EnvConfigImpl _$$EnvConfigImplFromJson(Map<String, dynamic> json) =>
    _$EnvConfigImpl(
      port: json['port'] as String? ?? '',
      host: json['host'] as String? ?? '',
      debugMode: json['debugMode'] as bool? ?? false,
      fontFamily: json['fontFamily'] as String? ?? '',
    );

Map<String, dynamic> _$$EnvConfigImplToJson(_$EnvConfigImpl instance) =>
    <String, dynamic>{
      'port': instance.port,
      'host': instance.host,
      'debugMode': instance.debugMode,
      'fontFamily': instance.fontFamily,
    };
