import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../../index.dart';

/// 首页导航栏
class IndexHomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  final TabController tabController;
  const IndexHomeAppbar({Key? key,required this.tabController}) : super(key: key);

  Future<void> navTo(BuildContext context)  async {
    await context.navToWidget(to:const SearchPage());
  }

  @override
  Widget build(BuildContext context) {
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
          color: context.iconColor,
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
        preferredSize: const Size.fromHeight(48),
        child: Consumer<IndexState>(
          builder: (BuildContext context,value, Widget? child) {
            final loading = value.indexLoading;
            final categoryWidgets = utils.widgetUtils.categoryTabs(context);
            return LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 800),
                      height: 46,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: TabBar(
                          controller: tabController,
                          isScrollable: true,
                          tabs: [
                            const Tab(
                              text: '精选',
                            ),
                            ...categoryWidgets
                          ],
                          onTap: (int index) {
                            if (index == 0) {
                              return;
                            }
                            final category = context.read<CategoryState>().getCategoryByIndex(index - 1);
                            context.navToWidget(to:NewGoodsList(
                              category: category,
                              initIndex: context.read<CategoryState>().getIndexWithCategory(category),
                            ));
                          },
                        ),
                      ),
                    ),
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      child: loading
                          ? const LinearProgressIndicator(
                              minHeight: 2.0,
                            )
                          : Container(
                              height: 2.0,
                            ),
                    )
                  ],
                );
              },
            );
          },
        ),
      ),
      isSliveWidget: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(48);
}
