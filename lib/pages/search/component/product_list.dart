// Flutter imports:
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:waterfall_flow/waterfall_flow.dart';
import '../../../provider/riverpod/search_riverpod.dart';
import '../../../widgets/waterfall_goods_card.dart';

/// 搜索的结果列表
class SearchProductList extends ConsumerWidget {
  const SearchProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final products  = ref.watch(searchRiverpod.select((value) => value.products));
    return WaterfallFlow.builder(
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisSpacing: 12, crossAxisSpacing: 12),
      itemBuilder: (BuildContext context, int index) {
        final item = products[index];
        return WaterfallGoodsCard(item);
      },
      itemCount: products.length,physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
    );
  }
}
