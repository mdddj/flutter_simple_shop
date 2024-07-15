// To parse this JSON data, do
//
//     final shopConvertParam = shopConvertParamFromJson(jsonString);

import 'dart:convert';

ShopConvertParam shopConvertParamFromJson(String str) =>
    ShopConvertParam.fromJson(json.decode(str));

String shopConvertParamToJson(ShopConvertParam data) =>
    json.encode(data.toJson());

/// 店铺转链参数
class ShopConvertParam {
  ShopConvertParam({
    required this.sellerId,
    required this.shopName,
    required this.pid,
    this.relationId,
  });

  ///  店铺id
  String? sellerId;

  /// 店铺名称，用于返回淘口令
  String? shopName;

  /// 推广位id
  String? pid;

  ///渠道id
  String? relationId;

  factory ShopConvertParam.fromJson(Map<String, dynamic> json) =>
      ShopConvertParam(
        sellerId: json["sellerId"],
        shopName: json["shopName"],
        pid: json["pid"],
        relationId: json["relationId"],
      );

  Map<String, dynamic> toJson() => {
        "sellerId": sellerId,
        "shopName": shopName,
        "pid": pid,
        "relationId": relationId,
      };
}
