// Dart imports:
import 'dart:convert';

import 'package:dataoke_sdk/model/ff_convert_convert_util.dart';


List<PddGoods> pddCovertList(List<dynamic> list)=> List<PddGoods>.from(list.map(PddGoods.fromJson)).toList();

class PddGoods {
  PddGoods({
    required this.activityPromotionRate,
    required this.activityTags,
    required this.catIds,
    required this.couponDiscount,
    required this.couponEndTime,
    required this.couponMinOrderAmount,
    required this.couponRemainQuantity,
    required this.couponStartTime,
    required this.couponTotalQuantity,
    required this.descTxt,
    required this.goodsDesc,
    required this.goodsImageUrl,
    required this.goodsName,
    required this.goodsSign,
    required this.goodsThumbnailUrl,
    required this.hasCoupon,
    required this.lgstTxt,
    required this.mallId,
    required this.mallName,
    required this.merchantType,
    required this.minGroupPrice,
    required this.minNormalPrice,
    required this.optId,
    required this.optIds,
    required this.optName,
    required this.predictPromotionRate,
    required this.promotionRate,
    required this.realtimeSalesTip,
    required this.salesTip,
    required this.searchId,
    required this.servTxt,
    required this.shareRate,
    required this.subsidyAmount,
    required this.subsidyDuoAmountTenMillion,
    required this.unifiedTags,
  });

  factory PddGoods.fromJson(dynamic jsonRes) {
    final activityTags = jsonRes['activity_tags'] is List ? <int>[] : null;
    if (activityTags != null) {
      for (final dynamic item in jsonRes['activity_tags']!) {
        if (item != null) {
          tryCatch(() {
            activityTags.add(asT<int>(item)!);
          });
        }
      }
    }

    final catIds = jsonRes['cat_ids'] is List ? <int>[] : null;
    if (catIds != null) {
      for (final dynamic item in jsonRes['cat_ids']!) {
        if (item != null) {
          tryCatch(() {
            catIds.add(asT<int>(item)!);
          });
        }
      }
    }

    final optIds = jsonRes['opt_ids'] is List ? <int>[] : null;
    if (optIds != null) {
      for (final dynamic item in jsonRes['opt_ids']!) {
        if (item != null) {
          tryCatch(() {
            optIds.add(asT<int>(item)!);
          });
        }
      }
    }

    final unifiedTags = jsonRes['unified_tags'] is List ? <String>[] : null;
    if (unifiedTags != null) {
      for (final dynamic item in jsonRes['unified_tags']!) {
        if (item != null) {
          tryCatch(() {
            unifiedTags.add(asT<String>(item)!);
          });
        }
      }
    }
    return PddGoods(
      activityPromotionRate: asT<int>(jsonRes['activity_promotion_rate']??0)!,
      activityTags: activityTags!,
      catIds: catIds!,
      couponDiscount: asT<int>(jsonRes['coupon_discount'])!,
      couponEndTime: asT<int>(jsonRes['coupon_end_time'])!,
      couponMinOrderAmount: asT<int>(jsonRes['coupon_min_order_amount'])!,
      couponRemainQuantity: asT<int>(jsonRes['coupon_remain_quantity'])!,
      couponStartTime: asT<int>(jsonRes['coupon_start_time'])!,
      couponTotalQuantity: asT<int>(jsonRes['coupon_total_quantity'])!,
      descTxt: asT<String>(jsonRes['desc_txt'])!,
      goodsDesc: asT<String>(jsonRes['goods_desc'])!,
      goodsImageUrl: asT<String>(jsonRes['goods_image_url'])!,
      goodsName: asT<String>(jsonRes['goods_name'])!,
      goodsSign: asT<String>(jsonRes['goods_sign'])!,
      goodsThumbnailUrl: asT<String>(jsonRes['goods_thumbnail_url'])!,
      hasCoupon: asT<bool>(jsonRes['has_coupon'])!,
      lgstTxt: asT<String>(jsonRes['lgst_txt'])!,
      mallId: asT<int>(jsonRes['mall_id'])!,
      mallName: asT<String>(jsonRes['mall_name'])!,
      merchantType: asT<String>(jsonRes['merchant_type'])!,
      minGroupPrice: asT<int>(jsonRes['min_group_price'])!,
      minNormalPrice: asT<int>(jsonRes['min_normal_price'])!,
      optId: asT<String>(jsonRes['opt_id'])!,
      optIds: optIds!,
      optName: asT<String>(jsonRes['opt_name'])!,
      predictPromotionRate: asT<int>(jsonRes['predict_promotion_rate'])!,
      promotionRate: asT<int>(jsonRes['promotion_rate'])!,
      realtimeSalesTip: asT<String>(jsonRes['realtime_sales_tip'])!,
      salesTip: asT<String>(jsonRes['sales_tip'])!,
      searchId: asT<String>(jsonRes['search_id'])!,
      servTxt: asT<String>(jsonRes['serv_txt'])!,
      shareRate: asT<int>(jsonRes['share_rate'])!,
      subsidyAmount: asT<int>(jsonRes['subsidy_amount']??0)!,
      subsidyDuoAmountTenMillion: asT<int>(jsonRes['subsidy_duo_amount_ten_million']??0)!,
      unifiedTags: unifiedTags!,
    );
  }

