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
    return AppBar(
      leadingWidth: 58,
      title: Container(
        padding: const EdgeInsets.all(4),
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
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.message,
            ))
      ],
      bottom: PreferredSize(
        preferredSize: Size(context.screenWidth,38),
        child: TabBar(
          controller: tabController,
          isScrollable: true,
          tabs: [
            const Tab(
              text: '精选',
            ),
            ...appCore.watchCategory.map(CategoryItemLayout.new)
          ],
          onTap: (int index) {},
        ),
      ),
    );
  }

  //ui
}


class IndexFirstTabItem extends StatelessWidget {
  const IndexFirstTabItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}



///分类布局
class CategoryItemLayout extends StatelessWidget {
  final Category item;
  const CategoryItemLayout(this.item,{super.key});

  @override
  Widget build(BuildContext context) {
   return ScreenTypeLayout.builder(mobile: (ctx) {
      return Tab(
        text: item.cname,
      );
    }, desktop: (ctx){
     return Container(
       padding: const EdgeInsets.all(5),
       decoration: BoxDecoration(
         color: context.colorScheme.secondaryContainer,
         borderRadius: BorderRadius.circular(8),
       ),
       child: Row(
         mainAxisSize: MainAxisSize.min,
         children: [
           ImageView(image: MyImage.network(url: item.cpic,params:  ImageParams(size: 22,shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(8)))),
           const SizedBox(width: 4),
           Text(item.cname)
         ],
       ),
     );
   });
  }
}
