import 'package:dd_js_util/dd_js_util.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:fcontrol_nullsafety/fdefine.dart' as controller;
import 'package:flutter/material.dart';
import 'package:fsuper_nullsafety/fsuper_nullsafety.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../api/model/login_params.dart';
import '../../../assets.dart';
import '../../../common/utils.dart';
import '../../../provider/riverpod/user_riverpod.dart';
import 'register_page.dart';

///登录方式
enum LoginType {
  account("account", "账号"),
  email("email", "邮箱"),
  phone("phone", "手机号");

  const LoginType(this.type, this.title);

  final String type;
  final String title;
}

// 用户登入页面
class UserLoginPage extends ConsumerStatefulWidget {
  const UserLoginPage({Key? key}) : super(key: key);

  @override
  UserLoginPageState createState() => UserLoginPageState();
}

class UserLoginPageState extends ConsumerState<UserLoginPage> {
  bool isAgree = false; // 是否同意协议
  bool loading = false; // 是否登录中
  final usernameEditController = TextEditingController(text: 'admin');
  final passwordEditController = TextEditingController(text: '123456');
  LoginType _loginType = LoginType.account;
  IList<LoginType> _showTypes = const IListConst([LoginType.email, LoginType.phone]);

  @override
  Widget build(BuildContext context) {
    return buildScaffold(context).editPage;
  }

  //跳转到注册页面
  void _navToRegisterPage() {
    context.navToWidget(to: const RegisterPage());
  }

  Scaffold buildScaffold(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20),
            height: context.screenHeight,
            width: context.screenWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                renderLogo(),
                // 用户名输入框
                TextField(
                  decoration: InputDecoration(
                    hintText: '请输入$_accountLabel',
                    labelText: _accountLabel,
                  ),
                  controller: usernameEditController,
                ),

                utils.widgetUtils.marginTop(height: 20),
                // 密码输入框
                TextField(
                  decoration: const InputDecoration(
                    hintText: '请输入登录密码',
                    labelText: '密码',
                  ),
                  controller: passwordEditController,
                  obscureText: true,
                ),

                const SizedBox(
                  height: 40,
                ),
                renderLoginButton(),
                const SizedBox(height: 12),
                _moreActions
              ],
            ),
          ),

          // 协议按钮
          renderXieyi(),

          // 页面关闭按钮
          Positioned(
            left: 12,
            top: context.paddingTop + 12,
            child: GestureDetector(onTap: context.pop, child: const Icon(Icons.close)),
          )
        ],
      ),
    );
  }

  String get _accountLabel {
    return _loginType.title;
  }

  // 登录按钮
  Widget renderLoginButton() {
    return SizedBox(width: double.infinity, child: ElevatedButton(onPressed: _submit, child: const Text('登录')));
  }

  Widget get _moreActions {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('用户注册').click(_navToRegisterPage),
        const VerticalDivider(),
        ..._showTypes.map((element) => Text("${element.title}登录").marginOnly(right: 5).click(() => _changeLoginType(element))).toList()
      ],
    );
  }

  ///切换登录方式
  void _changeLoginType(LoginType type) {
    setState(() {
      _loginType = type;
      _showTypes = const IListConst<LoginType>(LoginType.values).remove(type);
    });
    usernameEditController.clear();
    passwordEditController.clear();
  }

  // 协议
  Widget renderXieyi() {
    return Positioned(
      bottom: 20,
      left: 0,
      right: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              setState(() {
                isAgree = !isAgree;
              });
            },
            child: Icon(isAgree ? Icons.check_circle_outline : Icons.circle_outlined),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 5.0),
            child: FSuper(
              lightOrientation: controller.FLightOrientation.LeftBottom,
              text: '我已阅读并同意',
              spans: [
                TextSpan(text: '用户协议', style: TextStyle(decoration: TextDecoration.underline)),
                TextSpan(text: '和', style: TextStyle()),
                TextSpan(text: '隐私政策', style: TextStyle(decoration: TextDecoration.underline)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // 顶部logo
  Widget renderLogo() {
    return Image.asset(
      Assets.assetsImagesLogoPng,
      width: 80,
      height: 80,
    ).center.marginOnly(bottom: 12);
  }

  /// 登录
  Future<void> _submit() async {
    context.hideKeyBoard();
    final username = usernameEditController.text;
    final password = passwordEditController.text;
    if (username.isEmpty || password.isEmpty) {
      utils.showMessage('请检查${_loginType.title}或者密码');
      return;
    }
    try {
      final nav = context.nav;
       await ref.read(userRiverpod.notifier).login(LoginParams(loginnumber: username, password: password, logintype: _loginType.type));
      nav.pop();
    } on AppException catch (e) {
      toast(e.message);
    }
  }

  @override
  void setState(VoidCallback fn) {
    if (!mounted) return;
    super.setState(fn);
  }
}
