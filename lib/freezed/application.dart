

import 'package:dd_js_util/dd_js_util.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../api/apis.dart';
import '../common/view.dart';
import '../pages/index_page/new/index_riverpod.dart';
import '../provider/riverpod/category_riverpod.dart';

final application = FutureProvider.family<ApplicationModel,ApplocationContext>((ref,ctx) async {
  var model = builderDefaultApplication(ctx);
  try {
    final categorys = await ref.read(categoryRiverpod).init();
    await ref.read(indexStateRiverpod).fetch();
    await KZheTaokeApiWithAppkeyGet.doRequest(ref);
    model = model.copyWith(categorys: categorys);
  } on AppException catch (_) {
    rethrow;
  }

  //销毁事件,虽然它永远都不会执行
  ref.onDispose(() {
    model.favoritesRepository.dispose();
  });

  return model;
});