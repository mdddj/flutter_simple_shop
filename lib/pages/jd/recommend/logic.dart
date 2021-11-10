// Package imports:
import 'package:dd_taoke_sdk/dd_taoke_sdk.dart';
import 'package:dd_taoke_sdk/model/jd/jd_product.dart';
import 'package:get/get.dart';

class RecommendLogic extends GetxController {
  RxList<JdProduct> products = RxList<JdProduct>([]);

  int page = 1;

  int pageSize = 20;
  int sort = 0;
  RxBool loading = RxBool(false);

  /// 加载数据
  Future<void> fetchData() async {
    final result = await DdTaokeSdk.instance.jdPhb(page, pageSize);
    products.addAll(result);
    loading.trigger(false);
    update();
  }

  /// 加载下一页
  Future<void> nextPage() async {
    page++;
    await fetchData();
  }

  @override
  void onInit() {
    super.onInit();
    loading.trigger(true);
    fetchData();
  }
}
