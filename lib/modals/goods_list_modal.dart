// To parse this JSON data, do
//
//     final goodsList = goodsListFromJson(jsonString);

// Dart imports:
import 'dart:convert';

GoodsList goodsListFromJson(String str) => GoodsList.fromJson(json.decode(str));

String goodsListToJson(GoodsList data) => json.encode(data.toJson());

class GoodsList {
  int? time;
  int? code;
  String? msg;
  Goods? data;

  GoodsList({
    this.time,
    this.code,
    this.msg,
    this.data,
  });

  factory GoodsList.fromJson(Map<String, dynamic> json) => GoodsList(
    time: json['time'],
    code: json['code'],
    msg: json['msg'],
    data: Goods.fromJson(json['data']),
  );

  Map<String, dynamic> toJson() => {
    'time': time,
    'code': code,
    'msg': msg,
    'data': data!.toJson(),
  };
}

class Goods {
  List<GoodsItem>? list;
  int? totalNum;
  String? pageId;

  Goods({
    this.list,
    this.totalNum,
    this.pageId,
  });

  factory Goods.fromJson(Map<String, dynamic> json) => Goods(
    list: List<GoodsItem>.from(json['list'].map(GoodsItem.fromJson)),
    totalNum: json['totalNum'],
    pageId: json['pageId'],
  );

  Map<String, dynamic> toJson() => {
    'list': List<dynamic>.from(list!.map((x) => x.toJson())),
    'totalNum': totalNum,
    'pageId': pageId,
  };
}

class GoodsItem {
  int? id;
  String? goodsId;
  String? title;
  String? dtitle;
  double? originalPrice;
  double? actualPrice;
  int? shopType;
  int? goldSellers;
  int? monthSales;
  int? twoHoursSales;
  int? dailySales;
  int? commissionType;
  String? desc;
  int? couponReceiveNum;
  String? couponLink;
  DateTime? couponEndTime;
  DateTime? couponStartTime;
  double? couponPrice;
  String? couponConditions;
  int? activityType;
  DateTime? createTime;
  String? mainPic;
  String? marketingMainPic;
  String? sellerId;
  int? cid;
  double? discounts;
  double? commissionRate;
  int? couponTotalNum;
  int? haitao;
  String? activityStartTime;
  String? activityEndTime;
  String? shopName;
  int? shopLevel;
  double? descScore;
  int? brand;
  int? brandId;
  String? brandName;
  int? hotPush;
  String? teamName;
  String? itemLink;
  int? tchaoshi;
  String? detailPics;
  double? dsrScore;
  double? dsrPercent;
  double? shipScore;
  double? shipPercent;
  double? serviceScore;
  double? servicePercent;
  List<int>? subcid;
  int? quanMLink;
  int? hzQuanOver;
  int? yunfeixian;
  double? estimateAmount;
  String? shopLogo;
  List<String>? specialText;
  int? freeshipRemoteDistrict;
  int? tbcid;

  GoodsItem({
    this.id,
    this.goodsId,
    this.title,
    this.dtitle,
    this.originalPrice,
    this.actualPrice,
    this.shopType,
    this.goldSellers,
    this.monthSales,
    this.twoHoursSales,
    this.dailySales,
    this.commissionType,
    this.desc,
    this.couponReceiveNum,
    this.couponLink,
    this.couponEndTime,
    this.couponStartTime,
    this.couponPrice,
    this.couponConditions,
    this.activityType,
    this.createTime,
    this.mainPic,
    this.marketingMainPic,
    this.sellerId,
    this.cid,
    this.discounts,
    this.commissionRate,
    this.couponTotalNum,
    this.haitao,
    this.activityStartTime,
    this.activityEndTime,
    this.shopName,
    this.shopLevel,
    this.descScore,
    this.brand,
    this.brandId,
    this.brandName,
    this.hotPush,
    this.teamName,
    this.itemLink,
    this.tchaoshi,
    this.detailPics,
    this.dsrScore,
    this.dsrPercent,
    this.shipScore,
    this.shipPercent,
    this.serviceScore,
    this.servicePercent,
    this.subcid,
    this.quanMLink,
    this.hzQuanOver,
    this.yunfeixian,
    this.estimateAmount,
    this.shopLogo,
    this.specialText,
    this.freeshipRemoteDistrict,
    this.tbcid,
  });

