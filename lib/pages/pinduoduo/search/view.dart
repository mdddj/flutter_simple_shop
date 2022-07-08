import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:get/get.dart';

// Project imports:
import '../../../modals/pdd_search_item_model.dart';
import '../../../widgets/appbar_search.dart';
import '../../../widgets/component/coupon_discount.dart';
import '../../../widgets/extended_image.dart';
import '../../../widgets/loading_widget.dart';
import '../../../widgets/simple_price.dart';
import '../../public_detail/view.dart';
import 'logic.dart';


var i = Icon(Icons.abc);

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  SearchPageState createState() => SearchPageState();
}

class SearchPageState extends State<SearchPage> {
  final SearchLogic logic = Get.put(SearchLogic());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBarSearch(
        hintText: '搜索拼多多隐藏优惠券',
        onSearch: logic.onSearch,
        eve: 0,
      ),
      body: EasyRefresh.custom(slivers: [
        Obx(() {
          final products = logic.products;
          final loading = logic.loading.value;
          return SliverFillRemaining(
              child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 800),
            child: products.isNotEmpty
                ? ListView.builder(
                    itemBuilder: (_, index) => renderItem(products[index]),
                    itemCount: products.length,
                  )
                : loading
                    ? const LoadingWidget()
                    : const SizedBox(),
          ));
        })
      ]),
    );
  }

  Widget renderItem(PddSearchItemModel item) {
    return GestureDetector(
      onTap: () {
        context.navigator.push(MaterialPageRoute(builder: (_) => PublicDetailView(goodsId: item.goodsSign, type: 'pdd')));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 140,
                  height: 140,
                  child: SimpleImage(
                    url: item.goodsImageUrl,
                  ),
                ),
                Expanded(
                    child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  constraints: const BoxConstraints(minHeight: 140),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.goodsName,
                            style: const TextStyle(color: Colors.black45, fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          CouponDiscountShow(value: '${item.couponDiscount}')
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// 销量
                          Container(
                            alignment: Alignment.centerRight,
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 2),
                              decoration: BoxDecoration(color: Colors.red.shade50, borderRadius: BorderRadius.circular(2)),
                              child: Text(
                                '全网销量${item.salesTip}',
                                style: const TextStyle(color: Colors.red, fontSize: 12),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              SimplePrice(
                                price: '${item.minGroupPrice}',
                                hideText: '到手价',
                                fontSize: 20,
                              ),
                              Expanded(
                                  child: Container(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  item.mallName,
                                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                                ),
                              ))
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ))
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    Get.delete<SearchLogic>();
    super.dispose();
  }
}


///Android Studio Chipmunk | 2021.2.1 Patch 1
// Build #AI-212.5712.43.2112.8609683, built on May 19, 2022
// Runtime version: 11.0.12+0-b1504.28-7817840 aarch64
// VM: OpenJDK 64-Bit Server VM by JetBrains s.r.o.
// macOS 12.4
// GC: G1 Young Generation, G1 Old Generation
// Memory: 2048M
// Cores: 8
// Registry: external.system.auto.import.disabled=true
// Non-Bundled Plugins: com.jetbrains.ChooseRuntime (1.2), com.tao.getx (3.2.6), com.vecheslav.darculaDarkerTheme (1.2.0), Dart (212.5744), idea.plugin.protoeditor (212.5080.8), Gradle View (4.0.0), org.intellij.plugins.markdown (212.5457.16), org.jetbrains.kotlin (212-1.7.0-release-281-AS5457.46), pl.pszklarska.pubversionchecker (1.3.5), com.squareup.sqldelight (1.5.3), cn.yiiguxing.plugin.translate (3.3-203u212.patch.1), com.thoughtworks.gauge (212.4746.52), io.flutter (69.0.2)