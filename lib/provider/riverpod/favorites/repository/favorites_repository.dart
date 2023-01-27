import 'package:dd_js_util/dd_js_util.dart';

import '../../../../api/apis.dart';
import '../../../../index.dart';

class FavoritesRepository extends SimpleLoadingMoreBaes<MyFavoritesModel,FavoritesFindListApi> {
  @override
  FavoritesFindListApi get api => FavoritesFindListApi();

  @override
  bool transformIsNomore(final WrapJson data) {
    return data.getValue('last') as bool;
  }

  @override
  List<MyFavoritesModel> transformResponseData(final WrapJson data) {
    data.print();
   return List<MyFavoritesModel>.from((data.getListValue('content')).map(MyFavoritesModel.fromJson)).toList();
  }

}
