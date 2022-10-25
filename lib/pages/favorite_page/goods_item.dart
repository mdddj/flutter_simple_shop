import 'package:fcontrol_nullsafety/fdefine.dart';
import 'package:flutter/material.dart';
import 'package:fsuper_nullsafety/fsuper_nullsafety.dart';

import '../../index.dart';

// 收藏商品列表卡片布局
class FavoriteGoodsItem extends StatelessWidget {
  final MyFavoritesModel item;
  final bool isShowEditIcon; //是否显示选中按钮
  final List<String>? selectListIds;
  final UserProvider? userProvider;

  const FavoriteGoodsItem({required this.item, required this.isShowEditIcon, this.selectListIds, this.userProvider, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Card(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: <Widget>[
              ExtendedImageWidget(
                src: MImageUtils.magesProcessor(item.imageUrl),
                height: 90,
                width: 90,
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () => NavigatorUtil.gotoGoodsDetailPage(context, item.productId),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: <Widget>[
                            TitleWidget(title: item.title),
                            const SizedBox(height: 5.0),
                            CouponPriceWidget(
                              actualPrice: item.arrivalPrice,
                              originalPrice: double.tryParse(item.amount),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: _calcDateHowLong(),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      isShowEditIcon? Positioned(
              right: 10,
              top: 10,
              child: Container(
                width: 100,
                height: 250,
                decoration: const BoxDecoration(
//              color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Checkbox(
                  value: isSelectValue(),
                  onChanged: (value) {
                    if (value!) {
                      userProvider!.addRemoveFavoriteGoodsId(item.productId);
                    } else {
                      userProvider!.removeFavoriteGoodsId(item.productId);
                    }
                  },
                ),
              ),
            )
          : Container()
    ]);
  }

  //计算是否在将在删除列表中
  bool isSelectValue() {
    // 如果不存在则返回-1
    var index = selectListIds!.indexOf(item.productId);
    if (index == -1) {
      return false;
    }
    return true;
  }

  // 建立有效期组件
  Widget _calcDateHowLong() {
    var now = DateTime.now();
    var endTime = DateTime.tryParse(item.endTime);
    if (endTime != null) {
      var difference = endTime.difference(now);
      Widget returnWidget = FSuper(
        lightOrientation: FLightOrientation.LeftBottom,
        text: '剩余有效期${difference.inDays}天${difference.inHours % 24}小时',
        padding: const EdgeInsets.all(2),
        strokeColor: const Color(0xffFF7043),
        strokeWidth: 1,
      );
      if (difference.inDays < 0) {
        returnWidget = const FSuper(
          lightOrientation: FLightOrientation.LeftBottom,
          text: '已失效',
          padding: EdgeInsets.all(2),
          strokeColor: Color(0xffc2bfc2),
          strokeWidth: 1,
        );
      }
      return returnWidget;
    }

    return const SizedBox();
  }
}
