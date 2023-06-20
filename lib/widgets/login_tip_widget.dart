import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';

import '../pages/index.dart';

class LoginTipWidget extends StatelessWidget {
  const LoginTipWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('请先登录进行下一步操作'),
            const SizedBox(
              height: 33,
            ),
            FilledButton(
                onPressed: () {
                  context.navToWidget(to: const UserLoginPage());
                },
                child: const Text("登录"))
          ]),
    );
  }
}
