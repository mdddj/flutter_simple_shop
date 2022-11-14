// Flutter imports:
// Package imports:
import 'package:dataoke_sdk/dataoke_sdk.dart';
import 'package:flutter/material.dart';
import 'package:loading_more_list/loading_more_list.dart';

// Project imports:
import '../../../common/utils.dart';

class ProductsList extends StatelessWidget {
  final List<Product> products;

  const ProductsList(this.products, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (products.isEmpty) {
      return SliverToBoxAdapter(
        child: Container(),
      );
    }
    return SliverPadding(
        padding: const EdgeInsets.all(8),
        sliver: SliverWaterfallFlow.count(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            children: products.map(itemBuilder).toList()));
  }

  Widget itemBuilder(Product item) {
    return utils.widgetUtils.renderProductCard(item);
  }
}
