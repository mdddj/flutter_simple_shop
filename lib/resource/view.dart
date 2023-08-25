library resource;

import 'dart:io';

import 'package:dd_js_util/dd_js_util.dart';
import 'package:dd_js_util/model/ask_ok_dialog_params.dart';
import 'package:dd_js_util/model/picture_selection_item.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_more_list_fast/loading_more_list_fast.dart';

import '../api/apis.dart';
import '../common/api_ext.dart';
import '../freezed/comment.dart';
import '../freezed/pager.dart';
import '../freezed/resource_category.dart';
import '../index.dart';
import '../pages/index.dart';
import '../pages/user_home_page/pages/resource_list.dart';
import '../provider/riverpod/model/my_user.dart';
import '../widgets/default_avatar_widget.dart';
import '../widgets/loading/custom_loading_more_widget.dart';
import '../widgets/resource_widegt.dart';
import 'repository/my_resource_repository.dart';
part 'views/detail.dart';
part 'views/write_page.dart';
part 'page.dart';
part 'views/selec_resource_category_page.dart';

class MyResourceListWidget extends StatefulWidget {
  final String name;
  final Widget? emptyChild;

  const MyResourceListWidget({super.key, required this.name, this.emptyChild});

  @override
  State<MyResourceListWidget> createState() => _MyResourceListWidgetState();
}

class _MyResourceListWidgetState extends State<MyResourceListWidget> {
  late final _repository = MyResourceRepository(widget.name);

  @override
  Widget build(BuildContext context) {
    return MyLoadingMoreSliverList(MySliverListConfig<Resource>(itemBuilder: _itemBuilder, sourceList: _repository, indicatorBuilder: _indicatorBuilder, padding: const EdgeInsets.all(12), extendedListDelegate: SliverWaterfallFlowDelegateWithFixedCrossAxisCount(crossAxisCount: context.waterfallFlowCrossAxisCount, mainAxisSpacing: 12, crossAxisSpacing: 12), lock: false));
  }

  Widget _itemBuilder(BuildContext context, Resource item, int index) {
    return ResourceWidget(resource: item);
  }

  Widget? _indicatorBuilder(BuildContext context, status) {
    return CustomLoadingMoreWidgetWithSliver(context, status, retry: () {
      _repository.refresh(true);
    }, emptyChild: widget.emptyChild);
  }

  @override
  void dispose() {
    _repository.dispose();
    super.dispose();
  }
}
