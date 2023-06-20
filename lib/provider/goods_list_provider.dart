part of provider;

class GoodsListProvider extends ChangeNotifier with BaseProvider {
  List<GoodsItem>? goods = [];

  //排序方式，默认为0，0-综合排序，1-商品上架时间从高到低，2-销量从高到低，3-领券量从高到低，4-佣金比例从高到低，5-价格（券后价）从高到低，6-价格（券后价）从低到高
  List<int> desc = [0, 1, 2, 5, 6];
  int currentIndex = 0; // 默认综合排序
  int page = 1; //默认第几页
  String brand = ''; //品牌id,默认0

  String cids = '';
  String subcid = '';

  Future<void> loadList() async {}

  void reFresh() async {
    page = 1;
    goods = [];
    await loadList();
  }

  void nextPage() {
    page++;
    loadList();
  }

  void pop() {
    goods = [];
    page = 1;
    cids = '';
    subcid = '';
    currentIndex = 0; // 默认综合排序
    brand = '';
  }
}
