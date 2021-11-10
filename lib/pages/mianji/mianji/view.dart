// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:get/get.dart';

// Project imports:
import '../../../widgets/simple_appbar.dart';
import '../../user_home_page/white/index.dart';
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
      body: EasyRefresh.custom(slivers: [
        SliverToBoxAdapter(
          child: MaterialButton(
            onPressed: () => Get.to(() => const WhiteIndex()),
            child: const Text('发布动态'),
          ),
        )
      ]),
    );
  }

  @override
  void dispose() {
    Get.delete<MianjiLogic>();
    super.dispose();
  }
}
