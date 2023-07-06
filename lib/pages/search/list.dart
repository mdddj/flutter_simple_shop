part of pages;

/// 搜索结果页面
class SearchListIndex extends ConsumerWidget {
  final String value;

  const SearchListIndex({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('搜索:$value'),
      ),
      body: MyLoadingMoreList(MyListConfig<ProductModel>(
          itemBuilder: _itemBuilder,
          sourceList: SearchRepository(value),
          padding: const EdgeInsets.all(8),
          indicatorBuilder: (context, status) {
            return LoadingMoreListCostumIndicator(status);
          },
          extendedListDelegate:
              SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
                  crossAxisCount: context.waterfallFlowCrossAxisCount,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8))),
    );
  }

  Widget _itemBuilder(BuildContext context, ProductModel item, int index) {
    return WaterfallGoodsCard(item);
  }
}
