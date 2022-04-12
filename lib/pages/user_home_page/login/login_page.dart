// Flutter imports:
// Package imports:
import 'package:fcontrol_nullsafety/fdefine.dart' as controller;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fsuper_nullsafety/fsuper_nullsafety.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

// Project imports:
import '../../../common/utils.dart';
import '../../../provider/riverpod/user_riverpod.dart';
import 'register_page.dart';

// 用户登入页面
class UserLoginPage extends StatefulWidget {
  const UserLoginPage({Key? key}) : super(key: key);

  @override
  _UserLoginPageState createState() => _UserLoginPageState();
}

class _UserLoginPageState extends State<UserLoginPage> {
  bool isAgree = false; // 是否同意协议
  String username = ''; // 用户名
  String password = ''; // 密码
  bool loading = false; // 是否登录中

  @override
  Widget build(BuildContext context) {
    return buildScaffold(context);
  }

  //跳转到注册页面
  void _navToRegisterPage() {
    Get.to(() => const RegisterPage());
  }

  Scaffold buildScaffold(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20),
            height: Get.height,
            width: Get.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // 用户名输入框
                TextField(
                  decoration: const InputDecoration(
                    hintText: '请输入登录账号',
                    labelText: '账号',
                  ),
                  onChanged: (val) {
                    setState(() {
                      username = val;
                    });
                  },
                ),

                utils.widgetUtils.marginTop(height: 20),
                // 密码输入框
                TextField(
                  decoration: const InputDecoration(
                    hintText: '请输入登录密码',
                    labelText: '密码',
                  ),
                  onChanged: (val) {
                    setState(() {
                      password = val;
                    });
                  },
                ),

                const SizedBox(height: 40,),
                renderLoginButton(),
                const SizedBox(height: 12),
                renderRegisterButton()
              ],
            ),
          ),

          // 协议按钮
          renderXieyi(),

          // 页面关闭按钮
          Positioned(
            child: GestureDetector(
                onTap: Get.back, child: const Icon(Icons.close)),
            left: 12,
            top: Get.mediaQuery.padding.top + 12,
          )
        ],
      ),
    );
  }

  // 登录按钮
  Widget renderLoginButton() {
    return SizedBox(
      width: double.infinity,
        child: ElevatedButton(onPressed: _submit, child: const Text('登录')));
  }

// 注册按钮
  Widget renderRegisterButton() {
    return SizedBox(
      width: double.infinity,
        child:
            TextButton(child: const Text('注册'), onPressed: _navToRegisterPage));
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
            child: Icon(
                isAgree ? Icons.check_circle_outline : Icons.circle_outlined),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: FSuper(
              lightOrientation: controller.FLightOrientation.LeftBottom,
              text: '我已阅读并同意',
              spans: const [
                TextSpan(
                    text: '用户协议',
                    style: TextStyle(decoration: TextDecoration.underline)),
                TextSpan(text: '和', style: TextStyle()),
                TextSpan(
                    text: '隐私政策',
                    style: TextStyle(decoration: TextDecoration.underline)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // 顶部logo
  Widget renderLogo() {
    return Center(
      child: Container(
          margin: const EdgeInsets.only(top: 12),
          width: 80,
          height: 80,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          child: Stack(
            children: [
              const SizedBox(
                width: 80,
                height: 80,
              ),
              Positioned(
                left: 0,
                top: 0,
                child: SvgPicture.asset(
                  'assets/svg/diandian.svg',
                  width: 80,
                  height: 80,
                  color: Colors.pink,
                ),
              )
            ],
          )),
    );
  }

  /// 登录
  Future<void> _submit() async {
    if (username.isEmpty || password.isEmpty) {
      utils.showMessage('请输入用户名或者密码');
      return;
    }
    var isLoginSuccess =
        await context.read<UserModel>().login(username, password);
    if (isLoginSuccess) {
      Get.back();
    }
    setState(() {
      loading = false;
    });
  }
}
