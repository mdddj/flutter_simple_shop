// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../../common/utils.dart';

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
