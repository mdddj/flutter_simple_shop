// Package imports:
import 'package:dataoke_sdk/dd_taoke_sdk.dart';
import 'package:dataoke_sdk/model/hot_search_worlds_result.dart';
import 'package:get/get.dart';

class SearchLogic extends GetxController {
  static SearchLogic get instance => Get.find<SearchLogic>();

  RxList<HotSearchWorlds> suggest = RxList<HotSearchWorlds>();

  @override
  void onInit() {
    DdTaokeSdk.instance.getHotSearchWorlds().then((value) {
      suggest.addAll(value);
      update();
    });
    super.onInit();
  }
}
