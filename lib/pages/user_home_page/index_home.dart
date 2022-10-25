import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_more_list/loading_more_list.dart';

import '../../common/utils.dart';
import '../../provider/riverpod/user_riverpod.dart';
import '../setting/theme_setting.dart';
import 'header/appbar.dart';
import 'header/index.dart';
import 'order/index.dart';

/// 用户主页布局
class UserIndexHome extends ConsumerStatefulWidget {
  const UserIndexHome({Key? key}) : super(key: key);

  @override
  UserIndexHomeState createState() => UserIndexHomeState();
}

class UserIndexHomeState extends ConsumerState<UserIndexHome> {
  @override
  void initState() {
    super.initState();
    Future.microtask(ref.read(userRiverpod.notifier).initState);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              decoration:  BoxDecoration(color: context.primaryColor),
              child: Column(children: [
                const UserHomeAppBar(),
                _buildHeaderWidget(),
              ]),
            ),
            utils.widgetUtils.marginTop(),
            _renderUserValues(),
            const OrderIndex(),
            utils.widgetUtils.marginTop(),
            _renderMenus(),
            utils.widgetUtils.marginTop(),
          ],
        ),
      ),
    );
  }

// 渲染个人中心菜单
  Widget _renderMenus() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(children: [
          _renderMenuItem('浏览历史',
              svgIcon: 'assets/svg/user/llls.svg',
              color: Colors.green,
              child: _renderHistoryList(),
              actions: IconButton(onPressed: () {}, icon: Icon(Icons.delete, size: 22, color: Colors.grey.shade400))),
          _renderMenuItem('我的钱包', svgIcon: 'assets/svg/user/qb.svg', color: Colors.red),
          _renderMenuItem('我的分销', svgIcon: 'assets/svg/user/fx.svg', color: Colors.greenAccent),
          _renderMenuItem('地址管理', svgIcon: 'assets/svg/user/dz.svg', color: Colors.deepOrangeAccent),
          _renderMenuItem('我的收藏', svgIcon: 'assets/svg/user/sc.svg', color: Colors.blueAccent),
          _renderMenuItem('切换主题',
              svgIcon: 'assets/svg/user/zhuti.svg',
              color: Colors.pink,
              onTap: () => context.navToWidget(to: const ThemeSettingPage())),
          _renderMenuItem('意见反馈', svgIcon: 'assets/svg/user/yj.svg', color: Colors.orangeAccent),
          _renderMenuItem('设置', svgIcon: 'assets/svg/user/sz.svg', color: Colors.blue),
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
                child: const Card(
                ),
              ));
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }

// 菜单项目
  Widget _renderMenuItem(String title,
      {String? svgIcon, VoidCallback? onTap, Widget? child, Color? color, Widget? actions}) {
    return Column(
      children: [
        ListTile(
          leading: svgIcon == null
              ? null
              : SvgPicture.asset(
                  svgIcon,
                  width: 22,
                  height: 22,
                  color: color,
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

// 用户订单和优惠券,余额等数据
  Widget _renderUserValues() {
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(18.0),
      child: _renderCounts(),
    ));
  }

  Widget _renderCounts() {
    return WaterfallFlow.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      children: [
        _countItem('余额', '102.43'),
        _countItem('优惠券', '32张'),
        _countItem('积分', '289'),
      ],
    );
  }

  Widget _countItem(String key, String value) {
    return Column(children: [
      Text(value, style: context.textTheme.subtitle1),
      const SizedBox(
        height: 6,
      ),
      Text(key, style: context.textTheme.bodySmall)
    ]);
  }

// 用户中心的头部
  Widget _buildHeaderWidget() {
    return const HeaderIndex();
  }
}
