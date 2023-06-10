import 'package:freezed_annotation/freezed_annotation.dart';

part 'pager.freezed.dart';
part 'pager.g.dart';


@freezed
class Pager with _$Pager {
  const Pager._();

  const factory Pager({
      @JsonKey(name: 'routerName') @Default('')  String routername,
      PagerParams? params
    }) = _Pager;
  
  factory Pager.fromJson(Map<String, dynamic> json) => _$PagerFromJson(json);

}


///页面参数
@freezed
class PagerParams with _$PagerParams {
  const PagerParams._();
  const factory PagerParams() = _PagerParams;
  factory PagerParams.dyn({required String name, @Default('暂无动态，快去发布一条吧') String emptyText}) = DynPageParams;
  factory PagerParams.dynWrite({required String name}) = DynWriteParams;
  factory PagerParams.fromJson(Map<String, dynamic> json) => _$PagerParamsFromJson(json);
}