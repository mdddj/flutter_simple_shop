
import 'package:dd_js_util/api/request_params.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'package:loading_more_list/loading_more_list.dart';

import '../api/apis.dart';

abstract class SimpleLoadingMoreBaes<T,A extends ApiPageMixin> extends LoadingMoreBase<T> {
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
  Future<bool> loadData([bool isLoadMoreAction = false]) async  {
    if(vPage == 0){
      clear();
    }
    final pageParams = {
      'page': vPage,
      'pageSize': vPageSize
    };
    var isSuccess = true;
    final r =  await api.request(RequestParams(showDefaultLoading: false,data: pageParams));
    isSuccess = r.isSuccess;
    if(r.isSuccess){
      final data = r.getValue('data');
      final list  = transformResponseData(WrapJson(data));
      nomore = transformIsNomore(WrapJson(data));
      addAll(list);
      vPage++;
    }
    return isSuccess;
  }

  A get api;

  ///将服务器返回的数据转换成所需要的模型
  List<T> transformResponseData(WrapJson data);

  /// return [true] 没有更多了
  /// return [false] 还有下一页
  bool transformIsNomore(WrapJson data);

  @override
  bool get hasMore => !nomore ;


}