part of pages;

/// 首页导航栏
class IndexHomeAppbar extends View implements PreferredSizeWidget {
  final TabController tabController;

  const IndexHomeAppbar({Key? key, required this.tabController})
      : super(key: key);

  Future<void> navTo(BuildContext context) async {
    await context.navToWidget(to: const SearchPage());
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 38);

  @override
  Widget renderView(BuildContext context, ApplicationModel appCore) {
    return ScreenTypeLayout.builder(
      mobile: (_) => MobileAppbar(tabController: tabController),
      desktop: (p0) {
        return DeskTopAppbar(tabController: tabController);
      },
    );
  }
}

///桌面端导航条
class DeskTopAppbar extends StatelessWidget {
  final TabController tabController;

  const DeskTopAppbar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight + 38,
      width: context.screenWidth,
      decoration: BoxDecoration(color: context.cardColor),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("典典的小卖部", style: context.textTheme.titleLarge)
                  .marginOnly(left: 12),
              Container(
                      constraints: const BoxConstraints(maxWidth: 180),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey.shade400)),
                      child: const Text("搜索内容,比如:辣条").addIcon(
                          icon: Icon(Icons.search,
                              size: 17, color: context.primaryColor)))
                  .marginOnly(right: 12)
                  .click(() {
                context.push(pagerUtil.search.routername);
              }),
            ],
          ).expanded,
          SizedBox(height: 48, child: IndexHomeBottomTabbar(tabController))
        ],
      ),
    );
  }
}

///手机版导航条
class MobileAppbar extends View implements PreferredSizeWidget {
  final TabController tabController;

  const MobileAppbar({super.key, required this.tabController});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 38);

  Future<void> navTo(BuildContext context) async {
    await context.push(pagerUtil.search.routername);
  }

  @override
  Widget renderView(BuildContext context, ApplicationModel appCore) {
    return AppBar(
      leadingWidth: 58,
      title: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade100),
            borderRadius: 12.borderRadius),
        child: Row(
          children: [
            const Icon(CupertinoIcons.search, color: Colors.grey, size: 16),
            const SizedBox(
              width: 6,
            ),
            Text(
              '搜索产品,比如:辣条',
              style: context.textTheme.bodyMedium,
            )
          ],
        ),
      ).click(() => navTo(context)),
      leading: const Logo(),
      // actions:  [
      //   Padding(padding: const EdgeInsets.only(right: 12),child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Icon(
      //         Icons.message,
      //         size: context.theme.iconTheme.size ?? 16,
      //         color: context.colorScheme.onTertiaryContainer,
      //       ),
      //        Text('线报',style: context.textTheme.labelSmall)
      //     ],
      //   ),).click(() {
      //     context.navToWidget(to: const XianbaoIndex());
      //   })
      // ],
      bottom: PreferredSize(
        preferredSize: Size(context.screenWidth, 38),
        child: IndexHomeBottomTabbar(tabController),
      ),
    );
  }
}

class IndexHomeBottomTabbar extends View {
  final TabController tabController;

  const IndexHomeBottomTabbar(this.tabController, {super.key});

  @override
  Widget renderView(BuildContext context, ApplicationModel appCore) {
    return TabBar(
      controller: tabController,
      isScrollable: true,
      tabs: [
        const Tab(
          text: '精选',
        ),
        ...appCore.watchCategory.map(CategoryItemLayout.new)
      ],
      onTap: (int index) {},
    );
  }
}

///分类布局
class CategoryItemLayout extends StatelessWidget {
  final Category item;

  const CategoryItemLayout(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(mobile: (ctx) {
      return Tab(
        text: item.cname,
      );
    }, desktop: (ctx) {
      return Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: context.colorScheme.secondaryContainer,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ImageView(
                image: MyImage.network(
                    url: item.cpic,
                    params: ImageParams(
                        size: 22,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(8)))),
            const SizedBox(width: 4),
            Text(item.cname)
          ],
        ),
      );
    });
  }
}
