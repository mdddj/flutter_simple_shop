part of common;

List<JdNativeProduct> jdNativeProductCovert(String resp) {
  return List<JdNativeProduct>.from(
          (jsonDecode(resp) as List<dynamic>).map(JdNativeProduct.fromJson))
      .toList();
}

class JdNativeProduct {
  JdNativeProduct({
    required this.categoryInfo,
    required this.comments,
    required this.commissionInfo,
    required this.couponInfo,
    required this.goodCommentsShare,
    required this.imageInfo,
    required this.inOrderCount30Days,
    required this.materialUrl,
    required this.priceInfo,
    required this.shopInfo,
    required this.skuId,
    required this.skuName,
    required this.isHot,
    required this.spuid,
    required this.brandCode,
    required this.brandName,
    required this.owner,
    required this.pinGouInfo,
    required this.resourceInfo,
    required this.inOrderCount30DaysSku,
    this.seckillInfo,
    this.jxFlags,
    this.videoInfo,
    this.documentInfo,
    this.bookInfo,
    required this.forbidTypes,
    required this.deliveryType,
    required this.skuLabelInfo,
    this.promotionLabelInfoList,
    this.secondPriceInfoList,
    this.preSaleInfo,
    this.reserveInfo,
  });

  factory JdNativeProduct.fromJson(dynamic e) {
    final jsonRes = e as Map<String, dynamic>;
    final List<int>? forbidTypes =
        jsonRes['forbidTypes'] is List ? <int>[] : null;
    if (forbidTypes != null) {
      for (final dynamic item in jsonRes['forbidTypes']!) {
        if (item != null) {
          forbidTypes.add(asT<int>(item)!);
        }
      }
    }
    return JdNativeProduct(
      categoryInfo: CategoryInfo.fromJson(
          asT<Map<String, dynamic>>(jsonRes['categoryInfo'])!),
      comments: asT<int>(jsonRes['comments'])!,
      commissionInfo: jsonRes['commissionInfo'] != null
          ? CommissionInfo.fromJson(
              asT<Map<String, dynamic>>(jsonRes['commissionInfo'])!)
          : null,
      couponInfo: JdCouponInfo.fromJson(
          asT<Map<String, dynamic>>(jsonRes['couponInfo'])!),
      goodCommentsShare: asT<double>(jsonRes['goodCommentsShare'])!,
      imageInfo:
          ImageInfo.fromJson(asT<Map<String, dynamic>>(jsonRes['imageInfo'])!),
      inOrderCount30Days: asT<int>(jsonRes['inOrderCount30Days'])!,
      materialUrl: asT<String>(jsonRes['materialUrl'])!,
      priceInfo:
          PriceInfo.fromJson(asT<Map<String, dynamic>>(jsonRes['priceInfo'])!),
      shopInfo:
          JdShopInfo.fromJson(asT<Map<String, dynamic>>(jsonRes['shopInfo'])!),
      skuId: asT<int>(jsonRes['skuId'])!,
      skuName: asT<String>(jsonRes['skuName'])!,
      isHot: asT<int>(jsonRes['isHot'])!,
      spuid: asT<int>(jsonRes['spuid'])!,
      brandCode: asT<String>(jsonRes['brandCode'])!,
      brandName: asT<String>(jsonRes['brandName'])!,
      owner: asT<String>(jsonRes['owner'])!,
      pinGouInfo: PinGouInfo.fromJson(
          asT<Map<String, dynamic>>(jsonRes['pinGouInfo'])!),
      resourceInfo: ResourceInfo.fromJson(
          asT<Map<String, dynamic>>(jsonRes['resourceInfo'])!),
      inOrderCount30DaysSku: asT<int>(jsonRes['inOrderCount30DaysSku'])!,
      seckillInfo: asT<Object?>(jsonRes['seckillInfo']),
      jxFlags: asT<Object?>(jsonRes['jxFlags']),
      videoInfo: asT<Object?>(jsonRes['videoInfo']),
      documentInfo: asT<Object?>(jsonRes['documentInfo']),
      bookInfo: asT<Object?>(jsonRes['bookInfo']),
      forbidTypes: forbidTypes!,
      deliveryType: asT<int>(jsonRes['deliveryType'])!,
      skuLabelInfo: SkuLabelInfo.fromJson(
          asT<Map<String, dynamic>>(jsonRes['skuLabelInfo'])!),
      promotionLabelInfoList: asT<Object?>(jsonRes['promotionLabelInfoList']),
      secondPriceInfoList: asT<Object?>(jsonRes['secondPriceInfoList']),
      preSaleInfo: asT<Object?>(jsonRes['preSaleInfo']),
      reserveInfo: asT<Object?>(jsonRes['reserveInfo']),
    );
  }

