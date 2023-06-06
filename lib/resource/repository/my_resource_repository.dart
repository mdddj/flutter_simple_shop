


import 'package:dd_js_util/dd_js_util.dart';

import '../../api/apis.dart';
import '../../freezed/resource_category.dart';
import '../../index.dart';

class MyResourceRepository extends ResourceListRepository<SelectMyRsourceListData>{
  final String categoryName;

  MyResourceRepository(this.categoryName);

  @override
  Map<String, dynamic> get otherParams => {
    "name": categoryName,
    "type": "面基"
  };

}


///资源类型的数据仓库
abstract class ResourceListRepository<A extends ApiPageMixin> extends SimpleLoadingMoreBaes<Resource,A>{
  @override
  A get api => getIt.get<A>();

  @override
  List<Resource> transformResponseData(WrapJson data) {
    return List.from(data.getListValue('content').map(Resource.fromJson));
  }

  @override
  bool transformIsNomore(WrapJson data) {
    return data.getValue('last') as bool;
  }

}

