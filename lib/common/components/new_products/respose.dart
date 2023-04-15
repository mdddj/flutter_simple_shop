import 'package:dataoke_sdk/dataoke_sdk.dart';
import 'package:dd_js_util/api/request_params.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:loading_more_list_fast/loading_more_list_fast.dart';
import 'package:loading_more_list_library_fast/loading_more_list_library_fast.dart';

import '../../../widgets/waterfall_goods_card.dart';
import '../../utils.dart';


class NewProductsLoadMore extends LoadingMoreBase<ProductModel> {
  int page = 1;
  bool more = true;

  @override
  Future<bool> refresh([bool notifyStateChanged = false]) {
    page = 1;
    more = true;
    return super.refresh(notifyStateChanged);
  }

  @override
  Future<bool> loadData([bool isLoadMoreAction = false]) async {
    try{
      final r = await kApi.getProducts(param: ProductListParam(pageId: '$page',pageSize: '10'), requestParamsBuilder: (RequestParams requestParams) {
        return requestParams.copyWith(showDefaultLoading: false);
      });
      if(page ==  1) clear();
      if (r != null) {
        final list = r.list ?? [];
        if (list.isNotEmpty) {
          more = true;
          addAll(list);
          page++;
        } else {
          more = false;
        }
        return true;
      }
      return false;
    } on AppException {
      return false;
    }
  }

  @override
  bool get hasMore => more;

}

///新品小部件
class NewProductWidget extends StatefulWidget {
  const NewProductWidget({Key? key}) : super(key: key);

  @override
  State<NewProductWidget> createState() => _NewProductWidgetState();
}

class _NewProductWidgetState extends State<NewProductWidget> {
  final sourceList = NewProductsLoadMore();

  @override
  Widget build(BuildContext context) {
    return LoadingMoreSliverList(SliverListConfig<ProductModel>(
        itemBuilder: (c, ite, index) {
          return WaterfallGoodsCard(ite);
        },
        sourceList: sourceList,
        extendedListDelegate: const SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        )));
  }

  @override
  void dispose() {
    sourceList.dispose();
    super.dispose();
  }
}
