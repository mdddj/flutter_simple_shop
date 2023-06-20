part of provider;

class DtkIndexGoodsModal extends ChangeNotifier {
  List<Datum>? goods = [];

  int page = 1; // 默认加载商品第一页数据
  List<GoodsItem> indexGoods = []; // 首页商品列表

  bool noMore = false; // 是否存在下一页 ,false 有,true没有下一页了
  bool isLoading = false; // 是否在加载数据中

  // 获取商品列表数据
  Future<void> getGoodsList(int page) async {}

  void setLoadingState(bool isLoading) {
    isLoading = isLoading;
    notifyListeners();
  }

  void getNextPageData() {
    page++;
    getGoodsList(page);
  }

  // 获取榜单数据
  void getRankGoodsList() async {}
}
