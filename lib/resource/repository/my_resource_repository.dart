


import 'package:dd_js_util/dd_js_util.dart';

import '../../api/apis.dart';
import '../../index.dart';

class MyResourceRepository extends SimpleLoadingMoreBaes<WrapJson,SelectMyRsourceListData>{
  final String categoryName;

  MyResourceRepository(this.categoryName);

  @override
  SelectMyRsourceListData get api => getIt.get<SelectMyRsourceListData>();

  @override
  bool transformIsNomore(WrapJson data) {
    return data.getValue('last') as bool;
  }

  @override
  List<WrapJson> transformResponseData(WrapJson data) {
    return List.from(data.getListValue('content').map((e) => WrapJson(e as Map<String,dynamic>)));
  }


  @override
  Map<String, dynamic> get otherParams => {
    "name": categoryName,
    "type": "面基"
  };

}