





import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../freezed/pager.dart';
import '../router.dart';
import 'view.dart';

class MyResourcePage extends StatefulWidget {
  final DynPageParams params;
  const MyResourcePage({super.key, required this.params});

  @override
  State<MyResourcePage> createState() => _MyResourcePageState();
}

class _MyResourcePageState extends State<MyResourcePage> {
  DynPageParams get params => widget.params;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(params.name),),
      body: MyLoadingMoreCustomScrollView(
        slivers: [
          MyResourceListWidget(name: params.name,emptyChild: _builderEmptyWidget())
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
    context.push(pagerUtil.resourceWrite.routername,extra: DynWriteParams(name: params.name));
  }
}
