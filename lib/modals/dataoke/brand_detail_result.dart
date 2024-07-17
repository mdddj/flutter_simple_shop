import 'dart:convert';

import '../dd/product.dart';

BrandDetail brandDetailFromJson(String str) =>
    BrandDetail.fromJson(json.decode(str));

String brandDetailToJson(BrandDetail data) => json.encode(data.toJson());

class BrandDetail {
  BrandDetail({
    this.brandName,
    this.brandDesc,
    this.fansNum,
    this.totalNum,
    this.brandId,
    this.brandFeatures,
    this.list,
    this.pageId,
    this.brandLogo,
    this.sales,
  });

  String? brandName;
  String? brandDesc;
  int? fansNum;
  int? totalNum;
  int? brandId;
  String? brandFeatures;
  List<Product>? list;
  String? pageId;
  String? brandLogo;
  int? sales;

  factory BrandDetail.fromJson(Map<String, dynamic> json) => BrandDetail(
        brandName: json["brandName"],
        brandDesc: json["brandDesc"],
        fansNum: json["fansNum"],
        totalNum: json["totalNum"],
        brandId: json["brandId"],
        brandFeatures: json["brandFeatures"],
        list: List<Product>.from(json["list"].map(Product.fromJson)),
        pageId: json["pageId"],
        brandLogo: json["brandLogo"],
        sales: json["sales"],
      );

  Map<String, dynamic> toJson() => {
        "brandName": brandName,
        "brandDesc": brandDesc,
        "fansNum": fansNum,
        "totalNum": totalNum,
        "brandId": brandId,
        "brandFeatures": brandFeatures,
        "list": jsonEncode(list),
        "pageId": pageId,
        "brandLogo": brandLogo,
        "sales": sales,
      };
}
