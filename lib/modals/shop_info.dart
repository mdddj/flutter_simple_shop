// To parse this JSON data, do
//
//     final shoInfo = shoInfoFromJson(jsonString);

// Dart imports:

import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_info.freezed.dart';

part 'shop_info.g.dart';

@freezed
sealed class ShopInfo with _$ShopInfo {
  const factory ShopInfo({
    @JsonKey(name: 'seller_nick') @Default("") String sellerNick,
    @JsonKey(name: 'pict_url') @Default("") String pictUrl,
    @JsonKey(name: 'shop_title') @Default("") String shopTitle,
    @JsonKey(name: 'shop_type') @Default("") String shopType,
    @JsonKey(name: 'user_id') @Default(0) int userId,
    @JsonKey(name: 'shop_url') @Default("") String shopUrl,
  }) = _ShopInfo;

  factory ShopInfo.fromJson(Map<String, dynamic> json) =>
      _$ShopInfoFromJson(json);
}
