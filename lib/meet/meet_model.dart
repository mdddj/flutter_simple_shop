import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../freezed/file_info.dart';
import '../provider/riverpod/model/my_user.dart';

part 'meet_model.g.dart';

part 'meet_model.freezed.dart';

///面基对象
@freezed
sealed class MeetModel with _$MeetModel {
  const factory MeetModel({
    @Default('') String aboutDiandian,
    @Default(0) int age,
    required int id,
    @Default('') String location,
    @Default('') String mianjiInfo,
    @Default('') String name,
    @Default('') String soulCodeImage,
    @Default('') String soulName,
    @Default('') String toLocation,
    @Default('') String createDate,
    @Default(0) int state,
    required MyUser user,
    @Default(IListConst([])) IList<FileInfo> images,
  }) = _MeetModel;

  factory MeetModel.fromJson(dynamic json) => _$MeetModelFromJson(json);
}

extension MeetModelExt on MeetModel {
  bool get isEmptyConent => mianjiInfo.isEmpty;

  String get content => isEmptyConent ? '暂无描述' : mianjiInfo;
}
