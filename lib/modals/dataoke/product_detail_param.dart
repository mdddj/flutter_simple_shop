// To parse this JSON data, do
//
//     final productDetailParam = productDetailParamFromJson(jsonString);

import 'dart:convert';

ProductDetailParam productDetailParamFromJson(String str) =>
    ProductDetailParam.fromJson(json.decode(str));

String productDetailParamToJson(ProductDetailParam data) =>
    json.encode(data.toJson());

class ProductDetailParam {
  ProductDetailParam({
    this.goodsId,
    required this.id,
  });

  String? goodsId;
  String? id;

  factory ProductDetailParam.fromJson(Map<String, dynamic> json) =>
      ProductDetailParam(
        goodsId: json["goodsId"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "goodsId": goodsId,
        "id": id,
      };
}
