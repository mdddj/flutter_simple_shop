part of '../index.dart';

///riverpod 扩展函数
extension RefExt on WidgetRef {
  ///获取当前已经登录的用户
  MyUser? get user => watch(userRiverpod.select((value) => value.user));

  ///判断用户是否已经登录
  bool get isLogin => user != null;

  bool isLoginFun() {
    return isLogin;
  }
}
