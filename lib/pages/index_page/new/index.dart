part of pages;

/// 新版首页
class IndexHomeNew extends ConsumerStatefulWidget {
  const IndexHomeNew({Key? key}) : super(key: key);

  @override
  IndexHomeNewState createState() => IndexHomeNewState();
}

class IndexHomeNewState extends ConsumerState<IndexHomeNew>
    with SingleTickerProviderStateMixin {
  late TabController tabController = TabController(
      length: ref
              .watch(categoryRiverpod.select((value) => value.categorys))
              .length +
          1,
      vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: IndexHomeAppbar(
        tabController: tabController,
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          const HomeWidgets(),
          ...ref
              .watch(categoryRiverpod.select((value) => value.categorys))
              .map(CategoryGoodsList.new)
              .toList()
        ],
      ),
    );
  }
}

class HomeWidgets extends ConsumerStatefulWidget {
  const HomeWidgets({Key? key}) : super(key: key);

  @override
  ConsumerState<HomeWidgets> createState() => _HomeWidgetsState();
}

class _HomeWidgetsState extends ConsumerState<HomeWidgets>
    with AutomaticKeepAliveClientMixin {
  final repository = NewProductsLoadMore();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return LoadingMoreCustomScrollView(
      slivers: [
        SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
          switch (index) {
            case 1:
              return const IndexCarousel();
            case 0:
              return const GridMenuComponent();
            case 2:
              return const IndexColumnWidget();
            case 3:
              return const IndexProductTitle();
            default:
              return const SizedBox();
          }
        }, childCount: 4)),
        LoadingMoreSliverList(
          SliverListConfig<ProductModel>(
              itemBuilder: (c, ite, index) => WaterfallGoodsCard(ite),
              sourceList: repository,
              indicatorBuilder: CustomLoadingMoreWidgetWithSliver.new,
              extendedListDelegate:
                  SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
                crossAxisCount: context.waterfallFlowCrossAxisCount,
                crossAxisSpacing: kDefaultPadding,
                mainAxisSpacing: kDefaultPadding,
              ),
              padding: const EdgeInsets.all(kDefaultPadding)),
        )
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    repository.dispose();
  }

  @override
  bool get wantKeepAlive => true;
}

///无限下拉瀑布流标题
class IndexProductTitle extends StatelessWidget {
  const IndexProductTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12,left: 12,right: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            'assets/svg/rmtj.svg',
            width: 120,
            height: 30,
            colorFilter: ColorFilter.mode(
                context.iconColor ?? Colors.red, BlendMode.srcIn),
          ),
          Text(
            '典:没啥事就购物把,反正便宜',
            style: context.textTheme.bodyMedium
                ?.copyWith(color: Colors.grey, fontSize: 12),
          )
        ],
      ),
    );
  }
}

///首页的产品瀑布流列表
class IndexProducts extends ConsumerWidget {
  const IndexProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products =
        ref.watch(riverpodIndexProducts.select((value) => value.products));
    return SliverPadding(
        padding: const EdgeInsets.all(8),
        sliver: SliverWaterfallFlow.count(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          children: products.map(WaterfallGoodsCard.new).toList(),
        ));
  }
}
