



import 'package:dd_js_util/dd_js_util.dart';

import '../api/apis.dart';
import '../common/index.dart';
import 'meet_model.dart';


///面基列表
class MeetListLoadMore extends SimpleLoadingMoreBaes<MeetModel,SelectMeetListData> {
  @override
  SelectMeetListData get api => SelectMeetListData();

  @override
  bool transformIsNomore(WrapJson data) {
    return data.getValue('last') as bool;
  }

  @override
  List<MeetModel> transformResponseData(WrapJson data) {
    data.print();
    return List<MeetModel>.from(data.getListValue('content').map(MeetModel.fromJson)).toList();
  }



}