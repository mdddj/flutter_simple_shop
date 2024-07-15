import 'dart:convert';

import 'package:dd_js_util/dd_js_util.dart';

class JdProduct {
  JdProduct({
    required this.couponReceiveCount,
    required this.materialUrl,
    required this.actualPrice,
    required this.isFlagship,
    required this.commissionStartTime,
    required this.isFreeShipping,
    required this.shopName,
    required this.originPrice,
    required this.skuName,
    required this.smallImages,
    required this.couponLink,
    required this.couponAmount,
    required this.cid2Name,
    required this.isOwner,
    required this.commissionShare,
    required this.commissionEndTime,
    required this.couponType,
    required this.couponStartTime,
    required this.cid2,
    required this.commission,
    required this.cid3,
    required this.shopId,
    required this.cid1,
    required this.picMain,
    required this.skuId,
    required this.extensionContent,
    required this.cid1Name,
    required this.videoUrlList,
    required this.couponRemainCount,
    required this.comments,
    required this.couponConditions,
    required this.isFreeFreightRisk,
    required this.couponUseStartTime,
    required this.inOrderCount30Days,
    required this.couponEndTime,
    required this.couponTotalCount,
    required this.goodsCommentShare,
    required this.couponUserEndTime,
    required this.detailImages,
    required this.isSeckill,
    required this.promotionLabelList,
    required this.cid3Name,
    required this.productIntro,
  });

  factory JdProduct.fromJson(dynamic jsonRes) {
    final List<String>? smallImages =
        jsonRes['smallImages'] is List ? <String>[] : null;
    if (smallImages != null) {
      for (final dynamic item in jsonRes['smallImages']!) {
        if (item != null) {
          tryCatch(() {
            smallImages.add(asT<String>(item)!);
          });
        }
      }
    }

    final List<Object>? videoUrlList =
        jsonRes['videoUrlList'] is List ? <Object>[] : null;
    if (videoUrlList != null) {
      for (final dynamic item in jsonRes['videoUrlList']!) {
        if (item != null) {
          tryCatch(() {
            videoUrlList.add(asT<Object>(item)!);
          });
        }
      }
    }

    final List<Object>? detailImages =
        jsonRes['detailImages'] is List ? <Object>[] : null;
    if (detailImages != null) {
      for (final dynamic item in jsonRes['detailImages']!) {
        if (item != null) {
          tryCatch(() {
            detailImages.add(asT<Object>(item)!);
          });
        }
      }
    }

    final List<Object>? promotionLabelList =
        jsonRes['promotionLabelList'] is List ? <Object>[] : null;
    if (promotionLabelList != null) {
      for (final dynamic item in jsonRes['promotionLabelList']!) {
        if (item != null) {
          tryCatch(() {
            promotionLabelList.add(asT<Object>(item)!);
          });
        }
      }
    }
    return JdProduct(
      couponReceiveCount: asT<int>(jsonRes['couponReceiveCount'])!,
      materialUrl: asT<String>(jsonRes['materialUrl'])!,
      actualPrice: asT<double>(jsonRes['actualPrice'])!,
      isFlagship: asT<int>(jsonRes['isFlagship'])!,
      commissionStartTime: asT<String>(jsonRes['commissionStartTime'])!,
      isFreeShipping: asT<int>(jsonRes['isFreeShipping'])!,
      shopName: asT<String>(jsonRes['shopName'])!,
      originPrice: asT<double>(jsonRes['originPrice'])!,
      skuName: asT<String>(jsonRes['skuName'])!,
      smallImages: smallImages!,
      couponLink: asT<String>(jsonRes['couponLink'])!,
      couponAmount: asT<int>(jsonRes['couponAmount'])!,
      cid2Name: asT<String>(jsonRes['cid2Name'])!,
      isOwner: asT<int>(jsonRes['isOwner'])!,
      commissionShare: asT<double>(jsonRes['commissionShare'])!,
      commissionEndTime: asT<String>(jsonRes['commissionEndTime'])!,
      couponType: asT<int>(jsonRes['couponType'])!,
      couponStartTime: asT<String>(jsonRes['couponStartTime'])!,
      cid2: asT<int>(jsonRes['cid2'])!,
      commission: asT<double>(jsonRes['commission'])!,
      cid3: asT<int>(jsonRes['cid3'])!,
      shopId: asT<int>(jsonRes['shopId'])!,
      cid1: asT<int>(jsonRes['cid1'])!,
      picMain: asT<String>(jsonRes['picMain'])!,
      skuId: asT<int>(jsonRes['skuId'])!,
      extensionContent: asT<String>(jsonRes['extensionContent'])!,
      cid1Name: asT<String>(jsonRes['cid1Name'])!,
      videoUrlList: videoUrlList!,
      couponRemainCount: asT<int>(jsonRes['couponRemainCount'])!,
      comments: asT<int>(jsonRes['comments'])!,
      couponConditions: asT<String>(jsonRes['couponConditions'])!,
      isFreeFreightRisk: asT<int>(jsonRes['isFreeFreightRisk'])!,
      couponUseStartTime: asT<String>(jsonRes['couponUseStartTime'])!,
      inOrderCount30Days: asT<int>(jsonRes['inOrderCount30Days'])!,
      couponEndTime: asT<String>(jsonRes['couponEndTime'])!,
      couponTotalCount: asT<int>(jsonRes['couponTotalCount'])!,
      goodsCommentShare: asT<double>(jsonRes['goodsCommentShare'])!,
      couponUserEndTime: asT<String>(jsonRes['couponUserEndTime'])!,
      detailImages: detailImages!,
      isSeckill: asT<int>(jsonRes['isSeckill'])!,
      promotionLabelList: promotionLabelList!,
      cid3Name: asT<String>(jsonRes['cid3Name'])!,
      productIntro: asT<String>(jsonRes['productIntro'])!,
    );
  }

