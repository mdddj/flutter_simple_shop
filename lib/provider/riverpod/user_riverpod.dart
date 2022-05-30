// Flutter imports:
import 'package:flutter/material.dart';


// Project imports:
import '../../common/utils.dart';
import '../../modals/user.dart';


// 用户信息
class UserModel extends ChangeNotifier {
  User? user;
  String? _token;

  /// 是否已经登录
  bool isLogin = false;

  String get getUserToken => _token ?? '';

  // 判断用户是否有淘客权限
  bool hasAdminAuthority() {
    return isLogin && user != null && user!.roles.where((element) => element.name == 'admin').toList().isNotEmpty;
  }

  // 用户登录的方法处理
  Future<bool> login(String username, String password) async {
    return await utils.api.login(username, password, tokenHandle: tokenHandle, loginFail: (msg) {
      utils.showMessage(msg);
    });
  }

  // token处理
  void tokenHandle(String token) {
    _token = token;
    appStartWithUserModel();
    notifyListeners();
  }

  // app启动的时候获取token,判断是否失败,
  Future<void> appStartWithUserModel() async {

  }
}
