// To parse this JSON data, do
//
//     final goodsListParam = goodsListParamFromJson(jsonString);

import 'dart:convert';

ProductListParam goodsListParamFromJson(String str) =>
    ProductListParam.fromJson(json.decode(str));

String goodsListParamToJson(ProductListParam data) =>
    json.encode(data.toJson());

class ProductListParam {
  ProductListParam({
    this.brand,
    this.brandIds,
    this.cids,
    this.commissionRateLowerLimit,
    this.couponPriceLowerLimit,
    this.freeshipRemoteDistrict,
    this.goldSeller,
    this.haitao,
    this.juHuaSuan,
    this.monthSalesLowerLimit,
    required this.pageId,
    this.pageSize,
    this.pre,
    this.preSale,
    this.priceLowerLimit,
    this.priceUpperLimit,
    this.sort,
    this.specialId,
    this.subcid,
    this.taoQiangGou,
    this.tchaoshi,
    this.tmall,
  });

  String? brand;
  String? brandIds;
  String? cids;
  String? commissionRateLowerLimit;
  String? couponPriceLowerLimit;
  String? freeshipRemoteDistrict;
  String? goldSeller;
  String? haitao;
  String? juHuaSuan;
  String? monthSalesLowerLimit;
  String? pageId;
  String? pageSize;
  String? pre;
  String? preSale;
  String? priceLowerLimit;
  String? priceUpperLimit;
  String? sort;
  String? specialId;
  String? subcid;
  String? taoQiangGou;
  String? tchaoshi;
  String? tmall;

  factory ProductListParam.fromJson(Map<String, dynamic> json) =>
      ProductListParam(
        brand: json["brand"],
        brandIds: json["brandIds"],
        cids: json["cids"],
        commissionRateLowerLimit: json["commissionRateLowerLimit"],
        couponPriceLowerLimit: json["couponPriceLowerLimit"],
        freeshipRemoteDistrict: json["freeshipRemoteDistrict"],
        goldSeller: json["goldSeller"],
        haitao: json["haitao"],
        juHuaSuan: json["juHuaSuan"],
        monthSalesLowerLimit: json["monthSalesLowerLimit"],
        pageId: json["pageId"],
        pageSize: json["pageSize"],
        pre: json["pre"],
        preSale: json["preSale"],
        priceLowerLimit: json["priceLowerLimit"],
        priceUpperLimit: json["priceUpperLimit"],
        sort: json["sort"],
        specialId: json["specialId"],
        subcid: json["subcid"],
        taoQiangGou: json["taoQiangGou"],
        tchaoshi: json["tchaoshi"],
        tmall: json["tmall"],
      );

  Map<String, dynamic> toJson() => {
        "brand": brand,
        "brandIds": brandIds,
        "cids": cids,
        "commissionRateLowerLimit": commissionRateLowerLimit,
        "couponPriceLowerLimit": couponPriceLowerLimit,
        "freeshipRemoteDistrict": freeshipRemoteDistrict,
        "goldSeller": goldSeller,
        "haitao": haitao,
        "juHuaSuan": juHuaSuan,
        "monthSalesLowerLimit": monthSalesLowerLimit,
        "pageId": pageId,
        "pageSize": pageSize,
        "pre": pre,
        "preSale": preSale,
        "priceLowerLimit": priceLowerLimit,
        "priceUpperLimit": priceUpperLimit,
        "sort": sort,
        "specialId": specialId,
        "subcid": subcid,
        "taoQiangGou": taoQiangGou,
        "tchaoshi": tchaoshi,
        "tmall": tmall,
      };
}
