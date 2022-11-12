import 'package:dataoke_sdk/dd_dataoke_sdk.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'appbar.dart';
import 'goods_list_params_model.dart';

class CategoryGoodsList extends ConsumerStatefulWidget {
  final Category category;
  const CategoryGoodsList(this.category, {Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _CategoryGoodsListState();
  }
}

class _CategoryGoodsListState extends ConsumerState<CategoryGoodsList> {
  late GoodsListParamsModel state = GoodsListParamsModel(
      category: widget.category, initLoading: true, page: 1, products: []);

  // 加载数据
  Future<void> fetchData() async {
    state = state.copyWith(cancelToken: CancelToken());
    final result = await DdTaokeSdk.instance.getProducts(
        param: ProductListParam(
            pageId: '${state.page}',
            sort: state.sort,
            cids: '${state.subcategor == null ? state.category.cid : ''}',
            subcid:
                '${state.subcategor == null ? '' : state.subcategor!.subcid}'),
        cancelToken: state.cancelToken);
    if (result != null) {
      state = state.copyWith(
          products: getNewList(result.list ?? []),
          page: state.page++,
          initLoading: false);
    }
    notifyListeners();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CategoryAppbar(),
    );
  }


// 排序切换
  void sortChange(int index) {
    switch (index) {
      case 0:
        state = state.copyWith(sort: DdSort.defaultSort);
        break;
      case 1:
        state = state.copyWith(sort: DdSort.timeHighToLow);
        break;
      case 2:
         state = state.copyWith(sort: DdSort.salesHighToLow);
        break;
      case 3:
        final sort = state.sort;
        if (sort != DdSort.priceLowToHigh) {
          state = state.copyWith(sort: DdSort.priceLowToHigh);
        } else {
          state = state.copyWith(sort: DdSort.priceHighToLow);
        }
        break;
      default:
        break;
    }
    notifyListeners();
  }

  ///获取新的列表
  List<Product> getNewList(List<Product> newList) {
    state.products.addAll(newList);
    return List.from(state.products);
  }

  ///刷新UI
  void notifyListeners() {
    if (mounted) {
      setState(() {});
    }
  }
}
