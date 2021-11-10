// Flutter imports:
// Package imports:
import 'package:fcontrol_nullsafety/fdefine.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fsuper_nullsafety/fsuper_nullsafety.dart';

import '../../modals/favorites_model.dart';
// Project imports:
import '../../provider/user_provider.dart';
import '../../util/image_util.dart';
import '../../util/navigator_util.dart';
import '../../widgets/coupon_price.dart';
import '../../widgets/extended_image.dart';
import '../../widgets/title_widget.dart';

// 收藏商品列表卡片布局
class FavoriteGoodsItem extends StatelessWidget {
  final Good good;
  final bool? isShowEditIcon; //是否显示选中按钮
  final List<String>? selectListIds;
  final UserProvider? userProvider;
  const FavoriteGoodsItem({required this.good, this.isShowEditIcon,this.selectListIds,this.userProvider,Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 10),
        margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
        height: 250,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Row(
          children: <Widget>[
            ExtendedImageWidget(
              src: MImageUtils.magesProcessor(good.mainPic!),
              height: 460,
              width: 460,
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  NavigatorUtil.gotoGoodsDetailPage(
                      context, good.id.toString());
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 10),
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: <Widget>[
                            TitleWidget(
                                title: good.dtitle,
                                color: Colors.black,
                                padding: EdgeInsets.zero),
                            const SizedBox(height: 5.0),
                            CouponPriceWidget(
                              actualPrice: good.actualPrice,
                              originalPrice: good.originalPrice,
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
              ),
            )
          ],
        ),
      ),
      isShowEditIcon! ? Positioned(
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
            onChanged: (value){
              if(value!){
                userProvider!.addRemoveFavoriteGoodsId(good.id.toString());
              }else{
                userProvider!.removeFavoriteGoodsId(good.id.toString());
              }
            },
          ),
        ),
      ):Container()
    ]);
  }

  //计算是否在将在删除列表中
  bool isSelectValue(){
    // 如果不存在则返回-1
    var index = selectListIds!.indexOf(good.id.toString());
    if(index==-1){
      return false;
    }
    return true;
  }

  // 建立有效期组件
  Widget _calcDateHowLong() {
    var now = DateTime.now();
    var endTime = good.couponEndTime!;

    var difference = endTime.difference(now);
    Widget returnWidget = FSuper(
      lightOrientation: FLightOrientation.LeftBottom,
      text: '剩余有效期${difference.inDays}天${difference.inHours % 24}小时',
      padding: const EdgeInsets.all(2),
      strokeColor: const Color(0xffFF7043),
      strokeWidth: 1,
    );
    if (difference.inDays < 0) {
      returnWidget = FSuper(
        lightOrientation: FLightOrientation.LeftBottom,
        text: '已失效',
        padding: const EdgeInsets.all(2),
        strokeColor: const Color(0xffc2bfc2),
        strokeWidth: 1,
      );
    }

    return returnWidget;
  }
}
