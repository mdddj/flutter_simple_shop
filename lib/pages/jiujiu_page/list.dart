// Flutter imports:
// Package imports:
import 'package:dataoke_sdk/model/product.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_more_list/loading_more_list.dart';

// Project imports:
import '../../widgets/waterfall_goods_card.dart';
import 'riverpod.dart';

// 9块9产品列表
class JiuJiuProductList extends ConsumerWidget {
  const JiuJiuProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final products = watch(jiujiuRiverpod).products;
    return SliverPadding(
        padding: const EdgeInsets.all(8),
        sliver: SliverWaterfallFlow.count(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          children: products.map(renderItem).toList(),
        ));
  }

  // 产品卡片布局
  Widget renderItem(Product item) {
    return WaterfallGoodsCard(item);
  }
}
