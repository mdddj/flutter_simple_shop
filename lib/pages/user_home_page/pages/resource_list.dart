

import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';

import '../../../api/apis.dart';
import '../../../freezed/resource_category.dart';
import '../../../resource/repository/my_resource_repository.dart';
import '../../../widgets/loading/custom_loading_more_widget.dart';
import '../../../widgets/resource_widegt.dart';

class UserResourceListRepository extends ResourceListRepository<MyResourceListApi>{}


class UserResourceWidget extends StatefulWidget {

  const UserResourceWidget({super.key});

  @override
  State<UserResourceWidget> createState() => _UserResourceWidgetState();
}

class _UserResourceWidgetState extends State<UserResourceWidget> {
  final _repository  = UserResourceListRepository();




  @override
  Widget build(BuildContext context) {
    return MyLoadingMoreSliverList(MySliverListConfig<Resource>(itemBuilder: _itemBuilder,sourceList: _repository,lock: false,indicatorBuilder: _indicatorBuilder));

  }

  @override
  void dispose() {
    _repository.dispose();
    super.dispose();
  }

  Widget _itemBuilder(BuildContext context, Resource item, int index) {
    return ResourceWidget(resource: item);
  }

  Widget? _indicatorBuilder(BuildContext context,  status) {
    return CustomLoadingMoreWidgetWithSliver(context, status,retry: (){
     _repository.refresh(true);
    },emptyChild: const SizedBox());
  }
}
