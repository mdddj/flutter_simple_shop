import 'package:freezed_annotation/freezed_annotation.dart';

part 'env_config.freezed.dart';
part 'env_config.g.dart';


@freezed
class EnvConfig with _$EnvConfig {
  const EnvConfig._();

  const factory EnvConfig({
      @JsonKey(name: 'port') @Default('')  String port,
      @JsonKey(name: 'host') @Default('')  String host,
      @JsonKey(name: 'debugMode') @Default(false)  bool debugMode,
      @JsonKey(name: 'fontFamily') @Default('')  String fontFamily,
    }) = _EnvConfig;
  
  factory EnvConfig.fromJson(Map<String, dynamic> json) => _$EnvConfigFromJson(json);

}

