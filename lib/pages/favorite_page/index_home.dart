import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_more_list/loading_more_list.dart';
import '../../index.dart';
import '../../widgets/loading/custom_loading_more_widget.dart';
import '../../widgets/login_tip_widget.dart';

class FavoriteIndexHome extends ConsumerStatefulWidget {
  const FavoriteIndexHome({Key? key}) : super(key: key);

  @override
  ConsumerState<FavoriteIndexHome> createState() => _FavoriteIndexHomeState();
}

class _FavoriteIndexHomeState extends ConsumerState<FavoriteIndexHome> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: '收藏'.appbar,
      body: IfWidget(
        expression: ref.isLoginFun,
        trueBuild: _FavoritesListWidget.new,
        elseBuild: LoginTipWidget.new,
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class _FavoritesListWidget extends StatelessWidget {
  const _FavoritesListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadingMoreList(ListConfig<MyFavoritesModel>(
        itemBuilder: (context, model, index) {
          return FavoriteGoodsItem(item: model, isShowEditIcon: false);
        },
        sourceList: FavoritesRepository(),
        indicatorBuilder: CustomLoadingMoreWidget.new));
  }
}
