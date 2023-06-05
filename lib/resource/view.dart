
import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:loading_more_list_library_fast/src/loading_more_list_library.dart';

import '../widgets/loading/custom_loading_more_widget.dart';
import 'repository/my_resource_repository.dart';


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
    return MyLoadingMoreSliverList(MySliverListConfig<WrapJson>(itemBuilder: _itemBuilder,sourceList: _repository,indicatorBuilder: _indicatorBuilder,lock: false));
  }

  Widget _itemBuilder(BuildContext context, WrapJson item, int index) {
    return Container();
  }

  Widget? _indicatorBuilder(BuildContext context, IndicatorStatus status) {
    return CustomLoadingMoreWidgetWithSliver(context, status,retry: (){
      _repository.refresh(true);
    },emptyChild: widget.emptyChild);
  }


  @override
  void dispose() {
    _repository.dispose();
    super.dispose();
  }
}
