import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/cupertino.dart';

import '../provider/riverpod/model/my_user.dart';

class DefaultUsernameWidget extends StatelessWidget {
  final MyUser user;
  final EdgeInsets? padding;

  const DefaultUsernameWidget(this.user, {super.key, this.padding});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(user.nickName, style: context.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
      ],
    );
  }
}
