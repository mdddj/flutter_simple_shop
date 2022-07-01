import 'package:dd_js_util/api/base.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../common/utils.dart';
import 'model/my_user.dart';
import 'model/user.dart';

final userRiverpod =
    StateNotifierProvider<UserModel, UserDetailModal>((ref) => UserModel(ref));

// 用户信息
class UserModel extends StateNotifier<UserDetailModal> {
  final Ref ref;

  UserModel(this.ref) : super(const UserDetailModal(user: null));

  @Doc(message: '登录的方法,登录成功会返回一个jwt token')
  Future<bool> login(String username, String password) async {
    return await utils.api.login(username, password, loginFail: (msg) {
      utils.showMessage(msg);
    }, tokenHandle: fetchUserDetail);
  }

  @Doc(message: '使用jwt token 来加载用户的基本资料')
  Future<void> fetchUserDetail(String token) async {
    final vUser = await utils.api.getUser(token);
    if (vUser != null) {
      state = state.copyWith(user: MyUser.fromUser(vUser));
      toast('欢迎回来,${vUser.nickName}');
    } else {
      toast("获取用户信息失败,请稍后重试");
    }
  }
}
