import 'package:dd_js_util/model/base_api_exception.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';

import '../api/apis.dart';
import '../common/view.dart';
import '../index.dart';
import '../pages/index.dart';

final application = FutureProvider.family<ApplicationModel, ApplocationContext>((ref, ctx) async {
  try {
    await NavigatorUtil.showPrivacyPolicyDialog(ctx.context);
    await ref.read(categoryRiverpod).init();
    await ref.read(indexStateRiverpod.notifier).fetch();
    await KZheTaokeApiWithAppkeyGet.doRequest(ref);
    ref.read(userRiverpod.notifier).startAppTryLogin();
    return ref.read(appModel(ctx));
  } on BaseApiException catch (e, s) {
    Logger().e('启动失败', error: e, stackTrace: s);
    rethrow;
  }
});
