part of '../../index.dart';

// 注册页面
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _emailController = TextEditingController();
  final _codeController = TextEditingController();
  final _passController = TextEditingController();
  final _finalPassController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  String get _email => _emailController.text;

  String get _code => _codeController.text;

  String get _pass => _passController.text;

  String get _finalPass => _finalPassController.text;

  final CountDownController _countDownController = CountDownController();
  bool _disableGetCodeBtn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("注册典典账号"),
      ),
      body: Card(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(label: Text("邮箱")),
                    validator: (value) => value == null ? "请输入邮箱" : null,
                    controller: _emailController,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    controller: _codeController,
                    decoration: InputDecoration(
                        label: const Text("邮箱验证码"), suffixIcon: _getCodeBtn),
                    validator: (value) => value?.length != 6 ? "请输入验证码" : null,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    controller: _passController,
                    decoration: const InputDecoration(label: Text("密码")),
                    validator: (value) =>
                        (value?.length ?? 0) < 6 ? "请输入正确的密码" : null,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _finalPassController,
                    decoration: const InputDecoration(label: Text("确认密码")),
                    validator: (value) {
                      if (value == null || value.length < 6) {
                        return "请输入正确的密码";
                      }
                      if (value != _pass) {
                        return "两次密码不一致,请检查";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: FilledButton(
                          onPressed: _register, child: const Text("注册")))
                ],
              )),
        ),
      ),
    );
  }

  Widget get _getCodeBtn {
    return CountDown(
      builder: (ctx, a, b, c, d, e) {
        return OutlinedButton(
            onPressed: _disableGetCodeBtn ? null : _getValidCode,
            child: Text(_disableGetCodeBtn ? "$d秒后重试" : "获取验证码"));
      },
      controller: _countDownController,
      onStart: () => setState(() => _disableGetCodeBtn = true),
      onEnd: () => setState(() => _disableGetCodeBtn = false),
      interval: const Duration(seconds: 1),
      endTime:
          DateTime.now().add(const Duration(seconds: 60)).toIso8601String(),
    ).marginOnly(right: 12);
  }

  //注册用户
  Future<void> _register() async {
    if (!_isValid) {
      return;
    }
    context.hideKeyBoard();
    final nav = context.nav;
    try {
      await MyApiWithEmailRegister(EmailRegisterParams(
              email: _email, code: _code, password: _finalPass))
          .request();
      toast('注册成功');
      nav.pop(true);
    } on BaseApiException catch (e) {
      e.showErrorMessage();
    }
  }

  //获取验证码
  Future<void> _getValidCode() async {
    if (_email.isEmpty) {
      toast('请输入邮箱');
      return;
    }
    context.hideKeyBoard();
    try {
      await getIt
          .get<MyApiWithSendEmailValidCode>()
          .request(R(data: GetEmailValidCodeParams(email: _email).toJson()));
      SmartDialog.showNotify(msg: '验证码发送成功', notifyType: NotifyType.success);
      _countDownController.start();
    } catch (e) {
      toast(e.errorMessage);
    }
  }

  //表单是否验证通过
  bool get _isValid => (_formKey.currentState?.validate() ?? false) == true;

  @override
  void dispose() {
    _countDownController.dispose();
    super.dispose();
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }
}
