import 'package:dd_js_util/dd_js_util.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:loading_more_list_fast/loading_more_list_fast.dart';

import '../../../api/new/part.dart';
import '../../../modals/dataoke/product_list_param.dart';
import '../../../modals/dd/product.dart';
import 'goods_list_params_model.dart';

///产品列表的数据仓库
class ProductListRepository extends LoadingModel<Product> {
  late GoodsListParamsModel state; //筛选产品参数

  int page = 1; //默认第一页
  bool more = true; //默认还有下一页

  @override
  Future<bool> loadData([bool isLoadMoreAction = false]) async {
    bool success = false;
    await fetchData((v) => more = v, (v) => success = v);
    addAll(state.products);
    return success;
  }

  @override
  bool get hasMore => more;

  void changeState(GoodsListParamsModel model) {
    state = model;
  }

  // 加载数据
  Future<void> fetchData(
      ValueChanged<bool> nomoreHandle, ValueChanged<bool> loadState) async {
    state = state.copyWith(cancelToken: CancelToken());
    final api = MyNewApiByProducts();
    final r = await api.request(RequestParams(
        data: ProductListParam(
                pageId: '${state.page}',
                sort: state.sort,
                cids: '${state.subcategor == null ? state.category.cid : ''}',
                subcid:
                    '${state.subcategor == null ? '' : state.subcategor!.subcid}')
            .toJson(),
        showDefaultLoading: false));

    if (r.isNotEmpty) {
      state =
          state.copyWith(products: r, page: state.page++, initLoading: false);
      loadState.call(true);
      nomoreHandle.call(r.isNotEmpty);
    } else {
      loadState.call(false);
    }
  }

  ///获取新的列表
  List<ProductModel> getNewList(List<ProductModel> newList) {
    state.products.addAll(newList);
    return List.from(state.products);
  }
}
