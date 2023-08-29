import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:waterfall_flow/waterfall_flow.dart';

import '../../../api/apis.dart';
import '../../../freezed/app_action_menu.dart';
import '../../../freezed/resource_category.dart';
import '../../../index.dart';
import '../../../resource/repository/my_resource_repository.dart';
import '../../../widgets/loading/custom_loading_more_widget.dart';
import '../../../widgets/resource_widegt.dart';

class UserResourceListRepository
    extends ResourceListRepository<MyResourceListApi> {}

class UserResourceWidget extends StatefulWidget {
  const UserResourceWidget({super.key});

  @override
  State<UserResourceWidget> createState() => _UserResourceWidgetState();
}

class _UserResourceWidgetState extends State<UserResourceWidget> with AutomaticKeepAliveClientMixin {
  final _repository = GetIt.instance.get<UserResourceListRepository>();

  AppActionMenu actionMenu(Resource resource) {
    return AppActionMenu(actions: [
      ListTile(
          title: const Text('删除'),
          onTap: () {
            context.pop();
            LB.show<WrapJson, MyDeleteUserResourceApi>(
                getIt.get<MyDeleteUserResourceApi>(),
                successResult: successResult,
                params: R(data: {"id": resource.id}));
          },
          leading: const Icon(Icons.delete))
    ], title: "操作");
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return MyLoadingMoreSliverList(MySliverListConfig<Resource>(
        itemBuilder: _itemBuilder,
        sourceList: _repository,
        padding: const EdgeInsets.all(8),
        lock: false,
        indicatorBuilder: _indicatorBuilder,
        extendedListDelegate:
            SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
                crossAxisCount: context.waterfallFlowCrossAxisCountResource,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8)));
  }

  @override
  void dispose() {
    _repository.dispose();
    super.dispose();
  }

  Widget _itemBuilder(BuildContext context, Resource item, int index) {
    return ResourceWidget(resource: item, menu: actionMenu(item));
  }

  Widget? _indicatorBuilder(BuildContext context, status) {
    return CustomLoadingMoreWidgetWithSliver(context, status, retry: () {
      _repository.refresh(true);
    }, emptyChild: const SizedBox());
  }

  void successResult(WrapJson value) {
    value.print();
  }

  @override
  bool get wantKeepAlive => true;
}
