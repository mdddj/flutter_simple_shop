

import '../../../provider/riverpod/model/my_user.dart';

abstract class LoginBase {
  void setUserInfoToProvider(MyUser user);
  void setTokenToCatch(String token);
}