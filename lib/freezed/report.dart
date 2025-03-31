import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../provider/riverpod/model/my_user.dart';
import 'file_info.dart';

part 'report.freezed.dart';

part 'report.g.dart';

///举报信息
@freezed
sealed class Report with _$Report {
  const Report._();

  const factory Report({
    @JsonKey(name: 'id') @Default(0) int id,
    @JsonKey(name: 'content') @Default('') String content,
    @JsonKey(name: 'type') @Default('') String type,
    @JsonKey(name: 'createTime') @Default('') String createtime,
    @JsonKey(name: 'status') @Default(0) int status,
    @JsonKey(name: 'comment') @Default('') String comment,
    @JsonKey(name: "user") @Default(anonymousUser) MyUser user,
    @JsonKey(name: "images") @Default(IListConst([])) IList<FileInfo> images,
    @JsonKey(name: 'resourceId') int? resourceId,
  }) = _Report;

  factory Report.fromJson(dynamic json) => _$ReportFromJson(json);
}

@freezed
sealed class AddReportParams with _$AddReportParams {
  const AddReportParams._();

  const factory AddReportParams({
    @JsonKey(name: 'content') @Default('') String content,
    @JsonKey(name: 'type') @Default('') String type,
  }) = _AddReportParams;

  factory AddReportParams.fromJson(Map<String, dynamic> json) =>
      _$AddReportParamsFromJson(json);
}
