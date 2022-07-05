import 'package:dataoke_sdk/model/base/favorite_model.dart';
import 'package:dd_js_util/api/base.dart';

import 'base.dart';

class FavoritesAddApi extends MyBaseApi {
  FavoritesAddApi() : super("/api/favorites/save", httpMethod: HttpMethod.post);

  @Doc(message: "添加收藏函数")
  static Future<void> doRequeset(FavoriteModel favoriteModel) async {
    final api = FavoritesAddApi();
    api.params.addAll(favoriteModel.getJson());
    final result = await api.request();
    print(result);
  }
}
