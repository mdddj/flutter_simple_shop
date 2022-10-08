
import 'package:loading_more_list/loading_more_list.dart';

import '../api/apis.dart';

abstract class SimpleLoadingMoreBaes<T,A extends ApiPageMixin> extends LoadingMoreBase<T> {
  int vPageSize = 20;
  int vPage = 0;
  bool nomore = false;
  @override
  Future<bool> loadData([bool isloadMoreAction = false]) async  {
    final pageParams = {
      'page': vPage,
      'pageSize': vPageSize
    };
    var isSuccess = true;
    final r =  await api.request(showDefaultLoading: false,data: pageParams);
    isSuccess = r.isSuccess;
    if(r.isSuccess){
      final data = r.getValue('data');
      final list  = transformResponseData(data);
      nomore = transformIsNomore(data);
      addAll(list);
      vPage++;
    }
    return isSuccess;
  }

  A get api;

  ///将服务器返回的数据转换成所需要的模型
  List<T> transformResponseData(dynamic data);

  /// return [true] 没有更多了
  /// return [false] 还有下一页
  bool transformIsNomore(dynamic data);

  @override
  bool get hasMore => !nomore;
}