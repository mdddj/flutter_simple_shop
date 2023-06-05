





import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'view.dart';
import 'views/write_page.dart';

class MyResourcePage extends StatefulWidget {
  final String name;
  const MyResourcePage({super.key, required this.name});

  @override
  State<MyResourcePage> createState() => _MyResourcePageState();
}

class _MyResourcePageState extends State<MyResourcePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.name),),
      body: MyLoadingMoreCustomScrollView(
        slivers: [
          MyResourceListWidget(name: widget.name,emptyChild: _builderEmptyWidget())
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed:_gotoWrite,child: const Icon(CupertinoIcons.add)),
    );
  }

  Widget _builderEmptyWidget() {
    return FilledButton.tonal(onPressed:_gotoWrite, child: const Text("快去分享一条面基瞬间吧")).marginOnly(top: 22);
  }

  ///去发布页面
  void _gotoWrite(){
     context.navToWidget(to:  MyResourceWritePage(categoryName: widget.name,));
  }
}
