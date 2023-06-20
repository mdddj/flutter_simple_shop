part of pages;

///收藏页面
class FavoriteIndexHome extends ConsumerStatefulWidget {
  const FavoriteIndexHome({Key? key}) : super(key: key);

  @override
  ConsumerState<FavoriteIndexHome> createState() => _FavoriteIndexHomeState();
}

class _FavoriteIndexHomeState extends ConsumerState<FavoriteIndexHome>
    with AutomaticKeepAliveClientMixin {
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

class _FavoritesListWidget extends View {
  @override
  Widget renderView(BuildContext context, ApplicationModel appCore) {
    return LoadingMoreList(ListConfig<MyFavoritesModel>(
      itemBuilder: (context, model, index) {
        return FavoriteGoodsItem(
            item: model,
            isShowEditIcon: false,
            repository: appCore.favoritesRepository);
      },
      sourceList: appCore.favoritesRepository,
      indicatorBuilder: (context, status) {
        return CustomLoadingMoreWidget(context, status, retry: () {
          appCore.favoritesRepository.refresh(true);
        });
      },
    ));
  }
}
