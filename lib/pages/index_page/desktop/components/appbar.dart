// Flutter imports:
import 'package:flutter/material.dart';

/// 桌面端的导航条
class IndexAppbarWithDesktop extends StatelessWidget implements PreferredSizeWidget {
  const IndexAppbarWithDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: Container(
        color: Colors.grey,
        child: Row(
          children: const [
            Text('典典的小卖部')
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
