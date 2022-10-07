import 'package:dataoke_sdk/dd_dataoke_sdk.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'base.dart';



///添加到收藏夹接口
class FavoritesAddApi extends MyAppCoreApi {
  FavoritesAddApi() : super("/api/user/favorites/save", httpMethod: HttpMethod.post);

  @Doc(message: "服务器发起请求,添加收藏")
  static Future<void> doRequeset(FavoriteModel favoriteModel) async {
    final result = await (FavoritesAddApi()).request(showDefaultLoading: false,data: favoriteModel.getJson());
  }
}

///折淘客获取轮播图接口
class KZheTaokeApiWithCarousel extends MyAppCoreApi {
  KZheTaokeApiWithCarousel():super('/api/zhe/carousel-list');

}