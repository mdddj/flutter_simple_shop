// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:

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
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.qr_code,
              color: Colors.white,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
            )),
        utils.widgetUtils.marginRight()
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
