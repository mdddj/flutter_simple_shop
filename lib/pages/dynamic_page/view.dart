import 'package:flutter/material.dart';

import '../../widgets/index.dart';

// 动态发布页面
class DynamicPagePage extends StatefulWidget {
  const DynamicPagePage({super.key});

  @override
  DynamicPagePageState createState() => DynamicPagePageState();
}

class DynamicPagePageState extends State<DynamicPagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(title: '动态', actions: [
        TextButton(
          onPressed: () {},
          child: const Text('发布动态'),
        )
      ]),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
