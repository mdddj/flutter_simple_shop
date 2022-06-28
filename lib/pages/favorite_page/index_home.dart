// Flutter imports:
// Package imports:
import 'package:fbutton_nullsafety/fbutton_nullsafety.dart';
import 'package:fcontrol_nullsafety/fdefine.dart' as controller;
import 'package:flutter/material.dart';
import 'package:fsuper_nullsafety/fsuper_nullsafety.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../constant/style.dart';

// Project imports:
import '../../provider/goods_detail_provider.dart';
import '../../provider/user_provider.dart';
import '../../util/system_toast.dart';
import '../../widgets/no_data.dart';
import '../../widgets/refresh_and_load_more.dart';
import 'goods_item.dart';

class FavoriteIndexHome extends StatefulWidget {
  const FavoriteIndexHome({Key? key}) : super(key: key);

  @override
  IndexState createState() => IndexState();
}

class IndexState extends State<FavoriteIndexHome> {
  UserProvider? userProvider;
  GoodsDetailProvider? goodsDetailProvider;
  RefreshController rc = RefreshController(initialRefresh: true);

  @override
  Widget build(BuildContext context) {
    return Consumer<UserProvider>(
      builder: (context, userProvider, _) {
        return Scaffold(
          backgroundColor: userProvider.goods!.isEmpty ? Colors.white : null,
          appBar: AppBar(
            title: const Text('收藏'),
            centerTitle: true,
            actions: !userProvider.isEditFavoriteIng
                ? <Widget>[
                    InkWell(
                      onTap: () {
                        // 编辑
                        userProvider.editorIconClickHandleFun(true);
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Icon(Icons.edit),
                      ),
                    )
                  ]
                : <Widget>[],
          ),
          body: Stack(
            children: <Widget>[
              RefreshAndLoadMore(
                controller: rc,
                loadMoreFun: l,
                refreshFun: r,
                children: userProvider.goods!.isNotEmpty
                    ? this
                        .userProvider!
                        .goods!
                        .map((good) => FavoriteGoodsItem(
                            good: good,
                            isShowEditIcon: userProvider.isEditFavoriteIng,
                            selectListIds: userProvider.editFavoriteIds,
                            userProvider: userProvider))
                        .toList()
                    : [
                        const Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: NoDataWidget(title: '暂无收藏'),
                        )
                      ],
              ),
              //------------收藏列表end
              userProvider.isEditFavoriteIng
                  ? Positioned(
                      bottom: 12,
                      left: 12,
                      width: Get.width,
                      height: 100,
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 255, 255, 0.92),
                            borderRadius: const BorderRadius.all(Radius.circular(15)),
                            boxShadow: [boxShaow]),
                        child: Row(
                          children: <Widget>[
                            // 全选/取消全选
                            SizedBox(
                              width: 120,
                              child: Row(
                                children: <Widget>[
                                  Checkbox(
                                    value: userProvider.editFavoriteIds.length ==
                                        userProvider.goods!.length,
                                    onChanged: (v) {
                                      userProvider.selectAll(v!);
                                    },
                                  ),
                                  Text(userProvider.editFavoriteIds.length ==
                                          userProvider.goods!.length
                                      ? '取消全选'
                                      : '全选')
                                ],
                              ),
                            ),
                            // 操作
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  FSuper(
                                    lightOrientation: controller.FLightOrientation.LeftBottom,
                                    text: '已选 ',
                                    spans: [
                                      TextSpan(
                                          text: userProvider.editFavoriteIds.length.toString(),
                                          style:
                                              const TextStyle(fontSize: 12, color: Colors.black)),
                                      const TextSpan(
                                          text: ' 项', style: TextStyle(color: Colors.grey))
                                    ],
                                  ),
                                  FButton(
                                    width: 120,
                                    text: '删除',
                                    padding: EdgeInsets.zero,
                                    color: Colors.pinkAccent,
                                    onPressed: userProvider.editFavoriteIds.isNotEmpty
                                        ? () {
                                            if (userProvider.editFavoriteIds.isNotEmpty) {
                                              showDialog(
                                                  context: context,
                                                  builder: (context) => AlertDialog(
                                                        title: const Text('提示'),
                                                        content: const Text(('确定删除吗')),
                                                        actions: <Widget>[
                                                          TextButton(
                                                            onPressed: () {
                                                              Navigator.pop(context);
                                                            },
                                                            child: const Text('取消'),
                                                          ),
                                                          TextButton(
                                                            onPressed: () async {
                                                              final list =
                                                                  userProvider.editFavoriteIds;
                                                              await Future.forEach(list,
                                                                  (element) async {
                                                                await goodsDetailProvider!
                                                                    .removeGoodsFavoriteFun(
                                                                        goodsId: element as String);
                                                              });

                                                              userProvider.removeFavoriteOk();
                                                              SystemToast.show('删除成功');
                                                              if(mounted){
                                                                Navigator.pop(context);
                                                              }

                                                            },
                                                            child: const Text('确定'),
                                                          ),
                                                        ],
                                                      ));
                                            }
                                          }
                                        : null,
                                    clickEffect: true,
                                    shadowBlur: 10.0,
                                    highlightColor: Colors.grey.shade100,
                                  ),
                                  InkWell(
                                      onTap: () {
                                        userProvider.editorIconClickHandleFun(false);
                                      },
                                      child: const Icon(Icons.clear))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  : Container()
            ],
          ),
        );
      },
    );
  }

  Future<void> r() async {
    await userProvider!.loadUserFavoriteGoodsListFun(1);
    rc.refreshCompleted();
    rc.footerMode!.value = LoadStatus.idle;
  }

  void l() async {
    // 判断是不是最后一页
    if (!userProvider!.pageInfo!.last!) {
      await userProvider!.loadNextPageUserFavoriteGoodsListFun();
      rc.loadComplete();
    } else {
      rc.footerMode!.value = LoadStatus.noMore;
    }
  }

  @override
  void didChangeDependencies() {
    var userProvider = Provider.of<UserProvider>(context);
    var goodsDetailProvider = Provider.of<GoodsDetailProvider>(context);
    if (this.userProvider != userProvider) {
      this.userProvider = userProvider;
    }
    if (this.goodsDetailProvider != goodsDetailProvider) {
      this.goodsDetailProvider = goodsDetailProvider;
    }
    super.didChangeDependencies();
  }
}
