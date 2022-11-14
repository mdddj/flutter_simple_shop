// Dart imports:
import 'dart:convert' show json;

import 'package:dataoke_sdk/dataoke_sdk.dart';




class BrandDetailModel {
  BrandDetailModel({
    this.list,
    this.totalNum,
    this.pageId,
    this.brandId,
    this.brandName,
    this.brandLogo,
    this.brandDesc,
    this.brandFeatures,
    this.sales,
    this.fansNum,
  });

  factory BrandDetailModel.fromJson(Map<String, dynamic> jsonRes) {
    final list =
        jsonRes['list'] is List ? <BrandDetailGoodsList>[] : null;
    if (list != null) {
      for (final dynamic item in jsonRes['list']) {
        if (item != null) {
          list.add(BrandDetailGoodsList.fromJson(asT<Map<String, dynamic>>(item)!));
        }
      }
    }

    return BrandDetailModel(
      list: list,
      totalNum: asT<int>(jsonRes['totalNum']),
      pageId: asT<String>(jsonRes['pageId']),
      brandId: asT<int>(jsonRes['brandId']),
      brandName: asT<String>(jsonRes['brandName']),
      brandLogo: asT<String>(jsonRes['brandLogo']),
      brandDesc: asT<String>(jsonRes['brandDesc']),
      brandFeatures: asT<String>(jsonRes['brandFeatures']),
      sales: asT<int>(jsonRes['sales']),
      fansNum: asT<int>(jsonRes['fansNum']),
    );
  }

  List<BrandDetailGoodsList>? list;
  int? totalNum;
  String? pageId;
  int? brandId;
  String? brandName;
  String? brandLogo;
  String? brandDesc;
  String? brandFeatures;
  int? sales;
  int? fansNum;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'list': list,
        'totalNum': totalNum,
        'pageId': pageId,
        'brandId': brandId,
        'brandName': brandName,
        'brandLogo': brandLogo,
        'brandDesc': brandDesc,
        'brandFeatures': brandFeatures,
        'sales': sales,
        'fansNum': fansNum,
      };

  @override
  String toString() {
    return json.encode(this);
  }
}

class BrandDetailGoodsList {
  BrandDetailGoodsList({
    this.id,
    this.goodsId,
    this.cid,
    this.brandId,
    this.title,
    this.desc,
    this.specialText,
    this.commissionType,
    this.commissionRate,
    this.activityType,
    this.dailySales,
    this.monthSales,
    this.mainPic,
    this.marketingMainPic,
    this.video,
    this.originPrice,
    this.actualPrice,
    this.couponId,
    this.couponPrice,
    this.couponLink,
    this.couponConditions,
    this.couponReceiveNum,
    this.couponTotalNum,
    this.couponEndTime,
    this.couponStartTime,
    this.discount,
    this.freeshipRemoteDistrct,
    this.dTitle,
  });

  factory BrandDetailGoodsList.fromJson(Map<String, dynamic> jsonRes) {
    final specialText = jsonRes['specialText'] is List ? <Object?>[] : null;
    if (specialText != null) {
      for (final dynamic item in jsonRes['specialText']) {
        if (item != null) {
          specialText.add(asT<Object>(item));
        }
      }
    }

    return BrandDetailGoodsList(
      id: asT<int>(jsonRes['id']),
      goodsId: asT<String>(jsonRes['goodsId']),
      cid: asT<int>(jsonRes['cid']),
      brandId: asT<String>(jsonRes['brandId']),
      title: asT<String>(jsonRes['title']),
      desc: asT<String>(jsonRes['desc']),
      specialText: specialText,
      commissionType: asT<int>(jsonRes['commissionType']),
      commissionRate: asT<double>(jsonRes['commissionRate']),
      activityType: asT<int>(jsonRes['activityType']),
      dailySales: asT<int>(jsonRes['dailySales']),
      monthSales: asT<int>(jsonRes['monthSales']),
      mainPic: asT<String>(jsonRes['mainPic']),
      marketingMainPic: asT<String>(jsonRes['marketingMainPic']),
      video: asT<String>(jsonRes['video']),
      originPrice: asT<double>(jsonRes['originPrice']),
      actualPrice: asT<double>(jsonRes['actualPrice']),
      couponId: asT<String>(jsonRes['couponId']),
      couponPrice: asT<int>(jsonRes['couponPrice']),
      couponLink: asT<String>(jsonRes['couponLink']),
      couponConditions: asT<String>(jsonRes['couponConditions']),
      couponReceiveNum: asT<int>(jsonRes['couponReceiveNum']),
      couponTotalNum: asT<int>(jsonRes['couponTotalNum']),
      couponEndTime: asT<String>(jsonRes['couponEndTime']),
      couponStartTime: asT<String>(jsonRes['couponStartTime']),
      discount: asT<double>(jsonRes['discount']),
      freeshipRemoteDistrct: asT<int>(jsonRes['freeshipRemoteDistrct']),
      dTitle: asT<String>(jsonRes['dTitle']),
    );
  }

  int? id;
  String? goodsId;
  int? cid;
  String? brandId;
  String? title;
  String? desc;
  List<Object?>? specialText;
  int? commissionType;
  double? commissionRate;
  int? activityType;
  int? dailySales;
  int? monthSales;
  String? mainPic;
  String? marketingMainPic;
  String? video;
  double? originPrice;
  double? actualPrice;
  String? couponId;
  int? couponPrice;
  String? couponLink;
  String? couponConditions;
  int? couponReceiveNum;
  int? couponTotalNum;
  String? couponEndTime;
  String? couponStartTime;
  double? discount;
  int? freeshipRemoteDistrct;
  String? dTitle;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'goodsId': goodsId,
        'cid': cid,
        'brandId': brandId,
        'title': title,
        'desc': desc,
        'specialText': specialText,
        'commissionType': commissionType,
        'commissionRate': commissionRate,
        'activityType': activityType,
        'dailySales': dailySales,
        'monthSales': monthSales,
        'mainPic': mainPic,
        'marketingMainPic': marketingMainPic,
        'video': video,
        'originPrice': originPrice,
        'actualPrice': actualPrice,
        'couponId': couponId,
        'couponPrice': couponPrice,
        'couponLink': couponLink,
        'couponConditions': couponConditions,
        'couponReceiveNum': couponReceiveNum,
        'couponTotalNum': couponTotalNum,
        'couponEndTime': couponEndTime,
        'couponStartTime': couponStartTime,
        'discount': discount,
        'freeshipRemoteDistrct': freeshipRemoteDistrct,
        'dTitle': dTitle,
      };

  @override
  String toString() {
    return json.encode(this);
  }
}
