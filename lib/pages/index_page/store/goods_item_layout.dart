// Flutter imports:
// Package imports:
import 'package:dd_taoke_sdk/model/product.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

import '../../../util/image_util.dart';
import '../../../util/navigator_util.dart';
// Project imports:
import 'price_layout.dart';

/// 商品卡片布局
class StoreGoodsItemLayout extends StatelessWidget {
  final Product storeGoods;

  const StoreGoodsItemLayout({Key? key, required this.storeGoods}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        NavigatorUtil.gotoGoodsDetailPage(context, storeGoods.id.toString());
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100]!.withOpacity(.8),
          borderRadius: const BorderRadius.all(Radius.circular(5)),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  ExtendedImage.network(MImageUtils.magesProcessor(storeGoods.mainPic!),
                  borderRadius: BorderRadius.circular(5),
                    shape: BoxShape.rectangle,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: _buildDiscountLayout(),
                  )
                ],
              ),
              PriceLayout(original: '${storeGoods.actualPrice}'.replaceAll('.0', ''), discounts: '${storeGoods.originalPrice}'.replaceAll('.0', ''))
            ],
          ),
        ),
      ),
    );
  }

  /// 折扣小部件
  Widget _buildDiscountLayout() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      decoration: BoxDecoration(
        color: Colors.pinkAccent.withOpacity(.5),
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      child: Text(
        '${storeGoods.discounts}折',
        style: const TextStyle(fontSize: 12, color: Colors.white),
      ),
    );
  }
}
