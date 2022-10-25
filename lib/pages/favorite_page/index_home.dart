import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_more_list/loading_more_list.dart';
import '../../index.dart';
import '../../widgets/login_tip_widget.dart';

///用户收藏页面
class FavoriteIndexHome extends ConsumerWidget {
  const FavoriteIndexHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('收藏'),
          centerTitle: true,
        ),
        body: IfWidget(expression: () => ref.isLogin, trueBuild: FavoritesList.new,elseBuild: LoginTipWidget.new,));
  }
}

///收藏夹列表
class FavoritesList extends StatelessWidget {
  const FavoritesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadingMoreList(ListConfig<MyFavoritesModel>(
        itemBuilder: (context, model, index) {
          return FavoriteGoodsItem(item: model, isShowEditIcon: false);
        },
        sourceList: FavoritesRepository(),physics: const FixedOverscrollBouncingScrollPhysics()));
  }
}


