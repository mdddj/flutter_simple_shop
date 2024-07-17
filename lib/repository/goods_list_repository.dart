part of 'index.dart';

class GoodsListRepository extends LoadingMoreBase<Product> {
  int pageindex = 1;
  bool _hasMore = true;
  bool forceRefresh = false;
  int pageSize = 50; // 每页条数，默认为100，最大值200，若小于10，则按10条处理，每页条数仅支持输入10,50,100,200

  //外面传进来的参数
  String? sortStr;
  String? brand;
  String? cids;
  String? subcid;

  GoodsListRepository({this.sortStr, this.brand, this.cids, this.subcid});

  @override
  bool get hasMore => _hasMore;

  @override
  Future<bool> refresh([bool notifyStateChanged = false]) async {
    _hasMore = true;
    pageindex = 1;
    forceRefresh = !notifyStateChanged;
    var result = await super.refresh(notifyStateChanged);
    forceRefresh = false;
    return result;
  }

  @override
  Future<bool> loadData([bool isLoadMoreAction = false]) async {
    var isSuccess = false;
    // final result = await DdTaokeSdk.instance.getProducts(
    //     param: ProductListParam(pageId: '$pageindex', sort: '$sortStr', brand: '$brand', cids: '$cids', subcid: '$subcid'),
    //     requestParamsBuilder: (RequestParams requestParams) {
    //       return requestParams;
    //     });
    //
    // if (result != null) {
    //   addAll(result.list ?? []);
    //   isSuccess = true;
    // } else {
    //   isSuccess = false;
    // }

    return isSuccess;
  }
}
