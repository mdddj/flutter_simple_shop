import 'package:common_utils/common_utils.dart';
import 'package:dataoke_sdk/dataoke_sdk.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'package:fcontrol_nullsafety/fdefine.dart';
import 'package:flutter/material.dart';
import 'package:fsuper_nullsafety/fsuper_nullsafety.dart';
import '../util/navigator_util.dart';
import '../widgets/coupon_price.dart';
import 'extended_image.dart';

// 瀑布流商品卡片
class WaterfallGoodsCard extends StatelessWidget {
  final ProductModel product;

  const WaterfallGoodsCard(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          NavigatorUtil.gotoGoodsDetailPage(context, product.id.toString(),
              newViewPage: true);
        },
        child: Card(
          elevation: 0.01,
          margin: EdgeInsets.zero,
          color: context.colorScheme.surface,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Column(
                children: <Widget>[
                  _image(),
                  const SizedBox(height: 5),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [renderShopType(context), renderCals(context)],
                    ),
                  ),
                  const SizedBox(height: 5),

                  // 标题
                  _title(product.dtitle),

                  const SizedBox(height: 5),
                  // // 购买理由
                  // Container(
                  //   padding: EdgeInsets.symmetric(
                  //       horizontal: 12),
                  //   child: Text(
                  //     product.desc!,
                  //     maxLines: 2,
                  //     overflow: TextOverflow.ellipsis,
                  //     style: TextStyle(
                  //         color: Colors.grey,
                  //         fontSize: 12),
                  //   ),
                  // ),

                  // SizedBox(height: 12),

                  /// 领券标签
                  Container(
                    alignment: Alignment.centerLeft,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                    child: FSuper(
                      lightOrientation: FLightOrientation.LeftBottom,
                      text:
                          '领 ${NumUtil.getNumByValueDouble(product.couponPrice.toDouble(), 0)} 元券',
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 3),
                      strokeColor: context.primaryColor,
                      corner: FCorner.all(50),
                      style: TextStyle(color: context.primaryColor),
                    ),
                  ),

                  const SizedBox(height: 12),

                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: CouponPriceWidget(
                        actualPrice: product.actualPrice.toString(),
                        originalPrice: product.originalPrice.toDouble()),
                  ),
                  // Hot(
                  //     text:
                  //         '两小时销量${product.twoHoursSales ?? 0},月销${product.monthSales}')
                ],
              )),
        ));
  }

  /// 销量
  Widget renderCals(BuildContext context) {
    return Text(
      '月销${product.monthSales}',
      style: context.textTheme.bodySmall,
    );
  }

  /// 店铺类型
  Widget renderShopType(BuildContext context) {
    final text = product.shopType == 0 ? '淘宝' : '天猫';
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
          color: context.primaryColor, borderRadius: BorderRadius.circular(3)),
      child: Text(
        text,
        style: TextStyle(color: context.colorScheme.inversePrimary),
      ),
    );
  }

  // 标题
  Widget _title(String dtitle) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                dtitle,
                textAlign: TextAlign.start,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ));
  }

  // 商品卡片主图
  Widget _image() {
    var img = product.mainPic;
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return SizedBox(
            width: constraints.maxWidth,
            height: constraints.maxWidth,
            child: SimpleImage(
              url: img,
              radius: const BorderRadius.only(
                  topLeft: Radius.circular(12), topRight: Radius.circular(12)),
            ));
      },
    );
  }
}
