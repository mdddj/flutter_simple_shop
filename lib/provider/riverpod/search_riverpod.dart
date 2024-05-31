part of '../index.dart';

class SearchRepository extends MyLoadingModel<ProductModel> {
  var _page = 1;
  var _hasMore = true;
  final String searchKeyWorlds;

  SearchRepository(this.searchKeyWorlds);

  @override
  Future<bool> loadData([bool isLoadMoreAction = false]) async {
    final params = SuperSearchParam(
      keyWords: searchKeyWorlds,
      pageId: _page.toString(),
      pageSize: '20',
      type: '0',
    ).toJson();
    final response = await SuperSearchApi().request(RequestParams(showDefaultLoading: false, data: params));
    addAll(response);
    _page++;
    _hasMore = response.isNotEmpty;
    return true;
  }

  @override
  bool get hasMore => _hasMore;
}
