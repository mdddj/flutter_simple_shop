import 'package:dd_js_util/api/base.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import '../../common/utils.dart';
import '../../service/user_api.dart';
import '../../util/cache_util.dart';
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
      CacheFactory.create<TokenCache>().setToken(token);
      GetIt.instance.get<UserApi>().token = token;
    } else {
      toast("获取用户信息失败,请稍后重试");
    }
  }

  @Doc(message: '页面初始化执行函数,从缓存中取出token,然后加载用户信息')
  void initState() async {
    final t = await CacheFactory.create<TokenCache>().userToken;
    Logger().d('加载缓存token:$t');
    if (t.isNotEmpty) {
      fetchUserDetail(t);
    }
  }
}