  int couponReceiveCount;
  String materialUrl;
  double actualPrice;
  int isFlagship;
  String commissionStartTime;
  int isFreeShipping;
  String shopName;
  double originPrice;
  String skuName;
  List<String> smallImages;
  String couponLink;
  int couponAmount;
  String cid2Name;
  int isOwner;
  double commissionShare;
  String commissionEndTime;
  int couponType;
  String couponStartTime;
  int cid2;
  double commission;
  int cid3;
  int shopId;
  int cid1;
  String picMain;
  int skuId;
  String extensionContent;
  String cid1Name;
  List<Object> videoUrlList;
  int couponRemainCount;
  int comments;
  String couponConditions;
  int isFreeFreightRisk;
  String couponUseStartTime;
  int inOrderCount30Days;
  String couponEndTime;
  int couponTotalCount;
  double goodsCommentShare;
  String couponUserEndTime;
  List<Object> detailImages;
  int isSeckill;
  List<Object> promotionLabelList;
  String cid3Name;
  String productIntro;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'couponReceiveCount': couponReceiveCount,
        'materialUrl': materialUrl,
        'actualPrice': actualPrice,
        'isFlagship': isFlagship,
        'commissionStartTime': commissionStartTime,
        'isFreeShipping': isFreeShipping,
        'shopName': shopName,
        'originPrice': originPrice,
        'skuName': skuName,
        'smallImages': smallImages,
        'couponLink': couponLink,
        'couponAmount': couponAmount,
        'cid2Name': cid2Name,
        'isOwner': isOwner,
        'commissionShare': commissionShare,
        'commissionEndTime': commissionEndTime,
        'couponType': couponType,
        'couponStartTime': couponStartTime,
        'cid2': cid2,
        'commission': commission,
        'cid3': cid3,
        'shopId': shopId,
        'cid1': cid1,
        'picMain': picMain,
        'skuId': skuId,
        'extensionContent': extensionContent,
        'cid1Name': cid1Name,
        'videoUrlList': videoUrlList,
        'couponRemainCount': couponRemainCount,
        'comments': comments,
        'couponConditions': couponConditions,
        'isFreeFreightRisk': isFreeFreightRisk,
        'couponUseStartTime': couponUseStartTime,
        'inOrderCount30Days': inOrderCount30Days,
        'couponEndTime': couponEndTime,
        'couponTotalCount': couponTotalCount,
        'goodsCommentShare': goodsCommentShare,
        'couponUserEndTime': couponUserEndTime,
        'detailImages': detailImages,
        'isSeckill': isSeckill,
        'promotionLabelList': promotionLabelList,
        'cid3Name': cid3Name,
        'productIntro': productIntro,
      };

  JdProduct clone() => JdProduct.fromJson(
      asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}
