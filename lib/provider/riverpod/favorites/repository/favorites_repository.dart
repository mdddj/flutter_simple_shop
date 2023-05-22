import 'package:dd_js_util/dd_js_util.dart';
import 'package:loading_more_list_library_fast/loading_more_list_library_fast.dart';

import '../../../../api/apis.dart';
import '../../../../index.dart';

class FavoritesRepository extends SimpleLoadingMoreBaes<MyFavoritesModel, FavoritesFindListApi> {

  @override
  FavoritesFindListApi get api => FavoritesFindListApi();

  @override
  bool transformIsNomore(final WrapJson data) {
    return data.getValue('last') as bool;
  }

  @override
  List<MyFavoritesModel> transformResponseData(final WrapJson data) {
    return List<MyFavoritesModel>.from((data.getListValue('content')).map(MyFavoritesModel.fromJson)).toList();
  }

  void delete(MyFavoritesModel model){
    array=array.remove(model);
    if(array.isEmpty){
      indicatorStatus = IndicatorStatus.empty;
    }
    setState();
  }

  // void addNew(MyFavoritesModel model){
  //   // array = array.insert(0, model);
  //   // setState();
  //   kLog('添加后数量.${array.length}');
  //   refresh(true);
  // }
}
