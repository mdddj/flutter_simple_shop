// Flutter imports:
// Package imports:
import 'package:fbutton_nullsafety/fbutton_nullsafety.dart';
import 'package:fcontrol_nullsafety/fdefine.dart' as controller;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fsuper_nullsafety/fsuper_nullsafety.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

// Project imports:
import '../../../common/utils.dart';
import '../../../common/widget_util.dart';
import '../../../constant/style.dart';
import '../../../provider/riverpod/user_riverpod.dart';

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

  Scaffold buildScaffold(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text('登录'),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Center(child: Text('注册账号',style: TextStyle(color: Colors.blueGrey),)),
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          SizedBox(
            height: WidgetUtils().kBodyHeight,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  // //   Logo
                  // renderLogo(),
                  //
                  // // 间隔
                  // const SizedBox(height: 40),

                  //表单
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    margin:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding,vertical: 30),
                    child: Column(
                      children: <Widget>[
                        // 用户名输入框
                        TextField(
                          decoration: const InputDecoration(
                              hintText: '请输入登录账号',
                              labelText: '账号',
                              border:
                                  OutlineInputBorder(borderSide: BorderSide())),
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
                              border:
                                  OutlineInputBorder(borderSide: BorderSide())),
                          onChanged: (val) {
                            setState(() {
                              password = val;
                            });
                          },
                        )
                      ],
                    ),
                  ),

                  // 间隔
                  const SizedBox(height: 20),
                  renderLoginButton()
                ],
              ),
            ),
          ),
          renderXieyi()
        ],
      ),
    );
  }

  Widget renderLoginButton() {




    return FButton(
      width: Get.width,
      text: '登 录',
      style: const TextStyle(color: Colors.white),
      color: Colors.pink,
      onPressed: _submit,
      clickEffect: true,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(kDefaultPadding),
      highlightColor: Colors.pinkAccent.withOpacity(0.50),
      hoverColor: Colors.pink.withOpacity(0.76),
    ).marginSymmetric(horizontal: 30);
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
          InkWell(
            onTap: () {
              setState(() {
                isAgree = !isAgree;
              });
            },
            child: Image.asset(
              isAgree
                  ? 'assets/icons/select.png'
                  : 'assets/icons/select_no.png',
              height: 22,
              width: 22,
            ),
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
