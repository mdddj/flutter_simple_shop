// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:pull_to_refresh/pull_to_refresh.dart';

// Project imports:
import './pull_to_refresh_widget.dart';

class RefreshAndLoadMore extends StatelessWidget {

  final dynamic refreshFun;
  final dynamic loadMoreFun;
  final RefreshController? controller;
  final dynamic listViewCntroller;
  final List<Widget>? children;

  const RefreshAndLoadMore({this.refreshFun, this.loadMoreFun, this.children,this.controller,this.listViewCntroller,Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      controller: controller!,
      onRefresh: refreshFun,
      onLoading: loadMoreFun,
      enablePullDown: true,
      enablePullUp: true,
      physics: const ClampingScrollPhysics(),
      header: const WaterDropHeader(),
      footer: const PullToRefreshWidgetFoot(),
      child: ListView(
        controller: listViewCntroller,
        physics: const ClampingScrollPhysics(),
        children: children!,
      ),
    );
  }
}
