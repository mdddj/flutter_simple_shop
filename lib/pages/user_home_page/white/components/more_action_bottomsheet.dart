// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// 更多操作
class MoreActions extends StatelessWidget {
  final List<ListTile> actions;

  const MoreActions({Key? key, required this.actions}) : super(key: key);


  /// 显示
  static Future<void> show(List<ListTile> actions) async {
    await Get.bottomSheet(MoreActions(actions: actions),backgroundColor: Colors.white,elevation: 10);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: actions.map((e) => e).toList(),
      ),
    );
  }
}
