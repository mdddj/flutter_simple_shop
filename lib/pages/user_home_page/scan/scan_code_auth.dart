// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import '../../../common/utils.dart';
import '../../../provider/riverpod/user_riverpod.dart';
import '../../../widgets/simple_appbar.dart';

/// 授权页面
class ScanCodeAuth extends StatefulWidget {
  final String uuid; // 有效的uuid
  const ScanCodeAuth({Key? key, required this.uuid}) : super(key: key);

  @override
  _ScanCodeAuthState createState() => _ScanCodeAuthState();
}

class _ScanCodeAuthState extends State<ScanCodeAuth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(title: '登录授权'),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
                child: Image.asset(
              'assets/images/logo.png',
              width: 100,
              height: 100,
            )),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(onPressed: () async {
              final token = context.read(userModel).getUserToken;
              final isSuccess =await utils.userApi.setToken(widget.uuid, token);
              if(isSuccess){
                utils.showMessage('授权成功');
                Get.back();
              }
            }, child: const Text('允许登录网页版'))
          ],
        ),
      ),
    );
  }
}
