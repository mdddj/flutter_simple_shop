part of provider;

class FavoritesRepository
    extends SimpleLoadingMoreBaes<MyFavoritesModel, FavoritesFindListApi> {
  @override
  FavoritesFindListApi get api => FavoritesFindListApi();

  @override
  bool transformIsNomore(final WrapJson data) {
    return data.getValue('last') as bool;
  }

  @override
  List<MyFavoritesModel> transformResponseData(final WrapJson data) {
    return List<MyFavoritesModel>.from(
            (data.getListValue('content')).map(MyFavoritesModel.fromJson))
        .toList();
  }

  void delete(MyFavoritesModel model) {
    array = array.remove(model);
    if (array.isEmpty) {
      indicatorStatus = IndicatorStatusModel.empty();
    }
    setState();
  }

  void addNew(MyFavoritesModel model){
    kLog('添加后数量.${array.length}');
    refresh(true);
  }
}
