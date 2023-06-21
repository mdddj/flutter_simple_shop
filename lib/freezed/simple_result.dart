import 'package:freezed_annotation/freezed_annotation.dart';

part 'simple_result.freezed.dart';
part 'simple_result.g.dart';


@freezed
class SimpleResult with _$SimpleResult {
  const SimpleResult._();

  const factory SimpleResult({
      @JsonKey(name: 'message') @Default('')  String message,
      @JsonKey(name: 'state') @Default(0)  int state,
      @JsonKey(name: 'success') @Default(false)  bool success,
      @JsonKey(name: 'type') @Default(0)  int type,
    @JsonKey(name: 'data') dynamic data
    }) = _SimpleResult;
  
  factory SimpleResult.fromJson(Map<String, dynamic> json) => _$SimpleResultFromJson(json);

}