  CategoryInfo categoryInfo;
  int comments;
  CommissionInfo? commissionInfo;
  JdCouponInfo couponInfo;
  double goodCommentsShare;
  ImageInfo imageInfo;
  int inOrderCount30Days;
  String materialUrl;
  PriceInfo priceInfo;
  JdShopInfo shopInfo;
  int skuId;
  String skuName;
  int isHot;
  int spuid;
  String brandCode;
  String brandName;
  String owner;
  PinGouInfo pinGouInfo;
  ResourceInfo resourceInfo;
  int inOrderCount30DaysSku;
  Object? seckillInfo;
  Object? jxFlags;
  Object? videoInfo;
  Object? documentInfo;
  Object? bookInfo;
  List<int> forbidTypes;
  int deliveryType;
  SkuLabelInfo skuLabelInfo;
  Object? promotionLabelInfoList;
  Object? secondPriceInfoList;
  Object? preSaleInfo;
  Object? reserveInfo;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'categoryInfo': categoryInfo,
        'comments': comments,
        'commissionInfo': commissionInfo,
        'couponInfo': couponInfo,
        'goodCommentsShare': goodCommentsShare,
        'imageInfo': imageInfo,
        'inOrderCount30Days': inOrderCount30Days,
        'materialUrl': materialUrl,
        'priceInfo': priceInfo,
        'shopInfo': shopInfo,
        'skuId': skuId,
        'skuName': skuName,
        'isHot': isHot,
        'spuid': spuid,
        'brandCode': brandCode,
        'brandName': brandName,
        'owner': owner,
        'pinGouInfo': pinGouInfo,
        'resourceInfo': resourceInfo,
        'inOrderCount30DaysSku': inOrderCount30DaysSku,
        'seckillInfo': seckillInfo,
        'jxFlags': jxFlags,
        'videoInfo': videoInfo,
        'documentInfo': documentInfo,
        'bookInfo': bookInfo,
        'forbidTypes': forbidTypes,
        'deliveryType': deliveryType,
        'skuLabelInfo': skuLabelInfo,
        'promotionLabelInfoList': promotionLabelInfoList,
        'secondPriceInfoList': secondPriceInfoList,
        'preSaleInfo': preSaleInfo,
        'reserveInfo': reserveInfo,
      };

  JdNativeProduct clone() => JdNativeProduct.fromJson(
      asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}

class CategoryInfo {
  CategoryInfo({
    required this.cid1,
    required this.cid1Name,
    required this.cid2,
    required this.cid2Name,
    required this.cid3,
    required this.cid3Name,
  });

  factory CategoryInfo.fromJson(Map<String, dynamic> jsonRes) => CategoryInfo(
        cid1: asT<int>(jsonRes['cid1'])!,
        cid1Name: asT<String>(jsonRes['cid1Name'])!,
        cid2: asT<int>(jsonRes['cid2'])!,
        cid2Name: asT<String>(jsonRes['cid2Name'])!,
        cid3: asT<int>(jsonRes['cid3'])!,
        cid3Name: asT<String>(jsonRes['cid3Name'])!,
      );

