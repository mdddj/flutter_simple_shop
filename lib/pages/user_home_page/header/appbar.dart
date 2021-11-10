// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../../common/utils.dart';
import '../scan/scan_code_auth.dart';
import '../scan/scan_view.dart';

class UserHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const UserHomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: const Text(
        '个人中心',
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        if (!GetPlatform.isWeb)
          IconButton(
              onPressed: () async {
                final scanData = await ScanLayout.doScan();
                if (scanData.isNotEmpty) {
                  final isOk = await utils.userApi.checkIsUuid(scanData);
                  if (isOk) {
                    await Get.to(() => ScanCodeAuth(
                          uuid: scanData,
                        ));
                  }
                }
              },
              icon: const Icon(
                Icons.qr_code,
                color: Colors.black,
              )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: Colors.black,
            )),
        IconButton(
            onPressed: () async {
              final result = utils.weChatBro;
              utils.showMessage(result ? '是微信浏览器' : '不是微信浏览器');
            },
            icon: const Icon(Icons.cast_connected_sharp)),
        utils.widgetUtils.marginRight()
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