  factory GoodsItem.fromJson(Map<String, dynamic> json) => GoodsItem(
    id: json['id'],
    goodsId: json['goodsId'],
    title: json['title'],
    dtitle: json['dtitle'],
    originalPrice: json['originalPrice'].toDouble(),
    actualPrice: json['actualPrice'].toDouble(),
    shopType: json['shopType'],
    goldSellers: json['goldSellers'],
    monthSales: json['monthSales'],
    twoHoursSales: json['twoHoursSales'],
    dailySales: json['dailySales'],
    commissionType: json['commissionType'],
    desc: json['desc'],
    couponReceiveNum: json['couponReceiveNum'],
    couponLink: json['couponLink'],
    couponEndTime: DateTime.parse(json['couponEndTime']),
    couponStartTime: DateTime.parse(json['couponStartTime']),
    couponPrice: json['couponPrice'],
    couponConditions: json['couponConditions'],
    activityType: json['activityType'],
    createTime: DateTime.parse(json['createTime']),
    mainPic: json['mainPic'],
    marketingMainPic: json['marketingMainPic'],
    sellerId: json['sellerId'],
    cid: json['cid'],
    discounts: json['discounts'].toDouble(),
    commissionRate: json['commissionRate'].toDouble(),
    couponTotalNum: json['couponTotalNum'],
    haitao: json['haitao'],
    activityStartTime: json['activityStartTime'],
    activityEndTime: json['activityEndTime'],
    shopName: json['shopName'],
    shopLevel: json['shopLevel'],
    descScore: json['descScore'].toDouble(),
    brand: json['brand'],
    brandId: json['brandId'],
    brandName: json['brandName'],
    hotPush: json['hotPush'],
    teamName: json['teamName'],
    itemLink: json['itemLink'],
    tchaoshi: json['tchaoshi'],
    detailPics: json['detailPics'],
    dsrScore: json['dsrScore'].toDouble(),
    dsrPercent: json['dsrPercent'].toDouble(),
    shipScore: json['shipScore'].toDouble(),
    shipPercent: json['shipPercent'].toDouble(),
    serviceScore: json['serviceScore'].toDouble(),
    servicePercent: json['servicePercent'].toDouble(),
    subcid: List<int>.from(json['subcid'].map((x) => x)),
    quanMLink: json['quanMLink'],
    hzQuanOver: json['hzQuanOver'],
    yunfeixian: json['yunfeixian'],
    estimateAmount: json['estimateAmount'].toDouble(),
    shopLogo: json['shopLogo'],
    specialText: json['specialText']!=null ? List<String>.from(json['specialText'].map((x) => x)):<String>[],
    freeshipRemoteDistrict: json['freeshipRemoteDistrict'],
    tbcid: json['tbcid'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'goodsId': goodsId,
    'title': title,
    'dtitle': dtitle,
    'originalPrice': originalPrice,
    'actualPrice': actualPrice,
    'shopType': shopType,
    'goldSellers': goldSellers,
    'monthSales': monthSales,
    'twoHoursSales': twoHoursSales,
    'dailySales': dailySales,
    'commissionType': commissionType,
    'desc': desc,
    'couponReceiveNum': couponReceiveNum,
    'couponLink': couponLink,
    'couponEndTime': couponEndTime!.toIso8601String(),
    'couponStartTime': couponStartTime!.toIso8601String(),
    'couponPrice': couponPrice,
    'couponConditions': couponConditions,
    'activityType': activityType,
    'createTime': createTime!.toIso8601String(),
    'mainPic': mainPic,
    'marketingMainPic': marketingMainPic,
    'sellerId': sellerId,
    'cid': cid,
    'discounts': discounts,
    'commissionRate': commissionRate,
    'couponTotalNum': couponTotalNum,
    'haitao': haitao,
    'activityStartTime': activityStartTime,
    'activityEndTime': activityEndTime,
    'shopName': shopName,
    'shopLevel': shopLevel,
    'descScore': descScore,
    'brand': brand,
    'brandId': brandId,
    'brandName': brandName,
    'hotPush': hotPush,
    'teamName': teamName,
    'itemLink': itemLink,
    'tchaoshi': tchaoshi,
    'detailPics': detailPics,
    'dsrScore': dsrScore,
    'dsrPercent': dsrPercent,
    'shipScore': shipScore,
    'shipPercent': shipPercent,
    'serviceScore': serviceScore,
    'servicePercent': servicePercent,
    'subcid': List<dynamic>.from(subcid!.map((x) => x)),
    'quanMLink': quanMLink,
    'hzQuanOver': hzQuanOver,
    'yunfeixian': yunfeixian,
    'estimateAmount': estimateAmount,
    'shopLogo': shopLogo,
    'specialText': List<dynamic>.from(specialText!.map((x) => x)),
    'freeshipRemoteDistrict': freeshipRemoteDistrict,
    'tbcid': tbcid,
  };
}
