// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import '../../common/utils.dart';
import '../../modals/user.dart';

final userModel = ChangeNotifierProvider((ref) => UserModel());

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
      Hive.box('app').delete('token');
    });
  }

  // token处理
  void tokenHandle(String token) {
    _token = token;
    var box = Hive.box('app');
    box.put('token', token);
    appStartWithUserModel();
    notifyListeners();
  }

  // app启动的时候获取token,判断是否失败,
  Future<void> appStartWithUserModel() async {
    final token = Hive.box('app').get('token');
    if (token != null) {
      final _user = await utils.api.getUser(token);
      if (_user != null) {
        user = _user;
        _token = _token;
        isLogin = true;
        notifyListeners();
      }
    }
  }
}
