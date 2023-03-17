import 'package:dataoke_sdk/dataoke_sdk.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_more_list_fast/loading_more_list_fast.dart';

import '../common/utils.dart';
import '../widgets/simple_appbar.dart';
import 'index_page/new/index_riverpod.dart';

/// 畅销榜单页面
class BestSellerListPage extends ConsumerStatefulWidget {
  const BestSellerListPage({Key? key}) : super(key: key);

  static void nav(BuildContext context)=>context.navToWidget(to:const BestSellerListPage());

  @override
  BestSellerListPageState createState() => BestSellerListPageState();
}

class BestSellerListPageState extends ConsumerState<BestSellerListPage> {


 late final  List<ProductModel> _products = ref.read(indexStateRiverpod).hotDayProducts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(title: '畅销榜单'),
      body: EasyRefresh.custom(slivers: [
        SliverPadding(
            padding: const EdgeInsets.all(12),
            sliver: SliverWaterfallFlow.count(crossAxisCount: 2,mainAxisSpacing: 12,crossAxisSpacing: 12,children: _products.map(_renderItemCell).toList(),))
      ]),
    );
  }

  Widget _renderItemCell(ProductModel product){
   return utils.widgetUtils.renderProductCard(product);
  }
}
