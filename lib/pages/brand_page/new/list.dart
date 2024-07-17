part of '../../index.dart';

class BrandRepository extends MyLoadingModel<BrandItem> {
  final String cid;
  int _page = 1;
  bool _hasMore = true;

  BrandRepository(this.cid);

  @override
  Future<bool> loadData([bool isLoadMoreAction = false]) async {
    return false;
  }

  @override
  bool get hasMore => _hasMore;
}

class BrandListWidget extends StatefulWidget {
  final String cid;

  const BrandListWidget({super.key, required this.cid});

  @override
  State<BrandListWidget> createState() => _BrandListWidgetState();
}

class _BrandListWidgetState extends State<BrandListWidget>
    with AutomaticKeepAliveClientMixin {
  late final response = BrandRepository(widget.cid);

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return MyLoadingMoreList(MyListConfig<BrandItem>(
        padding: const EdgeInsets.all(12),
        itemBuilder: _itemBuilder,
        sourceList: response,
        indicatorBuilder: _indicatorBuilder,
        extendedListDelegate:
            SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
          crossAxisCount: context.waterfallFlowCrossAxisCountWithBrand,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        )));
  }

  Widget _itemBuilder(BuildContext context, BrandItem item, int index) {
    return BrandItemCard(storeInfo: item);
  }

  Widget? _indicatorBuilder(BuildContext context, IndicatorStatusModel status) {
    return CustomLoadingMoreWidget(context, status, retry: () {
      response.refresh(true);
    }, emptyChild: const SizedBox());
  }

  @override
  bool get wantKeepAlive => true;
}
