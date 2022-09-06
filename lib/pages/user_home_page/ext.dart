import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../provider/riverpod/model/my_user.dart';
import '../../provider/riverpod/user_riverpod.dart';

extension RefExt on WidgetRef {
  MyUser? get user => watch(userRiverpod.select((value) => value.user));
  bool get isLogin => user != null;

}