import 'package:dd_js_util/dd_js_util.dart' hide CacheFactory;
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../api/apis.dart';
import '../../api/model/login_params.dart';
import '../../common/api_ext.dart';
import '../../common/utils.dart';
import '../../service/user_api.dart';
import '../../util/cache_util.dart';
import 'model/user.dart';

final userRiverpod =
    StateNotifierProvider<UserModel, UserDetailModal>(UserModel.new);

// 用户信息
class UserModel extends StateNotifier<UserDetailModal> {
  final Ref ref;

  UserModel(this.ref) : super(const UserDetailModal(user: null));

  @Doc(message: '登录的方法,登录成功会返回一个jwt token')
  Future<bool> login(LoginParams params) async {
    final response = await MyApiWithLogin(params).request();
    if(response.isSuccess){
      fetchUserDetail(response.getString("data"));
      return true;
    }else{
      response.simpleToast();
      return false;
    }
  }

  @Doc(message: '使用jwt token 来加载用户的基本资料')
  Future<void> fetchUserDetail(String token) async {
    try{
      CacheFactory.create<TokenCache>().setToken(token);
      GetIt.instance.get<UserApi>().token = token;
      final vUser = await utils.api.getUser(token);
      if (vUser != null) {
        state = state.copyWith(user: vUser);
        toast('欢迎回来,${vUser.nickName}');
      }
    } on AppException catch(_){
      toast("获取用户信息失败,请稍后重试");
    }
  }

  @Doc(message: '页面初始化执行函数,从缓存中取出token,然后加载用户信息')
  void initState() async {
    final t = await CacheFactory.create<TokenCache>().userToken;
    if (t.isNotEmpty) {
      fetchUserDetail(t);
    }
  }
}
