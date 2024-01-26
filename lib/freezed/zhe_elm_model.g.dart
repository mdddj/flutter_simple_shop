// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zhe_elm_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ZheElmResultModelImpl _$$ZheElmResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ZheElmResultModelImpl(
      alibabaalscunionelemepromotionofficialactivitygetresponse: json[
                  'alibabaAlscUnionElemePromotionOfficialactivityGetResponse'] ==
              null
          ? const Alibabaalscunionelemepromotionofficialactivitygetresponse()
          : Alibabaalscunionelemepromotionofficialactivitygetresponse.fromJson(
              json['alibabaAlscUnionElemePromotionOfficialactivityGetResponse']
                  as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ZheElmResultModelImplToJson(
        _$ZheElmResultModelImpl instance) =>
    <String, dynamic>{
      'alibabaAlscUnionElemePromotionOfficialactivityGetResponse':
          instance.alibabaalscunionelemepromotionofficialactivitygetresponse,
    };

_$AlibabaalscunionelemepromotionofficialactivitygetresponseImpl
    _$$AlibabaalscunionelemepromotionofficialactivitygetresponseImplFromJson(
            Map<String, dynamic> json) =>
        _$AlibabaalscunionelemepromotionofficialactivitygetresponseImpl(
          data: json['data'] == null
              ? const Data()
              : Data.fromJson(json['data'] as Map<String, dynamic>),
          message: json['message'] as String? ?? '',
          resultcode: json['resultCode'] as int? ?? 0,
          requestid: json['requestid'] as String? ?? '',
        );

Map<String, dynamic>
    _$$AlibabaalscunionelemepromotionofficialactivitygetresponseImplToJson(
            _$AlibabaalscunionelemepromotionofficialactivitygetresponseImpl
                instance) =>
        <String, dynamic>{
          'data': instance.data,
          'message': instance.message,
          'resultCode': instance.resultcode,
          'requestid': instance.requestid,
        };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      description: json['description'] as String? ?? '',
      endtime: json['endTime'] as int? ?? 0,
      id: json['id'] as String? ?? '',
      link: json['link'] == null
          ? const Link()
          : Link.fromJson(json['link'] as Map<String, dynamic>),
      picture: json['picture'] as String? ?? '',
      starttime: json['startTime'] as int? ?? 0,
      title: json['title'] as String? ?? '',
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'endTime': instance.endtime,
      'id': instance.id,
      'link': instance.link,
      'picture': instance.picture,
      'startTime': instance.starttime,
      'title': instance.title,
    };

_$LinkImpl _$$LinkImplFromJson(Map<String, dynamic> json) => _$LinkImpl(
      alipayminiurl: json['alipayMiniUrl'] as String? ?? '',
      eleschemeurl: json['eleSchemeUrl'] as String? ?? '',
      h5shortlink: json['h5ShortLink'] as String? ?? '',
      h5url: json['h5url'] as String? ?? '',
      miniqrcode: json['miniQrcode'] as String? ?? '',
      picture: json['picture'] as String? ?? '',
      tbminiqrcode: json['tbMiniQrcode'] as String? ?? '',
      tbqrcode: json['tbQrCode'] as String? ?? '',
      wxappid: json['wxAppid'] as String? ?? '',
      wxpath: json['wxPath'] as String? ?? '',
      h5MiniQrcode: json['h5MiniQrcode'] as String? ?? '',
    );

Map<String, dynamic> _$$LinkImplToJson(_$LinkImpl instance) =>
    <String, dynamic>{
      'alipayMiniUrl': instance.alipayminiurl,
      'eleSchemeUrl': instance.eleschemeurl,
      'h5ShortLink': instance.h5shortlink,
      'h5url': instance.h5url,
      'miniQrcode': instance.miniqrcode,
      'picture': instance.picture,
      'tbMiniQrcode': instance.tbminiqrcode,
      'tbQrCode': instance.tbqrcode,
      'wxAppid': instance.wxappid,
      'wxPath': instance.wxpath,
      'h5MiniQrcode': instance.h5MiniQrcode,
    };
