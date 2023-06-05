import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../api/apis.dart';
import '../../common/api_ext.dart';
import '../../index.dart';

// 收藏商品列表卡片布局
class FavoriteGoodsItem extends StatelessWidget {
  final MyFavoritesModel item;
  final bool isShowEditIcon; //是否显示选中按钮
  final List<String>? selectListIds;
  final UserProvider? userProvider;
  final FavoritesRepository repository;

  const FavoriteGoodsItem(
      {required this.item, required this.isShowEditIcon, this.selectListIds, this.userProvider, Key? key, required this.repository})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Slidable(
        key: ValueKey(item.id),
        endActionPane: ActionPane(extentRatio: 0.2, motion: const ScrollMotion(), children: [
          SlidableAction(
            onPressed: _removeItem,
            backgroundColor: const Color(0xFFFE4A49),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: '删除',
          )
        ]),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: <Widget>[
                ExtendedImageWidget(
                  src: MImageUtils.magesProcessor(item.imageUrl),
                  height: 90,
                  width: 90,
                  radius: 5.borderRadius,
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(minHeight: 90),
                    child: GestureDetector(
                      onTap: () => NavigatorUtil.gotoGoodsDetailPage(context, item.productId),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          TitleWidget(title: item.title),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CouponPriceWidget(
                                actualPrice: item.arrivalPrice,
                                originalPrice: double.tryParse(item.amount),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Badge(
                                label: _calcDateHowLong(),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      isShowEditIcon
          ? Positioned(
              right: 10,
              top: 10,
              child: Container(
                width: 100,
                height: 250,
                decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15))),
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

  ///删除
  void _removeItem(BuildContext ctx) {
    FavoritesRemoveApi(item.id).request().then((value) {
      value.simpleToast(ifOk: () => repository.delete(item));
    });
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
      Widget returnWidget = Text('剩余有效期${difference.inDays}天${difference.inHours % 24}小时');
      if (difference.inDays < 0) {
        returnWidget =  const Text('已失效');
      }
      return returnWidget;
    }

    return const SizedBox.shrink();
  }
}
