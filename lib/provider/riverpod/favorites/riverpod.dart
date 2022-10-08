
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../api/apis.dart';
import 'riverpod_model.dart';

final riverpodWithFavorites = StateNotifierProvider<RiverpodFavoritesState,FavoritesStateModel>((ref)=>RiverpodFavoritesState());
///暂时弃用
class RiverpodFavoritesState extends StateNotifier<FavoritesStateModel>{
  RiverpodFavoritesState():super(FavoritesStateModel(favorites: [],page: 0));

  ///加载用户的收藏夹数据
  Future<void> loadData([bool isRefresh =false]) async {
    if(isRefresh){
      state = FavoritesStateModel(favorites: [], page: 0);
    }
    final r = await FavoritesFindListApi.doRequest(state.page);

  }
}