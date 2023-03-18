import 'package:dataoke_sdk/dataoke_sdk.dart';
import 'package:dd_js_util/api/request_params.dart';
import 'package:loading_more_list_fast/loading_more_list_fast.dart';

import '../../common/index.dart';
import '../../freezed/anking_list_param.dart';

///第二版
///
///
class RankingListRepository extends LoadingModel<ProductModel> {
  final AnkingListParam params;

  RankingListRepository(this.params);

  int _page = 1;
  bool _hasmore = true;

  @override
  Future<bool> loadData([bool isLoadMoreAction = false]) async {
    try {
      final r = await kApi.getTopProducts(
          param: TopParam(rankType: params.rank, cid: params.cid, pageId: '$_page', pageSize: '20'), requestParamsBuilder: requestParamsBuilder);
      _hasmore = r.isNotEmpty;
      _page++;
      addAll(r);
    } catch (e) {
      return false;
    }
    return true;
  }

  RequestParams requestParamsBuilder(RequestParams requestParams) {
    return requestParams.copyWith(showDefaultLoading: false);
  }

  @override
  bool get hasMore => _hasmore;
}
