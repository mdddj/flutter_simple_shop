part of provider;

extension CategoryRiverpodEx on WidgetRef {
  IList<Category> get categorys =>
      watch(categoryRiverpod.select((value) => value.categorys));
}

final categoryRiverpod = ChangeNotifierProvider((ref) => CategoryState());

class CategoryState extends ChangeNotifier {
  IList<Category> categorys = const IListConst([]);

  late Category current;

  Category? currentWithProductList;

  Subcategory? currentSubCategory;

  IList<BlogCategory> blogCategorys = const IListConst([]);

  IList<JdOrPddCategory> jdCategory = const IListConst([]);

  /// 加载大淘客超级分类数据
  Future<IList<Category>> init() async {
    final result = await kApi.getCategorys();
    categorys = result.lock;
    if (categorys.isNotEmpty) {
      setCurrent(result[0]);
    }
    notifyListeners();
    return categorys;
  }

  void setCurrent(Category category) {
    current = category;
    notifyListeners();
  }

  void setCurrentWithProductList(Category category) {
    currentWithProductList = category;
    notifyListeners();
  }

  void setCurrentSubCategory(Subcategory subcategory) {
    currentSubCategory = subcategory;
    notifyListeners();
  }

  int getIndexWithCategory(Category category) {
    return categorys.indexWhere((element) => element.cid == category.cid);
  }

  Category getCategoryByIndex(int index) {
    return categorys[index];
  }
}
