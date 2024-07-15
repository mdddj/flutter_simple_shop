part of 'index.dart';

abstract class ApiService {
  // 接口访问失败返回
  void errorHandle(int? code, String? msg);

  /// 获取用户相关信息
  Future<MyUser?> getUser(String token);
}

/// 接口
class Api extends ApiService {
  @override
  Future<MyUser?> getUser(String token) async {
    try {
      final result = await GetUserByTokenApi()
          .request(RequestParams(headers: {"Authorization": token}));
      return result;
    } catch (e) {
      Logger().w('获取用户信息失败:$e');
      TokenCache().cleanToken();
      return null;
    }
  }

  @override
  void errorHandle(int? code, String? msg) {
    if (msg != null) {
      utils.showMessage(msg);
    }
  }

  Future<Map<String, dynamic>> getAuthorizationHeader() async {
    final token = await TokenCache().userToken;
    if (token.isNotEmpty) {
      return {"Authorization": token};
    }
    return <String, dynamic>{};
  }
}
