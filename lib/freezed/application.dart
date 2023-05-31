import 'package:dd_js_util/dd_js_util.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../api/apis.dart';
import '../common/view.dart';
import '../index.dart';

final application = FutureProvider.family<ApplicationModel, ApplocationContext>((ref, ctx) async {
  try {
    await ref.read(categoryRiverpod).init();
    await ref.read(indexStateRiverpod.notifier).fetch();
    await KZheTaokeApiWithAppkeyGet.doRequest(ref);
    ref.read(userRiverpod.notifier).startAppTryLogin();
    return ref.read(appModel(ctx));
  } on AppException catch (_) {
    rethrow;
  }
});
