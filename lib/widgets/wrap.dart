// Flutter imports:
import 'package:flutter/material.dart';

import 'package:loading_more_list_fast/loading_more_list_fast.dart';

/// 功能组组件
class MyWrap extends StatelessWidget {
  final List<Widget> children;
  final String? title;

  const MyWrap({Key? key, required this.children, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) Container(margin: const EdgeInsets.only(bottom: 12), child: Text('$title')),
          WaterfallFlow.count(
            crossAxisCount: 4,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: children,
          ),
        ],
      ),
    );
  }
}
