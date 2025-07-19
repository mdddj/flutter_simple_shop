// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ShopInfo _$ShopInfoFromJson(Map<String, dynamic> json) => _ShopInfo(
      sellerNick: json['seller_nick'] as String? ?? "",
      pictUrl: json['pict_url'] as String? ?? "",
      shopTitle: json['shop_title'] as String? ?? "",
      shopType: json['shop_type'] as String? ?? "",
      userId: (json['user_id'] as num?)?.toInt() ?? 0,
      shopUrl: json['shop_url'] as String? ?? "",
    );

Map<String, dynamic> _$ShopInfoToJson(_ShopInfo instance) => <String, dynamic>{
      'seller_nick': instance.sellerNick,
      'pict_url': instance.pictUrl,
      'shop_title': instance.shopTitle,
      'shop_type': instance.shopType,
      'user_id': instance.userId,
      'shop_url': instance.shopUrl,
    };
