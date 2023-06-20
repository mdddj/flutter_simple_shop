part of pages;

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
  final usernameEditController = TextEditingController(text: '');
  final passwordEditController = TextEditingController(text: '');
  final LoginType _loginType = LoginType.email;

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
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.all(context.screenWidth * 0.1),
        height: context.screenHeight,
        child: Column(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: context.screenHeight * 0.16),
                Text('登录',
                    style: context.textTheme.titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold, fontSize: 53)),
                SizedBox(height: context.screenHeight * 0.032),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: '请输入邮箱',
                          labelText: _accountLabel,
                        ),
                        controller: usernameEditController,
                      ),

                      const SizedBox(
                        height: 12,
                      ),
                      // 密码输入框
                      TextField(
                        decoration: const InputDecoration(
                          hintText: '请输入密码',
                          labelText: '密码',
                        ),
                        controller: passwordEditController,
                        obscureText: true,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                renderLoginButton(),
              ],
            ),
            const Spacer(),
            _moreActions
            // // 协议按钮
            // renderXieyi(),

            // // 页面关闭按钮
            // Positioned(
            //   left: 12,
            //   top: context.paddingTop + 12,
            //   child: GestureDetector(
            //       onTap: context.pop, child: const Icon(Icons.close)),
            // )
          ],
        ),
      ),
    );
  }

  String get _accountLabel {
    return _loginType.title;
  }

  // 登录按钮
  Widget renderLoginButton() {
    return SizedBox(
        width: double.infinity,
        child: FilledButton(onPressed: _submit, child: const Text('登录')));
  }

  Widget get _moreActions {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('用户注册').click(_navToRegisterPage),
        // const VerticalDivider(),
        // ..._showTypes
        //     .map((element) => Text("${element.title}登录")
        //         .marginOnly(right: 5)
        //         .click(() => _changeLoginType(element)))
        //     .toList()
      ],
    );
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
          const Padding(
            padding: EdgeInsets.only(left: 5.0),
            child: FSuper(
              lightOrientation: FLightOrientation.LeftBottom,
              text: '我已阅读并同意',
              spans: [
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
      await ref.read(userRiverpod.notifier).login(LoginParams(
          loginnumber: username,
          password: password,
          logintype: _loginType.type));
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
