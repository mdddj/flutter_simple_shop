// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:waterfall_flow/waterfall_flow.dart';

// Project imports:
import '../../../provider/riverpod/search_riverpod.dart';
import '../../../widgets/waterfall_goods_card.dart';

/// 搜索的结果列表
class SearchProductList extends StatelessWidget {
  const SearchProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SearchState>(builder: (c,v,ch){
      final products = v.products;
      return WaterfallFlow.builder(
        padding: const EdgeInsets.all(5),
        gridDelegate: const SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8),
        itemBuilder: (BuildContext context, int index) {
          final item = products[index];
          return PhysicalModel(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(10),
            elevation: 3,
            child: WaterfallGoodsCard(item),
          );
        },
        itemCount: products.length,physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
      );
    });
  }
}
