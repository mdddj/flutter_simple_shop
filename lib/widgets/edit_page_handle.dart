// Flutter imports:
import 'package:flutter/material.dart';

/// 点击空白处收起键盘
class EditePageHandle extends StatelessWidget {
  final Widget child;
  const EditePageHandle({Key? key,required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        behavior: HitTestBehavior.translucent,
      onTap: (){
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: child,
    );
  }
}
