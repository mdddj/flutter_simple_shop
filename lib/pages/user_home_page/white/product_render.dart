// Dart imports:

// Package imports:
import 'package:extended_image/extended_image.dart';
import 'package:extended_text/extended_text.dart';
import 'package:fcontrol_nullsafety/fdefine.dart';
// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fsuper_nullsafety/fsuper_nullsafety.dart';

// Project imports:
import '../../../common/utils.dart';
import '../../../constant/style.dart';

// 商品特殊组件显示

class GoodsText extends SpecialText {
  static const String flag = '<product';
  final int start;
  final SpecialTextGestureTapCallback? onGoodsTap;

  @override
  GoodsText(TextStyle textStyle, {required this.start, this.onGoodsTap}) : super(flag, 'productEnd/>', textStyle);

  @override
  InlineSpan finishText() {
    var goodsText = getContent();


    var dtitle = 'goodsInfo.data!.dtitle';
    var mainPic = 'goodsInfo.data!.mainPic!';
    var actualPrice = 'goodsInfo.data!.actualPrice.toString()'; //券后价
    var discounts = 'goodsInfo.data!.discounts.toString()'; // 折扣力度

    return ExtendedWidgetSpan(
        actualText: toString(),
        deleteAll: true,
        start: start,
        child: GestureDetector(
          onTap: () {
            onGoodsTap?.call(goodsText);
          },
          child: PhysicalModel(
            color: Colors.grey.shade100,
            elevation: 5,
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding),
              decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Row(
                children: <Widget>[
                  ExtendedImage.network(
                    mainPic,
                    width: 80,
                    height: 80,
                    fit: BoxFit.fill,
                    cache: true,
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                  ),
                  utils.widgetUtils.marginRight(),
                  Expanded(
                    child: Container(
                      constraints: const BoxConstraints(minHeight: 80),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(dtitle, maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(color: Colors.black, fontSize: 15)),
                          FSuper(
                            lightOrientation: FLightOrientation.LeftBottom,
                            padding: const EdgeInsets.fromLTRB(9, 6, 9, 6),
                            text: '¥',
                            spans: [
                              TextSpan(
                                text: '$actualPrice券后  ',
                                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                              ),
                              TextSpan(
                                text: '$discounts折',
                                style: const TextStyle(fontSize: 11),
                              ),
                            ],
                            backgroundColor: Colors.grey.shade100,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
