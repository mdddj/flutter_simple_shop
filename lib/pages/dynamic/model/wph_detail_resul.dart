// Dart imports:
import 'dart:convert';

// Project imports:
import '../../../modals/ff_convert_convert_util.dart';

class WeipinhuiDetail {
  WeipinhuiDetail(
      {required this.marketPrice,
      required this.commissionRate,
      required this.goodsId,
      required this.discount,
      required this.categoryName,
      required this.haiTao,
      required this.cat2ndName,
      required this.cat1stName,
      required this.vipPrice,
      required this.commission,
      required this.cat1stId,
      required this.goodsName,
      required this.brandName,
      required this.brandLogoFull,
       this.couponInfo,
      required this.brandStoreSn,
      required this.sellTimeFrom,
      required this.schemeStartTime,
      required this.schemeEndTime,
      required this.sourceType,
      required this.sellTimeTo,
      required this.brandId,
      required this.goodsThumbUrl,
      required this.cat2ndId,
      required this.spuId,
      required this.storeInfo,
      required this.goodsMainPicture,
      required this.destUrl,
      required this.categoryId,
      required this.status,
      required this.goodsDetailPictures});

  factory WeipinhuiDetail.fromJson(Map<String, dynamic> jsonRes) => WeipinhuiDetail(
        marketPrice: asT<String>(jsonRes['marketPrice'])!,
        commissionRate: asT<String>(jsonRes['commissionRate'])!,
        goodsId: asT<String>(jsonRes['goodsId'])!,
        discount: asT<String>(jsonRes['discount'])!,
        categoryName: asT<String>(jsonRes['categoryName'])!,
        haiTao: asT<int>(jsonRes['haiTao'])!,
        cat2ndName: asT<String>(jsonRes['cat2ndName'])!,
        cat1stName: asT<String>(jsonRes['cat1stName'])!,
        vipPrice: asT<String>(jsonRes['vipPrice'])!,
        commission: asT<String>(jsonRes['commission'])!,
        cat1stId: asT<int>(jsonRes['cat1stId'])!,
        goodsName: asT<String>(jsonRes['goodsName'])!,
        brandName: asT<String>(jsonRes['brandName'])!,
        brandLogoFull: asT<String>(jsonRes['brandLogoFull'])!,
        brandStoreSn: asT<String>(jsonRes['brandStoreSn'])!,
        sellTimeFrom: asT<int>(jsonRes['sellTimeFrom'])!,
        schemeStartTime: asT<int>(jsonRes['schemeStartTime'])!,
        schemeEndTime: asT<int>(jsonRes['schemeEndTime'])!,
        sourceType: asT<int>(jsonRes['sourceType'])!,
        sellTimeTo: asT<int>(jsonRes['sellTimeTo'])!,
        brandId: asT<int>(jsonRes['brandId'])!,
        goodsThumbUrl: asT<String>(jsonRes['goodsThumbUrl'])!,
        cat2ndId: asT<int>(jsonRes['cat2ndId'])!,
        spuId: asT<String>(jsonRes['spuId'])!,
        storeInfo: StoreInfo.fromJson(asT<Map<String, dynamic>>(jsonRes['storeInfo'])!),
        goodsMainPicture: asT<String>(jsonRes['goodsMainPicture'])!,
        destUrl: asT<String>(jsonRes['destUrl'])!,
        categoryId: asT<int>(jsonRes['categoryId'])!,
        status: asT<int>(jsonRes['status'])!,
        goodsDetailPictures: List<String>.from((jsonRes['goodsDetailPictures'] as List<dynamic>).map((e) => e.toString())).toList(),
      );