  int cid1;
  String cid1Name;
  int cid2;
  String cid2Name;
  int cid3;
  String cid3Name;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'cid1': cid1,
        'cid1Name': cid1Name,
        'cid2': cid2,
        'cid2Name': cid2Name,
        'cid3': cid3,
        'cid3Name': cid3Name,
      };

  CategoryInfo clone() => CategoryInfo.fromJson(
      asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}

class CommissionInfo {
  CommissionInfo({
    required this.commission,
    required this.commissionShare,
    required this.couponCommission,
    required this.plusCommissionShare,
    required this.isLock,
    required this.startTime,
    required this.endTime,
  });

  factory CommissionInfo.fromJson(Map<String, dynamic> jsonRes) =>
      CommissionInfo(
        commission: asT<double>(jsonRes['commission'])!,
        commissionShare: asT<double>(jsonRes['commissionShare'])!,
        couponCommission: asT<double>(jsonRes['couponCommission'])!,
        plusCommissionShare: asT<double>(jsonRes['plusCommissionShare'])!,
        isLock: asT<int>(jsonRes['isLock'])!,
        startTime: asT<int>(jsonRes['startTime'])!,
        endTime: asT<int>(jsonRes['endTime'])!,
      );

  double commission;
  double commissionShare;
  double couponCommission;
  double plusCommissionShare;
  int isLock;
  int startTime;
  int endTime;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'commission': commission,
        'commissionShare': commissionShare,
        'couponCommission': couponCommission,
        'plusCommissionShare': plusCommissionShare,
        'isLock': isLock,
        'startTime': startTime,
        'endTime': endTime,
      };

  CommissionInfo clone() => CommissionInfo.fromJson(
      asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}

class JdCouponInfo {
  JdCouponInfo({
    required this.couponList,
  });

  factory JdCouponInfo.fromJson(Map<String, dynamic> jsonRes) {
    final List<CouponList>? couponList =
        jsonRes['couponList'] is List ? <CouponList>[] : null;
    if (couponList != null) {
      for (final dynamic item in jsonRes['couponList']!) {
        if (item != null) {
          couponList.add(CouponList.fromJson(asT<Map<String, dynamic>>(item)!));
        }
      }
    }
    return JdCouponInfo(
      couponList: couponList!,
    );
  }

  List<CouponList> couponList;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'couponList': couponList,
      };

  JdCouponInfo clone() => JdCouponInfo.fromJson(
      asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}

class CouponList {
  CouponList({
    required this.bindType,
    required this.discount,
    required this.link,
    required this.platformType,
    required this.quota,
    required this.getStartTime,
    required this.getEndTime,
    required this.useStartTime,
    required this.useEndTime,
    required this.isBest,
    required this.hotValue,
    this.isInputCoupon,
  });

  factory CouponList.fromJson(Map<String, dynamic> jsonRes) => CouponList(
        bindType: asT<int>(jsonRes['bindType'])!,
        discount: asT<double>(jsonRes['discount'])!,
        link: asT<String>(jsonRes['link'])!,
        platformType: asT<int>(jsonRes['platformType'])!,
        quota: asT<double>(jsonRes['quota'])!,
        getStartTime: asT<int>(jsonRes['getStartTime'])!,
        getEndTime: asT<int>(jsonRes['getEndTime'])!,
        useStartTime: asT<int>(jsonRes['useStartTime'])!,
        useEndTime: asT<int>(jsonRes['useEndTime'])!,
        isBest: asT<int>(jsonRes['isBest'])!,
        hotValue: asT<int>(jsonRes['hotValue'] ?? -1)!,
        isInputCoupon: asT<Object?>(jsonRes['isInputCoupon']),
      );

  int bindType;
  double discount;
  String link;
  int platformType;
  double quota;
  int getStartTime;
  int getEndTime;
  int useStartTime;
  int useEndTime;
  int isBest;
  int hotValue;
  Object? isInputCoupon;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'bindType': bindType,
        'discount': discount,
        'link': link,
        'platformType': platformType,
        'quota': quota,
        'getStartTime': getStartTime,
        'getEndTime': getEndTime,
        'useStartTime': useStartTime,
        'useEndTime': useEndTime,
        'isBest': isBest,
        'hotValue': hotValue,
        'isInputCoupon': isInputCoupon,
      };

  CouponList clone() => CouponList.fromJson(
      asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}

