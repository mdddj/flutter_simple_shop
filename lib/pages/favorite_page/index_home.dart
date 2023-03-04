import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_more_list_fast/loading_more_list_fast.dart';
import '../../index.dart';
import '../../widgets/loading/custom_loading_more_widget.dart';
import '../../widgets/login_tip_widget.dart';

///收藏页面
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
      appBar: AppBar(
        title: const Text("收藏"),
      ),
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

//列表
class _FavoritesListWidget extends StatefulWidget {
  const _FavoritesListWidget({Key? key}) : super(key: key);

  @override
  State<_FavoritesListWidget> createState() => _FavoritesListWidgetState();
}

class _FavoritesListWidgetState extends State<_FavoritesListWidget> {
  final _response = FavoritesRepository();
  @override
  Widget build(BuildContext context) {
    return LoadingMoreList(ListConfig<MyFavoritesModel>(
        itemBuilder: (context, model, index) {
          return FavoriteGoodsItem(item: model, isShowEditIcon: false, repository: _response,);
        },
        sourceList: _response,
        indicatorBuilder: CustomLoadingMoreWidget.new));
  }

  @override
  void dispose() {
    _response.dispose();
    super.dispose();
  }
}
