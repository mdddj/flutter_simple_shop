import 'package:dataoke_sdk/dataoke_sdk.dart';
import 'package:dd_js_util/api/request_params.dart';
import 'package:loading_more_list_library_fast/loading_more_list_library_fast.dart';

import '../../../index.dart';
import 'types.dart';

class JiujiuRepository extends LoadingMoreBase<ProductModel> {
  final JiujiuTabTypes type;

  JiujiuRepository(this.type);

  int _page = 1;
  bool _hasMore = true;

  @override
  Future<bool> loadData([bool isLoadMoreAction = false]) async {
    if (_page == 1) clear();
    try {
      final value = await kApi.getNineNineProducts(param: NineNineParam(nineCid: type.paramsValue, pageId: '$_page', pageSize: '20'), requestParamsBuilder: (RequestParams requestParams) {
        return requestParams;
      });
      if (value != null) {
        final list = value.list ?? [];
        addAll(list);
        _page++;
        _hasMore = list.isNotEmpty;
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  @override
  bool get hasMore => _hasMore;
}
