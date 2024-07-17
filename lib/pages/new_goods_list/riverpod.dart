part of '../index.dart';

final goodsListRiverpod = ChangeNotifierProvider((ref) => GoodsListState());

class GoodsListState extends ChangeNotifier {
  // 主分类
  late Category category;

  // 子分类
  Subcategory? subcategory;

  // 排序
  String sort = DdSort.defaultSort;

  // 列表
  List<ProductModel> products = [];

  // 分页
  int page = 1;

  // 刷新指示器
  bool loading = false;

  // 关闭
  dio.CancelToken? cancelToken;

  void setCategory(Category c, Subcategory? sc, {bool isInit = false}) {
    category = c;
    subcategory = sc;
    if (!isInit) {
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
    await fetchData();
  }

  // 加载数据
  Future<void> fetchData() async {
    cancelToken = dio.CancelToken();
    // final result = await DdTaokeSdk.instance.getProducts(
    //     param: ProductListParam(pageId: '$page', sort: sort, cids: '${subcategory == null ? category.cid : ''}', subcid: '${subcategory == null ? '' : subcategory!.subcid}'),
    //     requestParamsBuilder: (RequestParams requestParams) {
    //       return requestParams;
    //     });
    // if (result != null) {
    //   products.addAll(result.list ?? []);
    // }
    // notifyListeners();
  }

  // 主分类切换
  void mainCateChange(int index, WidgetRef ref) {
    final cate = ref.read(categoryRiverpod).categorys[index];
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
  }

  // 下一页
  Future<void> nextPage() async {
    page++;
    await fetchData();
  }
}
