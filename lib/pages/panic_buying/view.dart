part of pages;

///
/// @Author 梁典典
/// @Github 开源地址 https://github.com/mdddj/flutter_simple_shop
/// @Description 功能描述  排行榜页面
/// @Date 创建时间 2021年6月19日 14:38:39
///
class PanicBuyingPage extends ConsumerStatefulWidget {
  const PanicBuyingPage({Key? key}) : super(key: key);

  @override
  PanicBuyingPageState createState() => PanicBuyingPageState();
}

class PanicBuyingPageState extends ConsumerState<PanicBuyingPage>
    with SingleTickerProviderStateMixin {
  final EasyRefreshController easyRefreshController = EasyRefreshController();

  late final TabController _tabController =
      TabController(length: ref.categorys.length + 2, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('排行榜'),
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(28),
            child: TabBar(
              isScrollable: true,
              tabs: [
                const Tab(
                  text: '实时榜',
                ),
                const Tab(
                  text: '全天榜',
                ),
                ...ref.categorys.map((element) => Tab(
                      text: element.cname,
                    ))
              ],
              controller: _tabController,
            )),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          const _ViewItem(AnkingListParam(rank: '1', cid: '')),
          const _ViewItem(AnkingListParam(rank: '2', cid: '')),
          ...ref.categorys.map((element) =>
              _ViewItem(AnkingListParam(rank: '1', cid: '${element.cid}')))
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    easyRefreshController.dispose();
  }
}

///页面
class _ViewItem extends StatefulWidget {
  final AnkingListParam param;

  const _ViewItem(this.param, {Key? key}) : super(key: key);

  @override
  State<_ViewItem> createState() => _ViewItemState();
}

class _ViewItemState extends State<_ViewItem>
    with AutomaticKeepAliveClientMixin {
  late final RankingListRepository _repository =
      RankingListRepository(widget.param);

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return LoadingMoreList(ListConfig<ProductModel>(
        itemBuilder: _itemBuilder,
        sourceList: _repository,
        padding: const EdgeInsets.all(8),
        extendedListDelegate:
            const SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8)));
  }

  Widget _itemBuilder(BuildContext context, ProductModel item, int index) {
    return WaterfallGoodsCard(item);
  }

  @override
  void dispose() {
    super.dispose();
    _repository.dispose();
  }

  @override
  bool get wantKeepAlive => true;
}

void toPanicBuyPage(BuildContext context) =>
    context.navToWidget(to: const PanicBuyingPage());
