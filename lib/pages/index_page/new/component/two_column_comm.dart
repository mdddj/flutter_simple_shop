import 'package:dd_js_util/ext/widget.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:loading_more_list/loading_more_list.dart';
import 'package:provider/provider.dart';

import '../../../best_seller_list.dart';
import '../index_riverpod.dart';

typedef IndexTwoColumnImageWidgetBuild = ExtendedImage Function(
    double w, double h);

class IndexColumnWidget extends StatelessWidget {
  const IndexColumnWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final products = context.read<IndexState>().hotDayProducts;
    if(products.isEmpty){
      return const SizedBox().toSliverWidget;
    }
    return SliverPadding(
      sliver: SliverWaterfallFlow.count(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        children: [
          TwoColumnCommWidget(
              imageBuilder: (double w, double h) {
                return ExtendedImage.network(
                  products[0].mainPic!,
                  width: w,
                  height: h,
                  borderRadius: BorderRadius.circular(12),
                  shape: BoxShape.rectangle,
                );
              },
              title: '畅销榜单',
              subTitle: '所有人,买它',
              onTap: BestSellerListPage.nav),
          if (products.length > 1)
            TwoColumnCommWidget(
              imageBuilder: (double w, double h) {
                return ExtendedImage.network(products[1].mainPic!,
                    width: w,
                    height: h,
                    borderRadius: BorderRadius.circular(12),
                    shape: BoxShape.rectangle);
              },
              subTitle: '新鲜更有趣',
              title: '每日上新',
            )
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12),
    );
  }
}

// 首页两列的组件widget
class TwoColumnCommWidget extends StatelessWidget {
  final IndexTwoColumnImageWidgetBuild imageBuilder;
  final String title;
  final String subTitle;
  final VoidCallback? onTap;

  const TwoColumnCommWidget(
      {Key? key,
      required this.imageBuilder,
      required this.title,
      required this.subTitle,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(12),
            width: constraints.maxWidth,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(fontSize: 18),
                    ),
                    Text(subTitle,
                        style: TextStyle(
                            fontSize: 13, color: Colors.grey.shade400))
                  ],
                )),
                imageBuilder.call(
                    constraints.maxWidth * .3, constraints.maxWidth * .3)
              ],
            ),
          ),
        );
      },
    );
  }
}
