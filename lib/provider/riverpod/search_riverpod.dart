part of '../index.dart';

class SearchRepository extends MyLoadingModel<ProductModel> {
  var _page = 1;
  var _hasMore = true;
  final String searchKeyWorlds;

  SearchRepository(this.searchKeyWorlds);

  @override
  Future<bool> loadData([bool isLoadMoreAction = false]) async {
    final result = await kApi.superSearch(
        param: SuperSearchParam(
          keyWords: searchKeyWorlds,
          pageId: _page.toString(),
          pageSize: '20',
          type: '0',
        ),
        requestParamsBuilder: (r) => r.copyWith(showDefaultLoading: false));
    if (result != null) {
      addAll(result.list ?? []);
      _page++;
      _hasMore = (result.list ?? []).isNotEmpty;
      return true;
    }
    return false;
  }

  @override
  bool get hasMore => _hasMore;
}
