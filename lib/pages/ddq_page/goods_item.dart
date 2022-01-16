// Flutter imports:
// Package imports:
import 'package:dataoke_sdk/model/product.dart';
import 'package:flutter/material.dart';

import '../../util/navigator_util.dart';
// Project imports:
import '../../widgets/extended_image.dart';
import '../../widgets/tag_widget.dart';

// 9.9商品卡片布局
class GoodsItem extends StatelessWidget {
  final Product goodsItem;
  final int? state;

  const GoodsItem({required this.goodsItem, this.state,Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
      color: Colors.white,
      child: Row(
        children: <Widget>[
          // 商品图片
          SizedBox(
              height: 120,
              width: 120,
              child: SimpleImage(
                url: goodsItem.mainPic!,
              )),
          Expanded(
              child: InkWell(
            onTap: () {
              NavigatorUtil.gotoGoodsDetailPage(
                  context, goodsItem.id.toString());
            },
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    //上面部分
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        //标题
                        Text(goodsItem.dtitle!,
                            style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1),
                        //店铺
                        Row(
                          children: <Widget>[
                            TagWidget(
                                title: goodsItem.shopName, noBorder: true),
                          ],
                        ),

                        //券后价
                        Container(
                          margin: const EdgeInsets.only(top: 8.0),
                          child: RichText(
                            text: TextSpan(children: <TextSpan>[
                              TextSpan(
                                  text: '￥',
                                  style: TextStyle(
                                      color: state != 2
                                          ? Colors.pinkAccent
                                          : Colors.green,
                                      fontSize: 12)),
                              TextSpan(
                                  text: '${goodsItem.actualPrice}',
                                  style: TextStyle(
                                      color: state != 2
                                          ? Colors.pinkAccent
                                          : Colors.green,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600)),
                              TextSpan(
                                  text: '  券后价    ',
                                  style: TextStyle(
                                      color: state != 2
                                          ? Colors.pinkAccent
                                          : Colors.green,
                                      fontSize: 12)),
                              TextSpan(
                                  text: '原价${goodsItem.originalPrice}',
                                  style: const TextStyle(
                                      color: Colors.black38,
                                      decoration: TextDecoration.lineThrough,
                                      fontSize: 12)),
                            ]),
                          ),
                        )
                      ],
                    ),
                    //下面部分
                    SizedBox(
                      width: 500,
                      height: 60,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                color: state != 2
                                    ? const Color.fromRGBO(255, 238, 230, 1.0)
                                    : Colors.green[100],
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(100.0),
                                    bottomRight: Radius.circular(100.0))),
                            alignment: Alignment.centerLeft,
                            child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: state != 2 ? '已抢' : '月销',
                                  style: const TextStyle(
                                      fontSize: 15,
                                      color: Color.fromRGBO(137, 60, 17, 1.0)),
                                ),
                                TextSpan(
                                  text: ' ${goodsItem.monthSales} ',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: state != 2
                                          ? const Color.fromRGBO(255, 91, 0, 1.0)
                                          : Colors.green),
                                ),
                                const TextSpan(
                                  text: '件',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromRGBO(137, 60, 17, 1.0)),
                                )
                              ]),
                            ),
                          ),
                          state != 2
                              ? Positioned(
                                  right: -3.3,
                                  top: 0,
                                  child: Image.asset(
                                    'assets/images/lijigoumai.png',
                                    width: 120,
                                    height: 120,
                                    fit: BoxFit.cover,
                                  ),
                                )
                              : Container(),
                          Positioned(
                              right: 0,
                              top: 0,
                              child: Container(
                                alignment: Alignment.center,
                                width: 140,
                                height: 60,
                                child: Text(
                                  state != 2 ? '立即抢购' : '即将开始',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: state != 2
                                          ? Colors.white
                                          : Colors.green),
                                ),
                              ))
                        ],
                      ),
                    )
                  ]),
            ),
          ))
        ],
      ),
    );
  }
}
