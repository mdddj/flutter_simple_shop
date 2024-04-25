part of '../index.dart';

final userRiverpod =
    StateNotifierProvider<UserModel, UserDetailModal>(UserModel.new);

typedef UpdateModelCall<T> = T Function(T oldModel);

// 用户信息
class UserModel extends StateNotifier<UserDetailModal> implements LoginBase {
  final Ref ref;

  UserModel(this.ref) : super(const UserDetailModal(user: null));

  @Doc(message: '登录的方法,登录成功会返回一个jwt token')
  Future<LoginResultModel> login(LoginParams params) async {
    try {
      final response = await MyApiWithLogin(params).request();
      final model = LoginResultModel.fromJson(response.data);
      setUserInfoToProvider(model.user);
      setTokenToCatch(model.token);
      return model;
    } catch (_) {
      rethrow;
    }
  }

  @override
  void setTokenToCatch(String token) {
    TokenCache().setToken(token);
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
  void startAppTryLogin() {
    TokenCache().userToken.then((value) {
      if (value.isNotEmpty) {
        getIt.get<UserApi>().token = value;
        getIt.get<Api>().getUser(value).then((user) {
          state = state.copyWith(user: user);
          GetIt.instance.get<UserApi>().token = user == null ? '' : value;
        });
      }
    });
  }

  ///更新用户信息
  void updateUser(UpdateModelCall<MyUser> update) {
    final user = state.user;
    if (user != null) {
      state = state.copyWith(user: update.call(user));
    }
  }

  void updateIntro(String intro) {
    state = state.copyWith(user: state.user?.copyWith(intro: intro));
  }
}