class ImageInfo {
  ImageInfo({
    required this.imageList,
    required this.whiteImage,
  });

  factory ImageInfo.fromJson(Map<String, dynamic> jsonRes) {
    final List<ImageList>? imageList =
        jsonRes['imageList'] is List ? <ImageList>[] : null;
    if (imageList != null) {
      for (final dynamic item in jsonRes['imageList']!) {
        if (item != null) {
          imageList.add(ImageList.fromJson(asT<Map<String, dynamic>>(item)!));
        }
      }
    }
    return ImageInfo(
      imageList: imageList!,
      whiteImage: asT<String>(jsonRes['whiteImage'] ?? '')!,
    );
  }

  List<ImageList> imageList;
  String whiteImage;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'imageList': imageList,
        'whiteImage': whiteImage,
      };

  ImageInfo clone() => ImageInfo.fromJson(
      asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}

class ImageList {
  ImageList({
    required this.url,
  });

  factory ImageList.fromJson(Map<String, dynamic> jsonRes) => ImageList(
        url: asT<String>(jsonRes['url'])!,
      );

  String url;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
      };

  ImageList clone() => ImageList.fromJson(
      asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}

class PriceInfo {
  PriceInfo({
    required this.price,
    required this.lowestPrice,
    required this.lowestPriceType,
    required this.lowestCouponPrice,
    this.historyPriceDay,
  });

  factory PriceInfo.fromJson(Map<String, dynamic> jsonRes) => PriceInfo(
        price: asT<double>(jsonRes['price'])!,
        lowestPrice: asT<double>(jsonRes['lowestPrice'])!,
        lowestPriceType: asT<int>(jsonRes['lowestPriceType'])!,
        lowestCouponPrice: asT<double>(jsonRes['lowestCouponPrice'])!,
        historyPriceDay: asT<Object?>(jsonRes['historyPriceDay']),
      );

  double price;
  double lowestPrice;
  int lowestPriceType;
  double lowestCouponPrice;
  Object? historyPriceDay;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'price': price,
        'lowestPrice': lowestPrice,
        'lowestPriceType': lowestPriceType,
        'lowestCouponPrice': lowestCouponPrice,
        'historyPriceDay': historyPriceDay,
      };

  PriceInfo clone() => PriceInfo.fromJson(
      asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}

class JdShopInfo {
  JdShopInfo({
    required this.shopName,
    required this.shopId,
    required this.shopLevel,
    required this.shopLabel,
    required this.userEvaluateScore,
    required this.commentFactorScoreRankGrade,
    required this.logisticsLvyueScore,
    required this.logisticsFactorScoreRankGrade,
    required this.afterServiceScore,
    required this.afsFactorScoreRankGrade,
    required this.scoreRankRate,
  });

  factory JdShopInfo.fromJson(Map<String, dynamic> jsonRes) => JdShopInfo(
        shopName: asT<String>(jsonRes['shopName'])!,
        shopId: asT<int>(jsonRes['shopId'])!,
        shopLevel: asT<double>(jsonRes['shopLevel'])!,
        shopLabel: asT<String>(jsonRes['shopLabel'])!,
        userEvaluateScore: asT<String>(jsonRes['userEvaluateScore'] ?? '')!,
        commentFactorScoreRankGrade:
            asT<String>(jsonRes['commentFactorScoreRankGrade'] ?? '')!,
        logisticsLvyueScore: asT<String>(jsonRes['logisticsLvyueScore'] ?? '')!,
        logisticsFactorScoreRankGrade:
            asT<String>(jsonRes['logisticsFactorScoreRankGrade'] ?? '')!,
        afterServiceScore: asT<String>(jsonRes['afterServiceScore'] ?? '')!,
        afsFactorScoreRankGrade:
            asT<String>(jsonRes['afsFactorScoreRankGrade'] ?? '')!,
        scoreRankRate: asT<String>(jsonRes['scoreRankRate'] ?? '')!,
      );

