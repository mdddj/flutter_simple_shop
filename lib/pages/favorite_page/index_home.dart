import 'package:dd_js_util/dd_js_util.dart';
import 'package:fcontrol_nullsafety/fdefine.dart' as controller;
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:fsuper_nullsafety/fsuper_nullsafety.dart';
import 'package:provider/provider.dart';

import '../../constant/style.dart';

// Project imports:
import '../../provider/goods_detail_provider.dart';
import '../../provider/user_provider.dart';
import '../../widgets/no_data.dart';

///用户收藏页面
class FavoriteIndexHome extends StatefulWidget {
  const FavoriteIndexHome({Key? key}) : super(key: key);

  @override
  FavoriteIndexHomeState createState() => FavoriteIndexHomeState();
}

class FavoriteIndexHomeState extends State<FavoriteIndexHome> {
  UserProvider? userProvider;
  GoodsDetailProvider? goodsDetailProvider;

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
              EasyRefresh.custom(slivers: [
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: NoDataWidget(title: '暂无收藏'),
                ).toSliverWidget
              ]),
              //------------收藏列表end
              userProvider.isEditFavoriteIng
                  ? Positioned(
                      bottom: 12,
                      left: 10,
                      right: 10,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(kDefaultPadding * 0.4),
                          child: Row(
                            children: <Widget>[
                              // 全选/取消全选
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Checkbox(
                                    value:
                                        userProvider.editFavoriteIds.length ==
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
                              const SizedBox(
                                width: 12,
                              ),
                              // 操作
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    FSuper(
                                      lightOrientation: controller
                                          .FLightOrientation.LeftBottom,
                                      text: '已选 ',
                                      style:
                                          const TextStyle(color: Colors.grey),
                                      spans: [
                                        TextSpan(
                                            text: userProvider
                                                .editFavoriteIds.length
                                                .toString(),
                                            style: const TextStyle(
                                                fontSize: 12,
                                                color: Colors.black)),
                                        const TextSpan(
                                            text: ' 项',
                                            style:
                                                TextStyle(color: Colors.grey))
                                      ],
                                    ),
                                    const SizedBox(width: kDefaultPadding * 2),
                                    Expanded(
                                        child: ElevatedButton(
                                            onPressed: () {},
                                            child: const Text("删除"))),
                                    const SizedBox(width: kDefaultPadding * 2),
                                    const Icon(Icons.clear).click(() {}),
                                    const SizedBox(width: kDefaultPadding),
                                  ],
                                ),
                              )
                            ],
                          ),
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
  }

  void l() async {
    // 判断是不是最后一页
    if (!userProvider!.pageInfo!.last!) {
      await userProvider!.loadNextPageUserFavoriteGoodsListFun();
    } else {}
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
