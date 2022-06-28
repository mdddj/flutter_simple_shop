import 'package:loading_more_list/loading_more_list.dart';
import '../../../modals/pdd_product.dart';

class PddRecommendListResp extends LoadingMoreBase<PddGoods> {
  int pageindex = 0;
  final bool _hasMore = true;
  bool forceRefresh = false;

  @override
  Future<bool> loadData([bool isloadMoreAction = false]) async {
    return true;
  }

  @override
  bool get hasMore => _hasMore;
}