  String shopName;
  int shopId;
  double shopLevel;
  String shopLabel;
  String userEvaluateScore;
  String commentFactorScoreRankGrade;
  String logisticsLvyueScore;
  String logisticsFactorScoreRankGrade;
  String afterServiceScore;
  String afsFactorScoreRankGrade;
  String scoreRankRate;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'shopName': shopName,
        'shopId': shopId,
        'shopLevel': shopLevel,
        'shopLabel': shopLabel,
        'userEvaluateScore': userEvaluateScore,
        'commentFactorScoreRankGrade': commentFactorScoreRankGrade,
        'logisticsLvyueScore': logisticsLvyueScore,
        'logisticsFactorScoreRankGrade': logisticsFactorScoreRankGrade,
        'afterServiceScore': afterServiceScore,
        'afsFactorScoreRankGrade': afsFactorScoreRankGrade,
        'scoreRankRate': scoreRankRate,
      };

  JdShopInfo clone() => JdShopInfo.fromJson(
      asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}

class PinGouInfo {
  PinGouInfo({
    this.pingouPrice,
    this.pingouTmCount,
    this.pingouUrl,
    this.pingouStartTime,
    this.pingouEndTime,
  });

  factory PinGouInfo.fromJson(Map<String, dynamic> jsonRes) => PinGouInfo(
        pingouPrice: asT<Object?>(jsonRes['pingouPrice']),
        pingouTmCount: asT<Object?>(jsonRes['pingouTmCount']),
        pingouUrl: asT<Object?>(jsonRes['pingouUrl']),
        pingouStartTime: asT<Object?>(jsonRes['pingouStartTime']),
        pingouEndTime: asT<Object?>(jsonRes['pingouEndTime']),
      );

  Object? pingouPrice;
  Object? pingouTmCount;
  Object? pingouUrl;
  Object? pingouStartTime;
  Object? pingouEndTime;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'pingouPrice': pingouPrice,
        'pingouTmCount': pingouTmCount,
        'pingouUrl': pingouUrl,
        'pingouStartTime': pingouStartTime,
        'pingouEndTime': pingouEndTime,
      };

  PinGouInfo clone() => PinGouInfo.fromJson(
      asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}

class ResourceInfo {
  ResourceInfo({
    required this.eliteId,
    required this.eliteName,
  });

  factory ResourceInfo.fromJson(Map<String, dynamic> jsonRes) => ResourceInfo(
        eliteId: asT<int>(jsonRes['eliteId'])!,
        eliteName: asT<String>(jsonRes['eliteName'])!,
      );

  int eliteId;
  String eliteName;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'eliteId': eliteId,
        'eliteName': eliteName,
      };

  ResourceInfo clone() => ResourceInfo.fromJson(
      asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}

class SkuLabelInfo {
  SkuLabelInfo({
    required this.is7ToReturn,
    this.fxg,
    required this.fxgServiceList,
  });

  factory SkuLabelInfo.fromJson(Map<String, dynamic> jsonRes) {
    final List<Object>? fxgServiceList =
        jsonRes['fxgServiceList'] is List ? <Object>[] : null;
    if (fxgServiceList != null) {
      for (final dynamic item in jsonRes['fxgServiceList']!) {
        if (item != null) {
          fxgServiceList.add(asT<Object>(item)!);
        }
      }
    }
    return SkuLabelInfo(
      is7ToReturn: asT<int>(jsonRes['is7ToReturn'])!,
      fxg: asT<Object?>(jsonRes['fxg']),
      fxgServiceList: fxgServiceList!,
    );
  }

  int is7ToReturn;
  Object? fxg;
  List<Object> fxgServiceList;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'is7ToReturn': is7ToReturn,
        'fxg': fxg,
        'fxgServiceList': fxgServiceList,
      };

  SkuLabelInfo clone() => SkuLabelInfo.fromJson(
      asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}
