part of '../../index.dart';

final indexStateRiverpod = ChangeNotifierProvider((ref) => IndexState());

/// 首页状态
class IndexState extends ChangeNotifier {
  bool indexLoading = false;

  List<Product> products = [];

  // 每日榜单的商品列表
  List<Product> hotDayProducts = [];

  // 获取畅销榜单商品
  Future<void> getHotDayProducts() async {
    notifyListeners();
  }

  /// 改变首页loading状态
  void changeLoadingState(bool value) {
    indexLoading = value;
    notifyListeners();
  }

  @Doc(message: '加载双列产品数据')
  Future<void> fetch() async {}

  Future<void> nextPage() async {
    await fetch();
  }
}
