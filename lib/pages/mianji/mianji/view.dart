// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:get/get.dart';

// Project imports:
import '../../../widgets/simple_appbar.dart';
import 'apply.dart';
import 'logic.dart';

// 面基动态
class MianjiPage extends StatefulWidget {
  const MianjiPage({Key? key}) : super(key: key);

  @override
  _MianjiPageState createState() => _MianjiPageState();
}

class _MianjiPageState extends State<MianjiPage> {
  final MianjiLogic logic = Get.put(MianjiLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(title: '典典面基动态'),
      body: EasyRefresh.custom(slivers: [_buildAction()]),
    );
  }

  /// 构建操作区域。
  Widget _buildAction() {
    return Container(
      margin: const EdgeInsets.only(left: 12, top: 12),
      child: Row(
        children: [
          ElevatedButton(
              onPressed: () {
                Get.to(() => const ApplyPage());
              },
              child: const Text('申请面基'))
        ],
      ),
    ).sliverBox;
  }

  @override
  void dispose() {
    Get.delete<MianjiLogic>();
    super.dispose();
  }
}
