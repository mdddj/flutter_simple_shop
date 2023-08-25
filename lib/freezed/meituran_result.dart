import 'package:freezed_annotation/freezed_annotation.dart';

part 'meituran_result.freezed.dart';
part 'meituran_result.g.dart';


@freezed
class MeituanResult with _$MeituanResult {
  const MeituanResult._();

  const factory MeituanResult({
      @JsonKey(name: 'data') @Default('')  String data,
      @JsonKey(name: 'des') @Default('')  String des,
      @JsonKey(name: 'status') @Default(0)  int status,
      @JsonKey(name: 'successful') @Default(false)  bool successful,
    }) = _MeituanResult;
  
  factory MeituanResult.fromJson(Map<String, dynamic> json) => _$MeituanResultFromJson(json);

}

