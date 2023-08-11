import 'package:freezed_annotation/freezed_annotation.dart';

part 'xb_result.freezed.dart';
part 'xb_result.g.dart';




@freezed
class XbData with _$XbData {
  const XbData._();

  const factory XbData({
      @JsonKey(name: 'list') @Default([])  List<XbItem> list,
      @JsonKey(name: 'pageId') @Default(0)  int pageId,
      @JsonKey(name: 'totalNum') @Default(0)  int totalNum,
    }) = _XbData;
  
  factory XbData.fromJson(Map<String, dynamic> json) => _$XbDataFromJson(json);

}


@freezed
class XbItem with _$XbItem {
  const XbItem._();

  const factory XbItem({
      @JsonKey(name: 'content') @Default('')  String content,
      @JsonKey(name: 'contentApp') @Default('')  String contentApp,
      @JsonKey(name: 'couponUrl') @Default('')  String couponUrl,
      @JsonKey(name: 'createTime') @Default('')  String createTime,
      @JsonKey(name: 'img') @Default('')  String img,
      @JsonKey(name: 'itemId') @Default('')  String itemId,
      @JsonKey(name: 'itemUrl') @Default('')  String itemUrl,
      @JsonKey(name: 'msgId') @Default('')  String msgId,
      @JsonKey(name: 'remark') @Default('')  String remark,
      @JsonKey(name: 'source') @Default('')  String source,
      @JsonKey(name: 'sourceType') @Default('')  String sourceType,
      @JsonKey(name: 'tag') @Default('')  String tag,
      @JsonKey(name: 'title') @Default('')  String title,
      @JsonKey(name: 'updateTime') @Default('')  String updateTime,
    }) = _XbItem;
  
  factory XbItem.fromJson(Map<String, dynamic> json) => _$XbItemFromJson(json);

}

