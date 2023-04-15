// Flutter imports:
// Package imports:
import 'package:dd_models/models/brand.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

import '../../../util/image_util.dart';
import '../../../util/navigator_util.dart';
// Project imports:
import 'price_layout.dart';

/// 商品卡片布局
class StoreGoodsItemLayout extends StatelessWidget {
  final BrandGoodslist storeGoods;

  const StoreGoodsItemLayout({Key? key, required this.storeGoods})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        NavigatorUtil.gotoGoodsDetailPage(context, storeGoods.id.toString());
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
                return ExtendedImage.network(
                  MImageUtils.magesProcessor(storeGoods.mainpic),
                  borderRadius: BorderRadius.circular(5),
                  shape: BoxShape.rectangle,
                  width: constraints.maxWidth,
                  height: constraints.maxWidth,
                );
              },),
              ///折扣标识
              // Positioned(
              //   bottom: 0,
              //   right: 0,
              //   child: _buildDiscountLayout(),
              // )
            ],
          ),
          const SizedBox(height: 6,),
          PriceLayout(
              original: '${storeGoods.actualprice}'.replaceAll('.0', ''),
              discounts: '${storeGoods.originprice}'.replaceAll('.0', ''))
        ],
      ),
    );
  }

}
