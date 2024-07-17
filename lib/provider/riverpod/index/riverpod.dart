part of '../../index.dart';

final riverpodIndexProducts =
    StateNotifierProvider<IndexProductsState, IndexProductsModel>(
        (ref) => IndexProductsState());

class IndexProductsState extends StateNotifier<IndexProductsModel> {
  IndexProductsState() : super(IndexProductsModel(products: [], page: 1));

  @Doc(message: '加载首页的产品数据')
  Future<void> loadData([bool isRefresh = false]) async {
    // if (isRefresh) {
    //   state = IndexProductsModel(products: [], page: 1);
    // }
    // final r = await DdTaokeSdk.instance.getProducts(
    //     param: ProductListParam(pageId: '${state.page}'),
    //     requestParamsBuilder: (RequestParams requestParams) {
    //       return requestParams;
    //     });
    // if (r != null) {
    //   final products = state.products;
    //   products.addAll(r.list ?? []);
    //   state = state.copyWith(products: List.from(products), page: state.page.add);
    // }
  }
}
