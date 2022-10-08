import '../../../../api/apis.dart';
import '../../../../index.dart';

class FavoritesRepository extends SimpleLoadingMoreBaes<MyFavoritesModel,FavoritesFindListApi> {
  @override
  FavoritesFindListApi get api => FavoritesFindListApi();

  @override
  bool transformIsNomore(final dynamic data) {
    return data['last'];
  }

  @override
  List<MyFavoritesModel> transformResponseData(final dynamic data) {
   return List<MyFavoritesModel>.from((data['content'] as List<dynamic>).map(MyFavoritesModel.fromJson)).toList();
  }

}
