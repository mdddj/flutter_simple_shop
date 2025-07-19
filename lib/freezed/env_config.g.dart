// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EnvConfig _$EnvConfigFromJson(Map<String, dynamic> json) => _EnvConfig(
      port: json['port'] as String? ?? '',
      host: json['host'] as String? ?? '',
      debugMode: json['debugMode'] as bool? ?? false,
      fontFamily: json['fontFamily'] as String? ?? '',
    );

Map<String, dynamic> _$EnvConfigToJson(_EnvConfig instance) =>
    <String, dynamic>{
      'port': instance.port,
      'host': instance.host,
      'debugMode': instance.debugMode,
      'fontFamily': instance.fontFamily,
    };
