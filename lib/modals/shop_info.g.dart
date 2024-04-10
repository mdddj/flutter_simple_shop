// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShopInfoImpl _$$ShopInfoImplFromJson(Map<String, dynamic> json) =>
    _$ShopInfoImpl(
      sellerNick: json['seller_nick'] as String? ?? "",
      pictUrl: json['pict_url'] as String? ?? "",
      shopTitle: json['shop_title'] as String? ?? "",
      shopType: json['shop_type'] as String? ?? "",
      userId: json['user_id'] as int? ?? 0,
      shopUrl: json['shop_url'] as String? ?? "",
    );

Map<String, dynamic> _$$ShopInfoImplToJson(_$ShopInfoImpl instance) =>
    <String, dynamic>{
      'seller_nick': instance.sellerNick,
      'pict_url': instance.pictUrl,
      'shop_title': instance.shopTitle,
      'shop_type': instance.shopType,
      'user_id': instance.userId,
      'shop_url': instance.shopUrl,
    };
