import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_params.freezed.dart';

part 'login_params.g.dart';

extension LoginParamsEx on LoginParams {
  String get getApiPath {
    switch (logintype) {
      case 'account':
        return '/api/user-public/login';
      case 'email':
        return '/api/user-public/login-by-email';
      default:
        return '';
    }
  }
}

@freezed
sealed class LoginParams with _$LoginParams {
  const factory LoginParams({
    @JsonKey(name: 'loginType') @Default('') String logintype,
    @JsonKey(name: 'password') @Default('') String password,
    @JsonKey(name: 'loginNumber') @Default('') String loginnumber,
  }) = _LoginParams;

  factory LoginParams.fromJson(Map<String, dynamic> json) =>
      _$LoginParamsFromJson(json);
}
