import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../modals/user.dart';

part 'my_user.freezed.dart';
part 'my_user.g.dart';


@freezed
class MyUser with _$MyUser{

  const factory MyUser({
    required String id,
    required String loginNumber,
    required String nickName,
    required String email,
    required String picture,
    required String phone,
    required int type,
    required int status,
  }) = _MyUser;

  factory MyUser.fromJson(Map<String,Object?> json)=>_$MyUserFromJson(json);

  ///转换工具类
  factory MyUser.fromUser(User user) {
    final vUser = MyUser(id: user.id.toString(), loginNumber: user.loginNumber,
        nickName: user.nickName, email: user.email.toString(), picture: user.picture,
        phone: user.phone.toString(), type: user.type, status: user.status);
    return vUser;
  }

}