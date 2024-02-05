part of '../../index.dart';

class NewProductsLoadMore extends LoadingMoreBase<ProductModel> {
  int page = 1;
  bool more = true;

  @override
  Future<bool> refresh([bool notifyStateChanged = false]) {
    page = 1;
    more = true;
    return super.refresh(notifyStateChanged);
  }

  @override
  Future<bool> loadData([bool isLoadMoreAction = false]) async {
    final r = await MyNewApiByProducts().request(RequestParams(
        showDefaultLoading: false,
        data: ProductListParam(pageId: '$page', pageSize: '10').toJson()));
    if (page == 1) clear();
    if (r.isNotEmpty) {
      more = true;
      addAll(r);
      page++;
    } else {
      more = false;
    }
    return true;
  }

  @override
  bool get hasMore => more;
}

///新品小部件
class NewProductWidget extends StatefulWidget {
  const NewProductWidget({super.key});

  @override
  State<NewProductWidget> createState() => _NewProductWidgetState();
}

class _NewProductWidgetState extends State<NewProductWidget> {
  final sourceList = NewProductsLoadMore();

  @override
  Widget build(BuildContext context) {
    return LoadingMoreSliverList(SliverListConfig<ProductModel>(
        itemBuilder: (c, ite, index) {
          return WaterfallGoodsCard(ite);
        },
        sourceList: sourceList,
        extendedListDelegate:
            const SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        )));
  }

  @override
  void dispose() {
    sourceList.dispose();
    super.dispose();
  }
}
