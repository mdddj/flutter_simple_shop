import 'package:common_utils/common_utils.dart';
import 'package:dataoke_sdk/dataoke_sdk.dart';
import 'package:fbutton_nullsafety/fbutton_nullsafety.dart';
import 'package:fcontrol_nullsafety/fdefine.dart';
import 'package:flutter/material.dart';
import 'package:loading_more_list/loading_more_list.dart';
import 'package:provider/provider.dart';

import '../../../common/utils.dart';
import '../../../util/navigator_util.dart';
import '../../../widgets/extended_image.dart';
import '../../../widgets/simple_price.dart';
import '../pyq_riverpod.dart';

class PyqList extends StatelessWidget {
  const PyqList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PyqState>(builder: (c, v, ch) {
      final product = v.products;
      if (product.isEmpty) return const SliverToBoxAdapter();
      return SliverWaterfallFlow.count(
        crossAxisCount: 1,
        children: product.map(renderItem).toList(),
      );
    });
  }

  Widget renderItem(Product product) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/images/dd.png',
                      width: 30,
                      height: 30,
                    ),
                    const SizedBox(width: 8),
                    const Text('梁典典'),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(left: 5),
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(4)),
                  child: Text(
                    '创建了${NumUtil.getNumByValueDouble(product.couponPrice, 0)}元券',
                    style: const TextStyle(color: Colors.pink),
                  ),
                )
              ],
            ),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
          height: 8,
              ),
              Text('${product.circleText}'),
              Builder(
                builder: (context) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 12,top: 12),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8)),
          child: Row(
            children: [
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: GestureDetector(
                      onTap: () {
                        NavigatorUtil.gotoGoodsDetailPage(
                            context, '${product.id}',
                            newViewPage: true);
                      },
                      child: SimpleImage(
                        url: product.mainPic!,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    constraints: const BoxConstraints(minHeight: 80),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            NavigatorUtil.gotoGoodsDetailPage(
                                context, '${product.id}',
                                newViewPage: true);
                          },
                          child: Text(
                            '${product.dtitle}',
                            style: const TextStyle(
                                color: Colors.grey, fontSize: 14),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SimplePrice(
                              price: '${product.actualPrice}',
                              hideText: '',
                              orignPrice: '${product.originalPrice}',
                              fontSize: 22,
                              color: Colors.pink,
                            ),
                            FButton(
                              text: '复制口令',
                              color: Colors.white,
                              onPressed: () async {
                                final result = await DdTaokeSdk.instance
                                    .getCouponsDetail(
                                        taobaoGoodsId: '${product.goodsId}');
                                if (result != null) {
                                  utils.copy(result.longTpwd,
                                      message: '复制成功,打开淘宝即可领取优惠券');
                                }
                              },
                              strokeWidth: 1,
                              strokeColor: Colors.grey.shade200,
                              clickEffect: true,
                              corner: FCorner.all(28),
                              shadowColor: Colors.grey.shade100,
                              shadowBlur: 10,
                              highlightColor: Colors.green.shade50,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              style: const TextStyle(
                                  color: Colors.pinkAccent, fontSize: 12),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
            ],
          ),
                  );
                }
              )
            ])
        ],
      ),
    );
  }
}
