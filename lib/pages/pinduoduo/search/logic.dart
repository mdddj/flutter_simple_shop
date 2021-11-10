// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../../modals/pdd_search_item_model.dart';
import '../../../service/api_service.dart';

class SearchLogic extends GetxController {


  List<PddSearchItemModel> products = <PddSearchItemModel>[].obs; // 商品列表
  RxBool loading = RxBool(false);

  /// 执行搜索
  void onSearch(String chats) {
    loading.value = true;
    update();
    products.clear();
    tkApi.pddSearch(chats).then((value) {
      products.addAll(value);
      loading.value= false;
      update();
    });

  }
}
