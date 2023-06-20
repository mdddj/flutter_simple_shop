part of pages;

class StoreData {
  StoreData({
    this.lists,
    this.currentPage,
    this.pageSize,
    this.totalCount,
  });

  factory StoreData.fromJson(Map<String, dynamic> jsonRes) {
    final lists = jsonRes['lists'] is List ? <StoreInfo>[] : null;
    if (lists != null) {
      for (final dynamic item in jsonRes['lists']) {
        if (item != null) {
          lists.add(StoreInfo.fromJson(asT<Map<String, dynamic>>(item)!));
        }
      }
    }

    return StoreData(
      lists: lists,
      currentPage: asT<int>(jsonRes['currentPage']),
      pageSize: asT<int>(jsonRes['pageSize']),
      totalCount: asT<int>(jsonRes['totalCount']),
    );
  }

  List<StoreInfo>? lists;
  int? currentPage;
  int? pageSize;
  int? totalCount;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'lists': lists,
        'currentPage': currentPage,
        'pageSize': pageSize,
        'totalCount': totalCount,
      };

  @override
  String toString() {
    return json.encode(this);
  }
}

class StoreInfo {
  StoreInfo({
    this.brandId,
    this.brandName,
    this.brandLogo,
    this.brandFeatures,
    this.sales,
    this.maxDiscountAmount,
    this.maxDiscount,
    this.goodsList,
  });

  factory StoreInfo.fromJson(Map<String, dynamic> jsonRes) {
    final goodsList = jsonRes['goodsList'] is List ? <StoreGoods>[] : null;
    if (goodsList != null) {
      for (final dynamic item in jsonRes['goodsList']) {
        if (item != null) {
          goodsList.add(StoreGoods.fromJson(asT<Map<String, dynamic>>(item)!));
        }
      }
    }

    return StoreInfo(
      brandId: asT<int>(jsonRes['brandId']),
      brandName: asT<String>(jsonRes['brandName']),
      brandLogo: asT<String>(jsonRes['brandLogo']),
      brandFeatures: asT<String>(jsonRes['brandFeatures']),
      sales: asT<int>(jsonRes['sales']),
      maxDiscountAmount: asT<double>(jsonRes['maxDiscountAmount']),
      maxDiscount: asT<double>(jsonRes['maxDiscount']),
      goodsList: goodsList,
    );
  }

  int? brandId;
  String? brandName;
  String? brandLogo;
  String? brandFeatures;
  int? sales;
  double? maxDiscountAmount;
  double? maxDiscount;
  List<StoreGoods>? goodsList;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'brandId': brandId,
        'brandName': brandName,
        'brandLogo': brandLogo,
        'brandFeatures': brandFeatures,
        'sales': sales,
        'maxDiscountAmount': maxDiscountAmount,
        'maxDiscount': maxDiscount,
        'goodsList': goodsList,
      };

  @override
  String toString() {
    return json.encode(this);
  }
}

class StoreGoods {
  StoreGoods({
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

  factory StoreGoods.fromJson(Map<String, dynamic> jsonRes) {
    final specialText = jsonRes['specialText'] is List ? <String?>[] : null;
    if (specialText != null) {
      for (final dynamic item in jsonRes['specialText']) {
        if (item != null) {
          specialText.add(asT<String>(item));
        }
      }
    }

    return StoreGoods(
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
  List<String?>? specialText;
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
