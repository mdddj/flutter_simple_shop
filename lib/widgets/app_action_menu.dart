

import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';

import '../freezed/app_action_menu.dart';



///操作弹窗
class AppActionMenuWidget extends StatelessWidget {
  final AppActionMenu actionMenu;
  const AppActionMenuWidget({super.key, required this.actionMenu});


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(actionMenu.title,style: context.textTheme.titleLarge,),
          ),
          const SizedBox(height: 12,),
          ...actionMenu.actions.map((e) => e),
          const SizedBox(height: 12),
          SizedBox(height: context.paddingBottom),
        ],
      ),
    );
  }

}
