import 'package:freezed_annotation/freezed_annotation.dart';

part 'zhe_elm_model.freezed.dart';

part 'zhe_elm_model.g.dart';

extension ZheElmResultModelEx on ZheElmResultModel {
  Link get links =>
      alibabaalscunionelemepromotionofficialactivitygetresponse.data.link;
}

@freezed
sealed class ZheElmResultModel with _$ZheElmResultModel {
  const ZheElmResultModel._();

  const factory ZheElmResultModel({
    @JsonKey(name: 'alibabaAlscUnionElemePromotionOfficialactivityGetResponse')
    @Default(Alibabaalscunionelemepromotionofficialactivitygetresponse())
    Alibabaalscunionelemepromotionofficialactivitygetresponse
    alibabaalscunionelemepromotionofficialactivitygetresponse,
  }) = _ZheElmResultModel;

  factory ZheElmResultModel.fromJson(Map<String, dynamic> json) =>
      _$ZheElmResultModelFromJson(json);
}

@freezed
sealed class Alibabaalscunionelemepromotionofficialactivitygetresponse
    with _$Alibabaalscunionelemepromotionofficialactivitygetresponse {
  const Alibabaalscunionelemepromotionofficialactivitygetresponse._();

  const factory Alibabaalscunionelemepromotionofficialactivitygetresponse({
    @JsonKey(name: 'data') @Default(Data()) Data data,
    @JsonKey(name: 'message') @Default('') String message,
    @JsonKey(name: 'resultCode') @Default(0) int resultcode,
    @JsonKey(name: 'requestid') @Default('') String requestid,
  }) = _Alibabaalscunionelemepromotionofficialactivitygetresponse;

  factory Alibabaalscunionelemepromotionofficialactivitygetresponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AlibabaalscunionelemepromotionofficialactivitygetresponseFromJson(json);
}

@freezed
sealed class Data with _$Data {
  const Data._();

  const factory Data({
    @JsonKey(name: 'description') @Default('') String description,
    @JsonKey(name: 'endTime') @Default(0) int endtime,
    @JsonKey(name: 'id') @Default('') String id,
    @JsonKey(name: 'link') @Default(Link()) Link link,
    @JsonKey(name: 'picture') @Default('') String picture,
    @JsonKey(name: 'startTime') @Default(0) int starttime,
    @JsonKey(name: 'title') @Default('') String title,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
sealed class Link with _$Link {
  const Link._();

  const factory Link({
    @JsonKey(name: 'alipayMiniUrl') @Default('') String alipayminiurl,
    @JsonKey(name: 'eleSchemeUrl') @Default('') String eleschemeurl,
    @JsonKey(name: 'h5ShortLink') @Default('') String h5shortlink,
    @JsonKey(name: 'h5url') @Default('') String h5url,
    @JsonKey(name: 'miniQrcode') @Default('') String miniqrcode,
    @JsonKey(name: 'picture') @Default('') String picture,
    @JsonKey(name: 'tbMiniQrcode') @Default('') String tbminiqrcode,
    @JsonKey(name: 'tbQrCode') @Default('') String tbqrcode,
    @JsonKey(name: 'wxAppid') @Default('') String wxappid,
    @JsonKey(name: 'wxPath') @Default('') String wxpath,
    @JsonKey(name: 'h5MiniQrcode') @Default('') String h5MiniQrcode,
  }) = _Link;

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
}
