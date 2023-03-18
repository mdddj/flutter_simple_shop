import 'package:dataoke_sdk/dataoke_sdk.dart';
import 'package:dd_js_util/api/request_params.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'index_products_model.dart';

final riverpodIndexProducts =
    StateNotifierProvider<IndexProductsState, IndexProductsModel>((ref) => IndexProductsState());

class IndexProductsState extends StateNotifier<IndexProductsModel> {
  IndexProductsState() : super( IndexProductsModel(products: [],page: 1));

  @Doc(message: '加载首页的产品数据')
  Future<void> loadData([bool isRefresh = false]) async {
    if(isRefresh){
      state = IndexProductsModel(products: [],page: 1);
    }
    final r = await DdTaokeSdk.instance.getProducts(param: ProductListParam(pageId: '${state.page}'), requestParamsBuilder: (RequestParams requestParams) {
      return requestParams;
    });
    if(r!=null){
      final products = state.products;
      products.addAll(r.list??[]);
      state = state.copyWith(products: List.from(products),page: state.page.add );
    }
  }
}
