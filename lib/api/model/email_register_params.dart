import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_register_params.freezed.dart';
part 'email_register_params.g.dart';


@freezed
class EmailRegisterParams with _$EmailRegisterParams {
  const factory EmailRegisterParams({
      @JsonKey(name: 'email') @Default('')  String email,
      @JsonKey(name: 'code') @Default('')  String code,
      @JsonKey(name: 'password') @Default('')  String password,
    }) = _EmailRegisterParams;
  
  factory EmailRegisterParams.fromJson(Map<String, dynamic> json) => _$EmailRegisterParamsFromJson(json);
}

