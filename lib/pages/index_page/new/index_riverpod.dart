part of '../../index.dart';

final indexStateRiverpod = ChangeNotifierProvider((ref) => IndexState());

/// 首页状态
class IndexState extends ChangeNotifier {
  bool indexLoading = false;

  List<ProductModel> products = [];

  // 首页推广轮播图
  List<Carousel> carousel = [];

  // 每日榜单的商品列表
  List<ProductModel> hotDayProducts = [];

  int _page = 1;

  // 获取畅销榜单商品
  Future<void> getHotDayProducts() async {
    final result = await kApi.getHotDayProduct(
        param: HotdayParam(pageSize: '50', pageId: '1'),
        requestParamsBuilder: (RequestParams requestParams) {
          return requestParams;
        });
    hotDayProducts = result?.list ?? [];
    notifyListeners();
  }

  /// 改变首页loading状态
  void changeLoadingState(bool value) {
    indexLoading = value;
    notifyListeners();
  }

  @Doc(message: '加载双列产品数据')
  Future<void> fetch() async {
    final result = await kApi.getProducts(
        param: ProductListParam(pageId: '$_page'),
        requestParamsBuilder: (RequestParams requestParams) {
          return requestParams.copyWith(showDefaultLoading: false);
        });
    if (result != null) {
      products.addAll(result.list ?? []);
    }
    await getAllCarousel();
    notifyListeners();
  }

  // 加载轮播图
  Future<void> getAllCarousel() async {
    final result = await kApi.getCarousel(requestParamsBuilder: (o) {
      return o.copyWith(showDefaultLoading: false);
    });
    carousel = result;
  }

  Future<void> nextPage() async {
    _page++;
    await fetch();
  }
}
