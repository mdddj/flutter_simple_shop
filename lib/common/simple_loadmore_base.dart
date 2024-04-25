part of 'index.dart';

abstract class SimpleLoadingMoreBaes<T, A extends ApiPageMixin<WrapJson>>
    extends LoadingMoreBase<T> {
  int vPageSize = 20;
  int vPage = 0;
  bool nomore = false;

  @override
  Future<bool> refresh([bool notifyStateChanged = false]) {
    vPage = 0;
    nomore = false;
    return super.refresh(notifyStateChanged);
  }

  @override
  Future<bool> loadData([bool isLoadMoreAction = false]) async {
    if (vPage == 0) {
      clear();
    }
    final pageParams = <String, dynamic>{'page': vPage, 'pageSize': vPageSize};
    pageParams.addAll(otherParams);
    var isSuccess = true;
    final token = await getIt.get<Api>().getAuthorizationHeader();
    final r = await api.request(RequestParams(
        showDefaultLoading: false, data: pageParams, headers: token));
    if (vPage == 0) {
      clear();
    }
    isSuccess = true;
    final data = r.data;
    final list = transformResponseData(WrapJson(data));
    nomore = transformIsNomore(WrapJson(data));
    addAll(list);
    vPage++;
    return isSuccess;
  }

  Map<String, dynamic> get otherParams => <String, dynamic>{};

  A get api;

  ///将服务器返回的数据转换成所需要的模型
  List<T> transformResponseData(WrapJson data);

  /// return [true] 没有更多了
  /// return [false] 还有下一页
  bool transformIsNomore(WrapJson data) {
    return (data.getValue('last') as bool?) ?? true;
  }

  @override
  bool get hasMore => !nomore;
}
