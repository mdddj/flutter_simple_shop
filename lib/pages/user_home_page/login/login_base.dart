import '../../../provider/riverpod/model/my_user.dart';

abstract class LoginBase {


  /// 设置用户信息到状态管理中
  /// [user] -
  void setUserInfoToProvider(MyUser user);

  ///  保存token到缓存
  /// [token] -
  void setTokenToCatch(String token);

  ///退出登录
  void logout();
}