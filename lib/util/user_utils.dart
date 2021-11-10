// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:shared_preferences/shared_preferences.dart';

// Project imports:
import '../modals/user.dart';

class UserUtil{

  static Future<SharedPreferences> refs = SharedPreferences.getInstance();

  static Future<User?> loadUserInfo() async {
    var _refs = await refs;
    var userInfoJsonStr = _refs.getString('userInfo');
    if (userInfoJsonStr == null) {
      return null;
    }
    final userData = User.fromJson(json.decode(userInfoJsonStr));
    return userData;
  }

  static Future<void> setUserInfo(String json) async {
    var _refs = await refs;
    await _refs.setString('userInfo', json);
  }

  static Future<void> removeUserInfoData() async {
    var _refs = await refs;
    await _refs.remove('userInfo');
  }
}
