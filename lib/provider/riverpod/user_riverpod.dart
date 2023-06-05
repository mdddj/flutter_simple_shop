import 'package:dd_js_util/dd_js_util.dart' hide CacheFactory;
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../api/apis.dart';
import '../../api/model/login_params.dart';
import '../../exception/app.dart';
import '../../freezed/login_result_model.dart';
import '../../index.dart';
import '../../pages/user_home_page/login/login_base.dart';
import 'model/my_user.dart';
import 'model/user.dart';

final userRiverpod =
    StateNotifierProvider<UserModel, UserDetailModal>(UserModel.new);

// 用户信息
class UserModel extends StateNotifier<UserDetailModal> implements LoginBase{
  final Ref ref;

  UserModel(this.ref) : super(const UserDetailModal(user: null));

  @Doc(message: '登录的方法,登录成功会返回一个jwt token')
  Future<LoginResultModel> login(LoginParams params) async {
    final response = await MyApiWithLogin(params).request();
    if(response.isSuccess){
      final model = LoginResultModel.fromJson(response.getMap("data"));
      setUserInfoToProvider(model.user);
      setTokenToCatch(model.token);
      return model;
    }else{
      throw AppRuntimeException(response.message);
    }
  }



  @override
  void setTokenToCatch(String token) {
    CacheFactory.create<TokenCache>().setToken(token);
    GetIt.instance.get<UserApi>().token = token;
  }

  @override
  void setUserInfoToProvider(MyUser user) {
    state = state.copyWith(user: user);
  }

  @override
  void logout() {
    state = state.copyWith(user: null);
    GetIt.instance.get<UserApi>().token = null;
  }


  //更新用户会员状态
  void openVip() {
    state = state.copyWith(user: state.user?.copyWith(vip: Vip.vip));
  }


  ///app 启动后尝试更新用户信息
  void startAppTryLogin(){ 
    CacheFactory.create<TokenCache>().userToken.then((value) {
      if(value.isNotEmpty){
        ///token获取用户信息
        wtfLog("启动尝试自动登录:$value");
        getIt.get<UserApi>().token = value;
        getIt.get<Api>().getUser(value).then((user)=>state = state.copyWith(user: user));
      }
    });
  }
}
