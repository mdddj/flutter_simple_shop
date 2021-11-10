// Flutter imports:
// Package imports:
import 'package:dd_taoke_sdk/constant/sort.dart';
import 'package:dd_taoke_sdk/dd_taoke_sdk.dart';
import 'package:dd_taoke_sdk/model/category.dart';
import 'package:dd_taoke_sdk/model/product.dart';
import 'package:dd_taoke_sdk/params/product_list_param.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import '../../provider/riverpod/category_riverpod.dart';

final goodsListRiverpod = ChangeNotifierProvider((ref) => GoodsListState());

class GoodsListState extends ChangeNotifier {
  // 主分类
  late Category category;

  // 子分类
  Subcategory? subcategory;

  // 排序
  String sort = DdSort.defaultSort;

  // 列表
  List<Product> products = [];

  // 分页
  int page = 1;

  // 刷新指示器
  bool loading = false;

  // 关闭
  CancelToken? cancelToken;

  void setCategory(Category c, Subcategory? sc,{bool isInit = false}) {
    category = c;
    subcategory = sc;
    if(!isInit){
      notifyListeners();
    }

  }

  // 刷新
  Future<void> onRefresh() async {
    page = 1;
    products.clear();
    if (cancelToken != null) {
      cancelToken!.cancel('关闭上一次请求');
      cancelToken = null;
    }
    loading = true;
    notifyListeners();
    await fetchData();
  }

  // 加载数据
  Future<void> fetchData() async {
    cancelToken = CancelToken();
    final result = await DdTaokeSdk.instance.getProducts(
        param: ProductListParam(pageId: '$page', sort: sort, cids: '${subcategory == null ? category.cid : ''}', subcid: '${subcategory == null ? '' : subcategory!.subcid}'),
        cancelToken: cancelToken);
    if (result != null) {
      products.addAll(result.list ?? []);
    }
    loading = false;
    notifyListeners();
  }

  // 主分类切换
  void mainCateChange(int index, BuildContext context) {
    final cate = context.read(categoryRiverpod).categorys[index];
    setCategory(cate, null);
    onRefresh();
  }

  // 排序切换
  void sortChange(int index) {
    switch (index) {
      case 0:
        sort = DdSort.defaultSort;
        break;
      case 1:
        sort = DdSort.timeHighToLow;
        break;
      case 2:
        sort = DdSort.salesHighToLow;
        break;
      case 3:
        if (sort != DdSort.priceLowToHigh) {
          sort = DdSort.priceLowToHigh;
        } else {
          sort = DdSort.priceHighToLow;
        }
        break;
      default:
        break;
    }
    onRefresh();
    notifyListeners();
  }

  // 下一页
  Future<void> nextPage() async {
    page++;
    await fetchData();
  }
}
