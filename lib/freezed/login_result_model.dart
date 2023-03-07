import 'package:dataoke_sdk/dataoke_sdk.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../provider/riverpod/model/my_user.dart';

part 'login_result_model.freezed.dart';
part 'login_result_model.g.dart';


@freezed
class LoginResultModel with _$LoginResultModel {
  const factory LoginResultModel({
      @JsonKey(name: 'token') required String token,
      @JsonKey(name: 'user') required MyUser user,
    }) = _LoginResultModel;
  
  factory LoginResultModel.fromJson(Map<String, dynamic> json) => _$LoginResultModelFromJson(json);
}



