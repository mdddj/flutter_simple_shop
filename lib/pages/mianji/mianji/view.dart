import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import '../../../widgets/simple_appbar.dart';

// 面基动态
class MianjiPage extends StatefulWidget {
  const MianjiPage({Key? key}) : super(key: key);

  @override
  MianjiPageState createState() => MianjiPageState();
}

class MianjiPageState extends State<MianjiPage> {

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
              },
              child: const Text('申请面基'))
        ],
      ),
    ).toSliverWidget;
  }

  @override
  void dispose() {
    super.dispose();
  }
}
