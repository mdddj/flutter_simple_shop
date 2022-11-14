// Dart imports:
import 'dart:convert';

import 'package:dataoke_sdk/dataoke_sdk.dart';



class PddSearchItemModel {
  PddSearchItemModel({
    required this.mallName,
    required this.mallCouponEndTime,
    required this.mallCps,
    required this.unifiedTags,
    required this.mallId,
    required this.hasMallCoupon,
    required this.couponTotalQuantity,
    required this.predictPromotionRate,
    required this.optIds,
    required this.hasCoupon,
    required this.mallCouponMaxDiscountAmount,
    required this.descTxt,
    required this.searchId,
    required this.couponRemainQuantity,
    required this.couponStartTime,
    required this.couponMinOrderAmount,
    required this.goodsThumbnailUrl,
    required this.lgstTxt,
    required this.mallCouponTotalQuantity,
    required this.onlySceneAuth,
    required this.salesTip,
    required this.activityTags,
    required this.goodsName,
    required this.merchantType,
    required this.mallCouponDiscountPct,
    required this.goodsDesc,
    required this.mallCouponMinOrderAmount,
    required this.serviceTags,
    required this.mallCouponStartTime,
    required this.planType,
    required this.optName,
    required this.minGroupPrice,
    required this.mallCouponRemainQuantity,
    required this.zsDuoId,
    required this.goodsSign,
    required this.shareRate,
    required this.couponEndTime,
    required this.couponDiscount,
    required this.minNormalPrice,
    required this.mallCouponId,
    required this.goodsImageUrl,
    required this.servTxt,
    required this.promotionRate,
    required this.catIds,
    required this.optId,
  });

  factory PddSearchItemModel.fromJson(dynamic jsonRes) {
    final unifiedTags = jsonRes['unifiedTags'] is List ? <String>[] : null;
    if (unifiedTags != null) {
      for (final dynamic item in jsonRes['unifiedTags']!) {
        if (item != null) {
          tryCatch(() {
            unifiedTags.add(asT<String>(item)!);
          });
        }
      }
    }

    final optIds = jsonRes['optIds'] is List ? <int>[] : null;
    if (optIds != null) {
      for (final dynamic item in jsonRes['optIds']!) {
        if (item != null) {
          tryCatch(() {
            optIds.add(asT<int>(item)!);
          });
        }
      }
    }

    final activityTags = jsonRes['activityTags'] is List ? <int>[] : null;
    if (activityTags != null) {
      for (final dynamic item in jsonRes['activityTags']!) {
        if (item != null) {
          tryCatch(() {
            activityTags.add(asT<int>(item)!);
          });
        }
      }
    }

    final serviceTags = jsonRes['serviceTags'] is List ? <int>[] : null;
    if (serviceTags != null) {
      for (final dynamic item in jsonRes['serviceTags']!) {
        if (item != null) {
          tryCatch(() {
            serviceTags.add(asT<int>(item)!);
          });
        }
      }
    }

    final catIds = jsonRes['catIds'] is List ? <int>[] : null;
    if (catIds != null) {
      for (final dynamic item in jsonRes['catIds']!) {
        if (item != null) {
          tryCatch(() {
            catIds.add(asT<int>(item)!);
          });
        }
      }
    }
    return PddSearchItemModel(
      mallName: asT<String>(jsonRes['mallName'])!,
      mallCouponEndTime: asT<String>(jsonRes['mallCouponEndTime'])!,
      mallCps: asT<int>(jsonRes['mallCps'])!,
      unifiedTags: unifiedTags!,
      mallId: asT<int>(jsonRes['mallId'])!,
      hasMallCoupon: asT<bool>(jsonRes['hasMallCoupon'])!,
      couponTotalQuantity: asT<int>(jsonRes['couponTotalQuantity'])!,
      predictPromotionRate: asT<double>(jsonRes['predictPromotionRate'])!,
      optIds: optIds!,
      hasCoupon: asT<bool>(jsonRes['hasCoupon'])!,
      mallCouponMaxDiscountAmount: asT<int>(jsonRes['mallCouponMaxDiscountAmount'])!,
      descTxt: asT<String>(jsonRes['descTxt'])!,
      searchId: asT<String>(jsonRes['searchId'])!,
      couponRemainQuantity: asT<int>(jsonRes['couponRemainQuantity'])!,
      couponStartTime: asT<String>(jsonRes['couponStartTime'])!,
      couponMinOrderAmount: asT<int>(jsonRes['couponMinOrderAmount'])!,
      goodsThumbnailUrl: asT<String>(jsonRes['goodsThumbnailUrl'])!,
      lgstTxt: asT<String>(jsonRes['lgstTxt'])!,
      mallCouponTotalQuantity: asT<int>(jsonRes['mallCouponTotalQuantity'])!,
      onlySceneAuth: asT<bool>(jsonRes['onlySceneAuth'])!,
      salesTip: asT<String>(jsonRes['salesTip'])!,
      activityTags: activityTags!,
      goodsName: asT<String>(jsonRes['goodsName'])!,
      merchantType: asT<int>(jsonRes['merchantType'])!,
      mallCouponDiscountPct: asT<int>(jsonRes['mallCouponDiscountPct'])!,
      goodsDesc: asT<String>(jsonRes['goodsDesc'])!,
      mallCouponMinOrderAmount: asT<int>(jsonRes['mallCouponMinOrderAmount'])!,
      serviceTags: serviceTags!,
      mallCouponStartTime: asT<String>(jsonRes['mallCouponStartTime'])!,
      planType: asT<int>(jsonRes['planType'])!,
      optName: asT<String>(jsonRes['optName'])!,
      minGroupPrice: asT<double>(jsonRes['minGroupPrice'])!,
      mallCouponRemainQuantity: asT<int>(jsonRes['mallCouponRemainQuantity'])!,
      zsDuoId: asT<int>(jsonRes['zsDuoId'])!,
      goodsSign: asT<String>(jsonRes['goodsSign'])!,
      shareRate: asT<int>(jsonRes['shareRate'])!,
      couponEndTime: asT<String>(jsonRes['couponEndTime'])!,
      couponDiscount: asT<int>(jsonRes['couponDiscount'])!,
      minNormalPrice: asT<double>(jsonRes['minNormalPrice'])!,
      mallCouponId: asT<int>(jsonRes['mallCouponId'] ?? 0)!,
      goodsImageUrl: asT<String>(jsonRes['goodsImageUrl'])!,
      servTxt: asT<String>(jsonRes['servTxt'])!,
      promotionRate: asT<double>(jsonRes['promotionRate'])!,
      catIds: catIds!,
      optId: asT<int>(jsonRes['optId'])!,
    );
  }

