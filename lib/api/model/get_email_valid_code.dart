import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_email_valid_code.freezed.dart';
part 'get_email_valid_code.g.dart';


@freezed
class GetEmailValidCodeParams with _$GetEmailValidCodeParams {
  const factory GetEmailValidCodeParams({
      @JsonKey(name: 'email') @Default('')  String email,
    }) = _GetEmailValidCodeParams;
  
  factory GetEmailValidCodeParams.fromJson(Map<String, dynamic> json) => _$GetEmailValidCodeParamsFromJson(json);
}

