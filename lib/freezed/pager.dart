import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'product_share.dart';
import 'resource_category.dart';

part 'pager.freezed.dart';

part 'pager.g.dart';

@freezed
class Pager with _$Pager {
  const Pager._();

  const factory Pager(
      {@JsonKey(name: 'routerName') @Default('') String routername,
      PagerParams? params}) = _Pager;

  factory Pager.fromJson(Map<String, dynamic> json) => _$PagerFromJson(json);
}



///页面参数
@freezed
class PagerParams with _$PagerParams {
  const PagerParams._();

  const factory PagerParams() = _PagerParams;

  factory PagerParams.dynListPageParam({
    required String name,
    @Default('暂无动态，快去发布一条吧') String emptyText,
    @Default(ResourceWidgetCardStyle.waterfall) ResourceWidgetCardStyle style,
    @JsonKey(fromJson: null,toJson: null,includeToJson: false,includeFromJson: false) Widget? emptyChild
  }) = DynPageParams;

  factory PagerParams.dynWritePageParam(
      {required String name,
      ProductShare? productShare,
      String? title,
      @Default(false) bool disableSelectOtherCategory,
      String? hintText
      }) = DynWriteParams;

  factory PagerParams.fromJson(Map<String, dynamic> json) =>
      _$PagerParamsFromJson(json);
}
