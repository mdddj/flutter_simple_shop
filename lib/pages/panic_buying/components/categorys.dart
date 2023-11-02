part of '../../index.dart';

class BottomCategoryTabs extends ConsumerWidget implements PreferredSizeWidget {
  final List<Tab>? insets;
  final ValueChanged<int>? onTap;
  final int? initIndex;

  const BottomCategoryTabs({this.insets, this.onTap, this.initIndex, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var myInsets = insets ?? [];
    final categoryWidgets = ref.watch(categoryRiverpod.select((value) => value.categorys)).map((element) => Tab(text: element.cname));
    return Container(
      alignment: Alignment.centerLeft,
      child: DefaultTabController(
        length: categoryWidgets.length + myInsets.length,
        initialIndex: initIndex ?? 0,
        child: TabBar(
          tabs: [...myInsets, ...categoryWidgets],
          isScrollable: true,
          indicator: const BubbleTabIndicator(
            indicatorHeight: 25.0,
            indicatorColor: Colors.pink,
            tabBarIndicatorSize: TabBarIndicatorSize.tab,
          ),
          unselectedLabelColor: Colors.black.withOpacity(.67),
          labelColor: Colors.white,
          onTap: onTap,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(48);
}
