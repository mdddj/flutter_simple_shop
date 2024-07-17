import 'dart:convert';

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

typedef ProductModel = Product;

@freezed
class Product with _$Product {
  const factory Product(
      {@Default('') String teamName,
      @Default(0) num tbcid,
      @Default(0) num shipPercent,
      @Default('') String itemLink,
      @Default(0) num freeshipRemoteDistrict,
      @Default(0) num yunfeixian,
      @Default(0) num goldSellers,
      @Default('') String reimgs,
      @Default('') String couponLink,
      @Default(0) num haitao,
      @Default('') String sellerId,
      @Default(0) num discounts,
      @Default('') String directCommissionLink,
      @Default('') String couponStartTime,
      @Default(0) num serviceScore,
      @Default('') String mainPic,
      @Default(0) num id,
      @Default(0) num brand,
      @Default('') String imgs,
      @Default('') String brandName,
      @Default('') String couponConditions,
      @Default('') String detailPics,
      @Default([]) List<dynamic> subcid,
      @Default(0) num subdivisionId,
      @Default(0) num dsrScore,
      @Default(0) num dailySales,
      @Default('') String shopLogo,
      @Default(0) num shopLevel,
      @Default(0) num couponTotalNum,
      @Default(0) num descScore,
      @Default('') String brandWenan,
      @Default('') String activityEndTime,
      @Default(0) num shipScore,
      dynamic brandId,
      @Default(0) num couponReceiveNum,
      @Default(0) num shopType,
      @Default(0) num cid,
      @Default('') String desc,
      @Default(0) num commissionRate,
      @Default(0) num originalPrice,
      @Default(0) num actualPrice,
      @Default('') String goodsId,
      @Default(0) num quanMLink,
      @Default('') String shopName,
      @Default('') String activityStartTime,
      @Default('') String video,
      @Default('') String title,
      @Default('') String dtitle,
      @Default(0) num monthSales,
      @Default(0) num subdivisionRank,
      @Default(0) num hzQuanOver,
      @Default(0) num isSubdivision,
      @Default(0) num directCommissionType,
      @Default(0) num servicePercent,
      @Default(0) num commissionType,
      @Default(0) num directCommission,
      @Default(0) num twoHoursSales,
      @Default(0) num dsrPercent,
      @Default(0) num estimateAmount,
      @Default(0) num couponPrice,
      @Default(0) num activityType,
      @Default(0) num hotPush,
      @Default('') String marketingMainPic,
      @Default('') String couponEndTime,
      @Default('') String createTime,
      @Default('') String subdivisionName,
      @Default('') String circleText,
      @Default([]) List<dynamic> specialText}) = _Product;

  factory Product.fromJson(dynamic json) => _$ProductFromJson(json);
}

IList<Product> getProductsWithResponse(String json) {
  return List<Product>.from(
          (jsonDecode(json) as List<dynamic>).map(Product.fromJson))
      .lock;
}
