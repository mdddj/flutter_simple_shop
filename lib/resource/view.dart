import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:loading_more_list_fast/loading_more_list_fast.dart';

import '../constant/context.dart';
import '../freezed/resource_category.dart';
import '../widgets/loading/custom_loading_more_widget.dart';
import '../widgets/resource_widegt.dart';
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
    return MyLoadingMoreSliverList(MySliverListConfig<Resource>(
        itemBuilder: _itemBuilder,
        sourceList: _repository,
        indicatorBuilder: _indicatorBuilder,
        padding: const EdgeInsets.all(12),
        extendedListDelegate:
            SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
                crossAxisCount: context.waterfallFlowCrossAxisCount,
                mainAxisSpacing: 12,
              crossAxisSpacing: 12
            ),
        lock: false));
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
