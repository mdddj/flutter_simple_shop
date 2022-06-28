import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:get/get.dart';

import '../../widgets/simple_appbar.dart';
import 'logic.dart';
import 'pages/add.dart';


// 动态发布页面
class DynamicPagePage extends StatefulWidget {
  const DynamicPagePage({Key? key}) : super(key: key);

  @override
  DynamicPagePageState createState() => DynamicPagePageState();
}

class DynamicPagePageState extends State<DynamicPagePage> {
  final logic = Get.put(DynamicPageLogic());
  final state = Get.find<DynamicPageLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  SimpleAppBar(title: '动态',actions: [
        TextButton(onPressed: () {
          Get.to(()=>const AddDynamicPage());
        }, child: const Text('发布动态'),)
      ]),
      body: EasyRefresh.custom(
        slivers: const [

        ]
      )
    );
  }

  @override
  void dispose() {
    Get.delete<DynamicPageLogic>();
    super.dispose();
  }
}