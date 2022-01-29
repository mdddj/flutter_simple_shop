// Flutter imports:
import 'package:dataoke_sdk/dd_taoke_sdk.dart';
import 'package:dataoke_sdk/params/activity_link_param.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Project imports:
import 'logic.dart';

class ActivityViewPage extends StatefulWidget {
  const ActivityViewPage({required this.id, required this.title, Key? key})
      : super(key: key);

  final String title;
  final String id;

  @override
  _ActivityViewPageState createState() => _ActivityViewPageState();
}

class _ActivityViewPageState extends State<ActivityViewPage> {
  final ActivityViewLogic logic = Get.put(ActivityViewLogic());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [],
        ),
      ),
    );
  }

  @override
  void dispose() {
    Get.delete<ActivityViewLogic>();
    super.dispose();
  }
}
