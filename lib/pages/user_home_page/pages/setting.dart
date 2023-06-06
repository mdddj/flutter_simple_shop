import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../provider/riverpod/user_riverpod.dart';

class UserSettingPage extends ConsumerStatefulWidget {
  const UserSettingPage({super.key});

  @override
  ConsumerState<UserSettingPage> createState() => _UserSettingPageState();
}

class _UserSettingPageState extends ConsumerState<UserSettingPage> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(children: [
          MyMenu(title:'浏览历史',
              svgIcon: 'assets/svg/user/llls.svg',
              color: Colors.green,
              actions: IconButton(onPressed: () {}, icon: Icon(Icons.delete, size: 22, color: Colors.grey.shade400)),
              child: _renderHistoryList()),
          const MyMenu(title:'我的钱包', svgIcon: 'assets/svg/user/qb.svg', color: Colors.red),
          const MyMenu(title:'我的分销', svgIcon: 'assets/svg/user/fx.svg', color: Colors.greenAccent),
          const MyMenu(title:'地址管理', svgIcon: 'assets/svg/user/dz.svg', color: Colors.deepOrangeAccent),
          const MyMenu(title:'我的收藏', svgIcon: 'assets/svg/user/sc.svg', color: Colors.blueAccent),
          MyMenu(title:'切换主题',
              svgIcon: 'assets/svg/user/zhuti.svg', color: Colors.pink, onTap: () => context.navToWidget(to: const ThemeSettingPage())),
          const MyMenu(title:'意见反馈', svgIcon: 'assets/svg/user/yj.svg', color: Colors.orangeAccent),
          const MyMenu(title:'设置', svgIcon: 'assets/svg/user/sz.svg', color: Colors.blue),
        ]),
      ),
    );
  }

  /// 浏览历史列表

  Widget _renderHistoryList() {
    return SizedBox(
      width: double.infinity,
      height: 80,
      child: ListView.builder(
        itemBuilder: (_, i) {
          return AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: const EdgeInsets.all(2),
                width: double.infinity,
                height: double.infinity,
                child: const Card(),
              ));
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget get logoutBtn =>    OutlinedButton(onPressed: ()=>ref.read(userRiverpod.notifier).logout(), child: const Text("退出登录"));
}

class MyMenu extends StatelessWidget {
  final String title;
  final String? svgIcon;
  final VoidCallback? onTap;
  final Widget? child;
  final Color? color;
  final Widget? actions;
  const MyMenu({super.key, required this.title, this.svgIcon, this.onTap, this.child, this.color, this.actions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: svgIcon == null
              ? null
              : SvgPicture.asset(
            svgIcon!,
            width: 22,
            height: 22,
            colorFilter: ColorFilter.mode(color ?? Colors.grey.shade200, BlendMode.srcIn),
          ),
          title: Row(
            children: [Text(title), const Spacer(), actions ?? const SizedBox()],
          ),
          onTap: onTap,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: child ?? const SizedBox(),
        )
      ],
    );
  }
}
