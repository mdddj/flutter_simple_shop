// Flutter imports:
// Package imports:
import 'package:dataoke_sdk/dataoke_sdk.dart';
import 'package:flutter/material.dart';
import '../../util/image_util.dart';

class ShopInfoWidget extends StatelessWidget {
  final ProductModel goodsInfo;

  const ShopInfoWidget({required this.goodsInfo,Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                // 商铺logo
                Container(
                  padding: const EdgeInsets.only(top: 5.0, bottom: 5.0, right: 10.0),
                  child:goodsInfo.shopLogo.isNotEmpty? Image.network(
                    MImageUtils.magesProcessor(goodsInfo.shopLogo),
                    width: 91,
                    height: 90,
                  ) : Image.asset('assets/images/ava.jpg',width:91,height:90,),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        goodsInfo.shopName,
                        style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12),
                      ),
                      Row(
                        children: <Widget>[
                      // 店铺类型
                      goodsInfo.shopType == 1
                          ? Image.asset(
                              'assets/icons/tianmao.png',
                              width: 12,
                              height: 12,
                            )
                          : Image.asset(
                              'assets/icons/taobao.png',
                              width: 12,
                              height: 12,
                            ),

                      //是否金牌卖家
                      goodsInfo.goldSellers == 1
                          ? Container(
                              margin: const EdgeInsets.only(left: 5.0),
                              child: Image.asset(
                                'assets/icons/jinpai.png',
                                width: 12,
                                height: 12,
                              ),
                            )
                          : Container()
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: ElevatedButton(
                    onPressed: (){},
                    child: const Text('全部商品'),
                  ),
                )
              ],
            ),

            // 描述
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                  border: Border(
                      top: BorderSide(
                          color: Color.fromRGBO(245, 245, 249, 1.0)))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('宝贝描述:${goodsInfo.descScore}'),
                  Text('卖家服务:${goodsInfo.serviceScore}'),
                  Text('物流服务:${goodsInfo.shipScore}')
                ],
              ),
            ),
          ],
        ));
  }
}
