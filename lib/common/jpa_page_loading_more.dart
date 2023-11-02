part of 'index.dart';

abstract class JpaPageLoadingMore<T, A extends BaseApi> extends MyLoadingModel<T> {
  int page = 0;
  int pageSize = 20;
  bool _hasMore = true;

  A get api => getIt.get<A>();

  @override
  Future<bool> refresh([bool notifyStateChanged = false]) async {
    page = 0;
    pageSize = 20;
    _hasMore = true;
    return super.refresh(notifyStateChanged);
  }

  @override
  Future<bool> loadData([bool isLoadMoreAction = false]) async {
    try {
      final result = await api.request(R(showDefaultLoading: false, data: <String, dynamic>{"page": page, "pageSize": pageSize}..addAll(params)));
      final resultModel = SimpleResult.fromJson((result as WrapJson).data);
      final jpaModel = JpaPage.fromJson(resultModel.data);
      if (resultModel.success) {
        final list = List<T>.from(jpaModel.content.map((e) => covertData(e as Map<String, dynamic>))).toList();
        addAll(list);
        page++;
        _hasMore = jpaModel.last.not;
        return true;
      }
      return false;
    } catch (e, s) {
      Logger().e(e, error: e, stackTrace: s);
      return false;
    }
  }

  Map<String, dynamic> get params => {};

  T covertData(Map<String, dynamic> json);

  @override
  bool get hasMore => _hasMore;
}
