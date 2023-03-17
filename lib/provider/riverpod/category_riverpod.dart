// Flutter imports:
// Package imports:
import 'package:dataoke_sdk/dataoke_sdk.dart' hide BlogCategory;
import 'package:dataoke_sdk/model/category.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import '../../common/utils.dart';
import '../../modals/blog_category_model.dart';

final categoryRiverpod = ChangeNotifierProvider((ref) => CategoryState());
class CategoryState extends ChangeNotifier {
  IList<Category> categorys =const IListConst([]);

  late Category current;

  Category? currentWithProductList;

  Subcategory? currentSubCategory;

  IList<BlogCategory> blogCategorys = const IListConst([]);

  IList<JdOrPddCategory> jdCategory = const IListConst([]);

  /// 加载大淘客超级分类数据
  @Doc(message: '加载超级分类数据')
  Future<void> init() async {
    final result = await DdTaokeSdk.instance.getCategorys();
    categorys = categorys.addAll(result);
    if (categorys.isNotEmpty) {
      setCurrent(result[0]);
    }
    notifyListeners();
  }

  /// 加载京东的分类数据
  Future<void> getJdCategory() async {
    jdCategory.clear();
    final result = await DdTaokeSdk.instance.getJdCategory(parentId: '0');
    jdCategory.addAll(result);
    notifyListeners();
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

  Future<List<BlogCategory>> getBlogCategory() async {
    final list = await utils.blogApi.getCategorys();
    blogCategorys = blogCategorys.addAll(list);
    notifyListeners();
    return list;
  }

  int getIndexWithCategory(Category category) {
    return categorys.indexWhere((element) => element.cid == category.cid);
  }

  Category getCategoryByIndex(int index) {
    return categorys[index];
  }
}
