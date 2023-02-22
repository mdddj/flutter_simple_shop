import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';

// 注册页面
class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _emailController = TextEditingController();
  final _codeController = TextEditingController();
  final _passController = TextEditingController();
  final _finalPassController = TextEditingController();

  String get _email => _emailController.text;

  String get _code => _codeController.text;

  String get _pass => _passController.text;

  String get _finalPass => _finalPassController.text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("注册典典账号"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(label: Text("邮箱")),
              controller: _emailController,
            ),
            const SizedBox(
              height: 12,
            ),
            TextField(
              controller: _codeController,
              decoration: InputDecoration(label: Text("邮箱验证码"), suffixIcon: ElevatedButton(onPressed: _getValidCode, child: Text("获取验证码"))),
            ),
            SizedBox(
              height: 12,
            ),
            TextField(
              controller: _passController,
              decoration: InputDecoration(label: Text("密码")),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _finalPassController,
              decoration: InputDecoration(label: Text("确认密码")),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(width: double.infinity, child: FilledButton(onPressed: _register, child: Text("注册")))
          ],
        ),
      ),
    );
  }

  void _register() {}

  void _getValidCode() {}
}
