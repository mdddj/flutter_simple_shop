import 'package:dataoke_sdk/dataoke_sdk.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_more_list_fast/loading_more_list_fast.dart';
import '../../provider/riverpod/search_riverpod.dart';
import '../../widgets/loading_more_list_indicator.dart';
import '../../widgets/waterfall_goods_card.dart';

/// 搜索结果页面
class SearchListIndex extends ConsumerWidget {
  final String value;

  const SearchListIndex({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('搜索:$value'),
      ),
      body: MyLoadingMoreList(MyListConfig<ProductModel>(
          itemBuilder: _itemBuilder,
          sourceList: SearchRepository(value),
          padding: const EdgeInsets.all(8),
          indicatorBuilder:(context, status) {
            return LoadingMoreListCostumIndicator(status);
          },
          extendedListDelegate:
              const SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8))),
    );
  }

  Widget _itemBuilder(BuildContext context, ProductModel item, int index) {
    return WaterfallGoodsCard(item);
  }
}
