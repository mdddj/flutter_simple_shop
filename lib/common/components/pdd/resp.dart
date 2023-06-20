part of common;

class PddRecommendListResp extends LoadingMoreBase<PddGoods> {
  int pageindex = 0;
  final bool _hasMore = true;
  bool forceRefresh = false;

  @override
  Future<bool> loadData([bool isLoadMoreAction = false]) async {
    return true;
  }

  @override
  bool get hasMore => _hasMore;
}
