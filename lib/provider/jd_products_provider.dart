part of 'index.dart';

final jdProductsRiverpod = ChangeNotifierProvider((ref) => JdProductsProviderState());

/// 京东产品的状态
class JdProductsProviderState extends ChangeNotifier {
  List<JdNativeProduct> products = [];
  String? selectProductTypeId;

  /// 设置当前选中的类别
  void setSelectProductTypeId(String? id) {
    selectProductTypeId = id;
    notifyListeners();
  }
}
