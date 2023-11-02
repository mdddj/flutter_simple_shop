part of '../index.dart';

extension LoginDialogTypeEx on LoginType {
  String get hintText {
    switch (this) {
      case LoginType.email:
        return "邮箱";
      case LoginType.account:
        return "用户名";
    }
  }
}

///登录弹窗,只有在desktop模式下弹出
class LoginDialog extends ConsumerStatefulWidget {
  const LoginDialog({super.key});

  @override
  ConsumerState<LoginDialog> createState() => _LoginDialogState();
}

class _LoginDialogState extends ConsumerState<LoginDialog> {
  final loginNameController = TextEditingController();
  final passwordController = TextEditingController();

  LoginType type = LoginType.account;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("登录"),
      content: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            width: double.infinity,
            child: CupertinoSlidingSegmentedControl<LoginType>(
              children: const {LoginType.account: Text("账号登录"), LoginType.email: Text("邮箱登录")},
              onValueChanged: (v) {
                setState(() {
                  type = v ?? LoginType.account;
                });
              },
              groupValue: type,
            ),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: loginNameController,
            decoration: InputDecoration(hintText: type.hintText),
          ),
          const SizedBox(
            height: 12,
          ),
          TextField(
            controller: passwordController,
            decoration: const InputDecoration(
              hintText: "密码",
            ),
            obscureText: true,
          ),
          const SizedBox(height: 33),
          SizedBox(width: double.infinity, child: FilledButton(onPressed: () => _login(ref), child: const Text("登录")))
        ]),
      ),
    );
  }

  ///开始登录
  Future<void> _login(WidgetRef ref) async {
    try {
      final nav = context.nav;
      await ref.read(userRiverpod.notifier).login(LoginParams(loginnumber: loginNameController.text, password: passwordController.text, logintype: type.type));
      nav.pop();
    } on BaseApiException catch (e) {
      toast(e.message);
    }
  }
}
