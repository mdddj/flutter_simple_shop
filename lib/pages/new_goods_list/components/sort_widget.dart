// Flutter imports:
import 'package:flutter/material.dart';

class SortWidget extends StatelessWidget {

  final String? title;
  final bool? current;
  final Widget? icon;

  const SortWidget({ this.title, this.current,this.icon,Key? key}): super(key: key); //是否选中状态


  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Text(title!),
         icon??Container()
       ],
      )
    );
  }
}
