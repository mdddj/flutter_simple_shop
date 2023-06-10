import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../meet/meet_list_widget.dart';
import '../../../router.dart';
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
      appBar:  SimpleAppBar(title: '典典面基动态',actions: [
        _buildAction()
      ],),
      body: const MeetListWidget(),
    );
  }

  /// 构建操作区域。
  Widget _buildAction() {
    return  TextButton(
        onPressed: () {
          context.push(pagerUtil.meetAdd.routername);
        },
        child: const Text('申请面基'));
  }

  @override
  void dispose() {
    super.dispose();
  }
}
