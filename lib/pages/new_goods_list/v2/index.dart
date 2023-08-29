part of pages;

///新的产品列表页面
class CategoryGoodsList extends ConsumerStatefulWidget {
  final Category category;

  const CategoryGoodsList(this.category, {Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _CategoryGoodsListState();
  }
}

class _CategoryGoodsListState extends ConsumerState<CategoryGoodsList> with AutomaticKeepAliveClientMixin{
  ///数据仓库
  ProductListRepository repository = ProductListRepository();

  //页面所需要的参数
  late GoodsListParamsModel state = GoodsListParamsModel(
      category: widget.category, initLoading: true, page: 1, products: []);

  @override
  void initState() {
    repository.changeState(state);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return LoadingMoreList(ListConfig<ProductModel>(
        itemBuilder: _renderLayout,
        sourceList: repository,
        padding: const EdgeInsets.all(5),
        extendedListDelegate:
            SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
                crossAxisCount: context.waterfallFlowCrossAxisCount,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5),
        indicatorBuilder: CustomLoadingMoreWidget.new));
  }

  ///渲染产品布局
  Widget _renderLayout(BuildContext context, ProductModel product, int index) {
    return WaterfallGoodsCard(product);
  }

// 排序切换
  void sortChange(int index) {
    switch (index) {
      case 0:
        state = state.copyWith(sort: DdSort.defaultSort);
        break;
      case 1:
        state = state.copyWith(sort: DdSort.timeHighToLow);
        break;
      case 2:
        state = state.copyWith(sort: DdSort.salesHighToLow);
        break;
      case 3:
        final sort = state.sort;
        if (sort != DdSort.priceLowToHigh) {
          state = state.copyWith(sort: DdSort.priceLowToHigh);
        } else {
          state = state.copyWith(sort: DdSort.priceHighToLow);
        }
        break;
      default:
        break;
    }
    repository.changeState(state);
    repository.refresh();
  }

  ///刷新UI
  void notifyListeners() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  bool get wantKeepAlive => true;
}