  int activityPromotionRate;
  List<int> activityTags;
  List<int> catIds;
  int couponDiscount;
  int couponEndTime;
  int couponMinOrderAmount;
  int couponRemainQuantity;
  int couponStartTime;
  int couponTotalQuantity;
  String descTxt;
  String goodsDesc;
  String goodsImageUrl;
  String goodsName;
  String goodsSign;
  String goodsThumbnailUrl;
  bool hasCoupon;
  String lgstTxt;
  int mallId;
  String mallName;
  String merchantType;
  int minGroupPrice;
  int minNormalPrice;
  String optId;
  List<int> optIds;
  String optName;
  int predictPromotionRate;
  int promotionRate;
  String realtimeSalesTip;
  String salesTip;
  String searchId;
  String servTxt;
  int shareRate;
  int subsidyAmount;
  int subsidyDuoAmountTenMillion;
  List<String> unifiedTags;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'activity_promotion_rate': activityPromotionRate,
        'activity_tags': activityTags,
        'cat_ids': catIds,
        'coupon_discount': couponDiscount,
        'coupon_end_time': couponEndTime,
        'coupon_min_order_amount': couponMinOrderAmount,
        'coupon_remain_quantity': couponRemainQuantity,
        'coupon_start_time': couponStartTime,
        'coupon_total_quantity': couponTotalQuantity,
        'desc_txt': descTxt,
        'goods_desc': goodsDesc,
        'goods_image_url': goodsImageUrl,
        'goods_name': goodsName,
        'goods_sign': goodsSign,
        'goods_thumbnail_url': goodsThumbnailUrl,
        'has_coupon': hasCoupon,
        'lgst_txt': lgstTxt,
        'mall_id': mallId,
        'mall_name': mallName,
        'merchant_type': merchantType,
        'min_group_price': minGroupPrice,
        'min_normal_price': minNormalPrice,
        'opt_id': optId,
        'opt_ids': optIds,
        'opt_name': optName,
        'predict_promotion_rate': predictPromotionRate,
        'promotion_rate': promotionRate,
        'realtime_sales_tip': realtimeSalesTip,
        'sales_tip': salesTip,
        'search_id': searchId,
        'serv_txt': servTxt,
        'share_rate': shareRate,
        'subsidy_amount': subsidyAmount,
        'subsidy_duo_amount_ten_million': subsidyDuoAmountTenMillion,
        'unified_tags': unifiedTags,
      };

  PddGoods clone() => PddGoods.fromJson(asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}