  String marketPrice;
  String commissionRate;
  String goodsId;
  String discount;
  String categoryName;
  int haiTao;
  String cat2ndName;
  String cat1stName;
  String vipPrice;
  String commission;
  int cat1stId;
  String goodsName;
  String brandName;
  String brandLogoFull;
  CouponInfo? couponInfo;
  String brandStoreSn;
  int sellTimeFrom;
  int schemeStartTime;
  int schemeEndTime;
  int sourceType;
  int sellTimeTo;
  int brandId;
  String goodsThumbUrl;
  int cat2ndId;
  String spuId;
  StoreInfo storeInfo;
  String goodsMainPicture;
  String destUrl;
  int categoryId;
  int status;
  List<String> goodsDetailPictures;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'marketPrice': marketPrice,
        'commissionRate': commissionRate,
        'goodsId': goodsId,
        'discount': discount,
        'categoryName': categoryName,
        'haiTao': haiTao,
        'cat2ndName': cat2ndName,
        'cat1stName': cat1stName,
        'vipPrice': vipPrice,
        'commission': commission,
        'cat1stId': cat1stId,
        'goodsName': goodsName,
        'brandName': brandName,
        'brandLogoFull': brandLogoFull,
        'couponInfo': couponInfo,
        'brandStoreSn': brandStoreSn,
        'sellTimeFrom': sellTimeFrom,
        'schemeStartTime': schemeStartTime,
        'schemeEndTime': schemeEndTime,
        'sourceType': sourceType,
        'sellTimeTo': sellTimeTo,
        'brandId': brandId,
        'goodsThumbUrl': goodsThumbUrl,
        'cat2ndId': cat2ndId,
        'spuId': spuId,
        'storeInfo': storeInfo,
        'goodsMainPicture': goodsMainPicture,
        'destUrl': destUrl,
        'categoryId': categoryId,
        'status': status,
      };

  WeipinhuiDetail clone() => WeipinhuiDetail.fromJson(asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}

class CouponInfo {
  CouponInfo({
    required this.useEndTime,
    required this.totalAmount,
    required this.couponName,
    required this.activateEndTime,
    required this.buy,
    required this.useBeginTime,
    required this.couponNo,
    required this.fav,
    required this.activateBeginTime,
    required this.activedAmount,
  });

  factory CouponInfo.fromJson(Map<String, dynamic> jsonRes) => CouponInfo(
        useEndTime: asT<int>(jsonRes['useEndTime'])!,
        totalAmount: asT<int>(jsonRes['totalAmount'])!,
        couponName: asT<String>(jsonRes['couponName'])!,
        activateEndTime: asT<int>(jsonRes['activateEndTime'])!,
        buy: asT<String>(jsonRes['buy'])!,
        useBeginTime: asT<int>(jsonRes['useBeginTime'])!,
        couponNo: asT<String>(jsonRes['couponNo'])!,
        fav: asT<String>(jsonRes['fav'])!,
        activateBeginTime: asT<int>(jsonRes['activateBeginTime'])!,
        activedAmount: asT<int>(jsonRes['activedAmount'])!,
      );

  int useEndTime;
  int totalAmount;
  String couponName;
  int activateEndTime;
  String buy;
  int useBeginTime;
  String couponNo;
  String fav;
  int activateBeginTime;
  int activedAmount;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'useEndTime': useEndTime,
        'totalAmount': totalAmount,
        'couponName': couponName,
        'activateEndTime': activateEndTime,
        'buy': buy,
        'useBeginTime': useBeginTime,
        'couponNo': couponNo,
        'fav': fav,
        'activateBeginTime': activateBeginTime,
        'activedAmount': activedAmount,
      };

  CouponInfo clone() => CouponInfo.fromJson(asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}

class StoreInfo {
  StoreInfo({
    required this.storeName,
    required this.storeId,
  });

  factory StoreInfo.fromJson(Map<String, dynamic> jsonRes) => StoreInfo(
        storeName: asT<String>(jsonRes['storeName'])!,
        storeId: asT<String>(jsonRes['storeId'])!,
      );

  String storeName;
  String storeId;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'storeName': storeName,
        'storeId': storeId,
      };

  StoreInfo clone() => StoreInfo.fromJson(asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}
