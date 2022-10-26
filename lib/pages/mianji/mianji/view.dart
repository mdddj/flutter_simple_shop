import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import '../../../meet/add_new_meet.dart';
import '../../../meet/meet_list_widget.dart';
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
    return  ElevatedButton(
        onPressed: () {
          context.navToWidget(to: const AddNewMeet());
        },
        child: const Text('申请面基'));
  }

  @override
  void dispose() {
    super.dispose();
  }
}
