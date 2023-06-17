// Flutter imports:
import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Package imports:

// Project imports:
import '../../../common/utils.dart';
import '../../../router.dart';

class UserHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const UserHomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      automaticallyImplyLeading: false,
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.line_axis,
              color: Colors.white,
            )),
        IconButton(
            onPressed: () {
              context.push(pagerUtil.setting.routername);
            },
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            )),
        const SizedBox(width: 12)
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
