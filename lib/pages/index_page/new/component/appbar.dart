import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../common/view.dart';
import '../../../../index.dart';

/// 首页导航栏
class IndexHomeAppbar extends View implements PreferredSizeWidget {
  final TabController tabController;

  const IndexHomeAppbar({Key? key, required this.tabController}) : super(key: key);

  Future<void> navTo(BuildContext context) async {
    await context.navToWidget(to: const SearchPage());
  }



  @override
  Size get preferredSize => const Size.fromHeight(48);

  @override
  Widget renderView(BuildContext context, ApplicationModel appCore) {
    return SAppBarSearch(
      hintText: '输入关键字,例如:"辣条"',
      onTap: () => navTo(context),
      readOnly: true,
      leadingWidth: 58,
      leading: Container(
        alignment: Alignment.center,
        child: SvgPicture.asset(
          'assets/svg/diandian.svg',
          width: 34,
          height: 34,
          colorFilter: ColorFilter.mode(context.iconColor ?? Colors.red, BlendMode.srcIn),
        ),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.message,
            ))
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(38),
        child: SizedBox(
          height:38,
          child: TabBar(
            controller: tabController,
            isScrollable: true,
            tabs: [
              const Tab(
                text: '精选',
              ),
              ...appCore.watchCategory.map((element) => Tab(
                text: element.cname,
              ))
            ],
            onTap: (int index) {

            },
          ),
        ),
      ),
      isSliveWidget: true,
    );
  }
}
