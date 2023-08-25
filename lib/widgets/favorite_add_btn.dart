import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart' hide View;

import '../api/apis.dart';
import '../common/view.dart';
import '../freezed/add_favorites_params.dart';
import '../pages/index.dart';
import '../provider/riverpod/favorites/model.dart';
import 'image_wrapper.dart';
import 'index.dart';

class FavoriteAddBtn extends View {
  final AddFavoritesParams params;

  const FavoriteAddBtn(this.params, {super.key});

  @override
  Widget renderView(BuildContext context, ApplicationModel appCore) {
    return ImageWrapper(
      child: IconButton(
          onPressed: () => addFavorite(appCore, context),
          icon: const Icon(Icons.favorite)),
    );
  }

  Future<void> addFavorite(
      ApplicationModel applicationModel, BuildContext context) async {
    if (applicationModel.ref.isLogin.not) {
      toast('请先登录');
      showDialog(context: context, builder: (_) => const LoginDialog());
      return;
    }
    final r = await FavoritesAddApi.doRequeset(params);
    r.handle(success: () {
      kLog(r.data);
      try {
        applicationModel.favoritesRepository
            .addNew(MyFavoritesModel.fromJson(r.getDataMap));
      } catch (e) {
        kLogErr('$e');
      }
    });
  }
}
