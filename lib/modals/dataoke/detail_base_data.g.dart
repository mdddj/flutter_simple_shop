// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_base_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DetailBaseDataResult _$DetailBaseDataResultFromJson(
  Map<String, dynamic> json,
) => _DetailBaseDataResult(
  info: Product.fromJson(json['detail']),
  similarProducts:
      (json['similarList'] as List<dynamic>?)?.map(Product.fromJson).toList() ??
      const [],
  couponInfo:
      json['privilegeLink'] == null
          ? const CouponLinkResult()
          : CouponLinkResult.fromJson(
            json['privilegeLink'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$DetailBaseDataResultToJson(
  _DetailBaseDataResult instance,
) => <String, dynamic>{
  'detail': instance.info,
  'similarList': instance.similarProducts,
  'privilegeLink': instance.couponInfo,
};

_CouponLinkResult _$CouponLinkResultFromJson(Map<String, dynamic> json) =>
    _CouponLinkResult(
      couponRemainCount: json['couponRemainCount'] as String? ?? '',
      kuaiZhanUrl: json['kuaiZhanUrl'] as String? ?? '',
      minCommissionRate: json['minCommissionRate'] as String? ?? '',
      originalPrice: json['originalPrice'] as num? ?? 0,
      couponInfo: json['couponInfo'] as String? ?? '',
      actualPrice: json['actualPrice'] as num? ?? 0,
      shortUrl: json['shortUrl'] as String? ?? '',
      maxCommissionRate: json['maxCommissionRate'] as String? ?? '',
      couponEndTime: json['couponEndTime'] as String? ?? '',
      couponTotalCount: json['couponTotalCount'] as String? ?? '',
      itemId: json['itemId'] as String? ?? '',
      couponStartTime: json['couponStartTime'] as String? ?? '',
      couponClickUrl: json['couponClickUrl'] as String? ?? '',
      itemUrl: json['itemUrl'] as String? ?? '',
      longTpwd: json['longTpwd'] as String? ?? '',
      tpwd: json['tpwd'] as String? ?? '',
    );

Map<String, dynamic> _$CouponLinkResultToJson(_CouponLinkResult instance) =>
    <String, dynamic>{
      'couponRemainCount': instance.couponRemainCount,
      'kuaiZhanUrl': instance.kuaiZhanUrl,
      'minCommissionRate': instance.minCommissionRate,
      'originalPrice': instance.originalPrice,
      'couponInfo': instance.couponInfo,
      'actualPrice': instance.actualPrice,
      'shortUrl': instance.shortUrl,
      'maxCommissionRate': instance.maxCommissionRate,
      'couponEndTime': instance.couponEndTime,
      'couponTotalCount': instance.couponTotalCount,
      'itemId': instance.itemId,
      'couponStartTime': instance.couponStartTime,
      'couponClickUrl': instance.couponClickUrl,
      'itemUrl': instance.itemUrl,
      'longTpwd': instance.longTpwd,
      'tpwd': instance.tpwd,
    };
