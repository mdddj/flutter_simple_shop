

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../freezed/file_info.dart';
import '../provider/riverpod/model/my_user.dart';
part 'meet_model.g.dart';
part 'meet_model.freezed.dart';
///面基对象
@unfreezed
class MeetModel with _$MeetModel {
  factory MeetModel({
   required String aboutDiandian,
    required int age,
    required int id,
    required String location,
    required String mianjiInfo,
    required String name,
    required String soulCodeImage,
    required String soulName,
    required String toLocation,
    required int state,
    required MyUser user,
   @Default(IListConst([])) IList<FileInfo> images
}) = _MeetModel;
  factory MeetModel.fromJson(dynamic json) => _$MeetModelFromJson(json);


}

extension MeetModelExt on MeetModel {
 bool get isEmptyConent => mianjiInfo.isEmpty;
 String get content => isEmptyConent ? '暂无描述' : mianjiInfo;
}