  String mallName;
  String mallCouponEndTime;
  int mallCps;
  List<String> unifiedTags;
  int mallId;
  bool hasMallCoupon;
  int couponTotalQuantity;
  double predictPromotionRate;
  List<int> optIds;
  bool hasCoupon;
  int mallCouponMaxDiscountAmount;
  String descTxt;
  String searchId;
  int couponRemainQuantity;
  String couponStartTime;
  int couponMinOrderAmount;
  String goodsThumbnailUrl;
  String lgstTxt;
  int mallCouponTotalQuantity;
  bool onlySceneAuth;
  String salesTip;
  List<int> activityTags;
  String goodsName;
  int merchantType;
  int mallCouponDiscountPct;
  String goodsDesc;
  int mallCouponMinOrderAmount;
  List<int> serviceTags;
  String mallCouponStartTime;
  int planType;
  String optName;
  double minGroupPrice;
  int mallCouponRemainQuantity;
  int zsDuoId;
  String goodsSign;
  int shareRate;
  String couponEndTime;
  int couponDiscount;
  double minNormalPrice;
  int mallCouponId;
  String goodsImageUrl;
  String servTxt;
  double promotionRate;
  List<int> catIds;
  int optId;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'mallName': mallName,
        'mallCouponEndTime': mallCouponEndTime,
        'mallCps': mallCps,
        'unifiedTags': unifiedTags,
        'mallId': mallId,
        'hasMallCoupon': hasMallCoupon,
        'couponTotalQuantity': couponTotalQuantity,
        'predictPromotionRate': predictPromotionRate,
        'optIds': optIds,
        'hasCoupon': hasCoupon,
        'mallCouponMaxDiscountAmount': mallCouponMaxDiscountAmount,
        'descTxt': descTxt,
        'searchId': searchId,
        'couponRemainQuantity': couponRemainQuantity,
        'couponStartTime': couponStartTime,
        'couponMinOrderAmount': couponMinOrderAmount,
        'goodsThumbnailUrl': goodsThumbnailUrl,
        'lgstTxt': lgstTxt,
        'mallCouponTotalQuantity': mallCouponTotalQuantity,
        'onlySceneAuth': onlySceneAuth,
        'salesTip': salesTip,
        'activityTags': activityTags,
        'goodsName': goodsName,
        'merchantType': merchantType,
        'mallCouponDiscountPct': mallCouponDiscountPct,
        'goodsDesc': goodsDesc,
        'mallCouponMinOrderAmount': mallCouponMinOrderAmount,
        'serviceTags': serviceTags,
        'mallCouponStartTime': mallCouponStartTime,
        'planType': planType,
        'optName': optName,
        'minGroupPrice': minGroupPrice,
        'mallCouponRemainQuantity': mallCouponRemainQuantity,
        'zsDuoId': zsDuoId,
        'goodsSign': goodsSign,
        'shareRate': shareRate,
        'couponEndTime': couponEndTime,
        'couponDiscount': couponDiscount,
        'minNormalPrice': minNormalPrice,
        'mallCouponId': mallCouponId,
        'goodsImageUrl': goodsImageUrl,
        'servTxt': servTxt,
        'promotionRate': promotionRate,
        'catIds': catIds,
        'optId': optId,
      };

  PddSearchItemModel clone() => PddSearchItemModel.fromJson(asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}
