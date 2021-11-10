// To parse this JSON data, do
//
//     final shoInfo = shoInfoFromJson(jsonString);

// Dart imports:
import 'dart:convert';

ShopInfo shoInfoFromJson(String str) => ShopInfo.fromJson(json.decode(str));

String shoInfoToJson(ShopInfo data) => json.encode(data.toJson());

class ShopInfo {
  ShopInfo({
    this.sellerNick,
    this.pictUrl,
    this.shopTitle,
    this.shopType,
    this.userId,
    this.shopUrl,
  });

  String? sellerNick;
  String? pictUrl;
  String? shopTitle;
  String? shopType;
  int? userId;
  String? shopUrl;

  factory ShopInfo.fromJson(Map<String, dynamic> json) => ShopInfo(
    sellerNick: json['seller_nick'],
    pictUrl: json['pict_url'],
    shopTitle: json['shop_title'],
    shopType: json['shop_type'],
    userId: json['user_id'],
    shopUrl: json['shop_url'],
  );

  Map<String, dynamic> toJson() => {
    'seller_nick': sellerNick,
    'pict_url': pictUrl,
    'shop_title': shopTitle,
    'shop_type': shopType,
    'user_id': userId,
    'shop_url': shopUrl,
  };
}
