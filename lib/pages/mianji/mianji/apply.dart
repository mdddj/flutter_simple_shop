import 'package:flutter/material.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

/// 申请面基页面
///
class ApplyPage extends StatefulWidget {
  const ApplyPage({Key? key}) : super(key: key);

  @override
  _ApplyPageState createState() => _ApplyPageState();
}

class _ApplyPageState extends State<ApplyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MorphingAppBar(
        title: const Text('申请面基'),
      ),
      body: SingleChildScrollView(child: Column(
        children: [
          
        ],
      ),),
    );
  }
}
