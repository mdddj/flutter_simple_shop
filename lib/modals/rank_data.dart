// To parse this JSON data, do
//
//     final rankListGoods = rankListGoodsFromJson(jsonString);

// Dart imports:
import 'dart:convert';

RankListGoods rankListGoodsFromJson(String str) => RankListGoods.fromJson(json.decode(str));

String rankListGoodsToJson(RankListGoods data) => json.encode(data.toJson());

class RankListGoods {
  int? time;
  int? code;
  String? msg;
  List<Datum>? data;

  RankListGoods({
    this.time,
    this.code,
    this.msg,
    this.data,
  });

  factory RankListGoods.fromJson(Map<String, dynamic> json) => RankListGoods(
    time: json['time'],
    code: json['code'],
    msg: json['msg'],
    data: List<Datum>.from(json['data'].map(Datum.fromJson)),
  );

  Map<String, dynamic> toJson() => {
    'time': time,
    'code': code,
    'msg': msg,
    'data': List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class Datum {
  int? id;
  String? goodsId;
  int? ranking;
  String? dtitle;
  double? actualPrice;
  double? commissionRate;
  double? couponPrice;
  int? couponReceiveNum;
  int? couponTotalNum;
  int? monthSales;
  int? twoHoursSales;
  int? dailySales;
  int? hotPush;
  String? mainPic;
  String? title;
  String? desc;
  double? originalPrice;
  String? couponLink;
  DateTime? couponStartTime;
  DateTime? couponEndTime;
  int? commissionType;
  DateTime? createTime;
  int? activityType;
  String? imgs;
  String? guideName;
  int? shopType;
  String? couponConditions;
  int? newRankingGoods;
  String? sellerId;
  int? quanMLink;
  int? hzQuanOver;
  int? yunfeixian;
  double? estimateAmount;

  Datum({
    this.id,
    this.goodsId,
    this.ranking,
    this.dtitle,
    this.actualPrice,
    this.commissionRate,
    this.couponPrice,
    this.couponReceiveNum,
    this.couponTotalNum,
    this.monthSales,
    this.twoHoursSales,
    this.dailySales,
    this.hotPush,
    this.mainPic,
    this.title,
    this.desc,
    this.originalPrice,
    this.couponLink,
    this.couponStartTime,
    this.couponEndTime,
    this.commissionType,
    this.createTime,
    this.activityType,
    this.imgs,
    this.guideName,
    this.shopType,
    this.couponConditions,
    this.newRankingGoods,
    this.sellerId,
    this.quanMLink,
    this.hzQuanOver,
    this.yunfeixian,
    this.estimateAmount,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json['id'],
    goodsId: json['goodsId'],
    ranking: json['ranking'],
    dtitle: json['dtitle'],
    actualPrice: json['actualPrice'].toDouble(),
    commissionRate: json['commissionRate'].toDouble(),
    couponPrice: json['couponPrice'],
    couponReceiveNum: json['couponReceiveNum'],
    couponTotalNum: json['couponTotalNum'],
    monthSales: json['monthSales'],
    twoHoursSales: json['twoHoursSales'],
    dailySales: json['dailySales'],
    hotPush: json['hotPush'],
    mainPic: json['mainPic'],
    title: json['title'],
    desc: json['desc'],
    originalPrice: json['originalPrice'].toDouble(),
    couponLink: json['couponLink'],
    couponStartTime: DateTime.parse(json['couponStartTime']),
    couponEndTime: DateTime.parse(json['couponEndTime']),
    commissionType: json['commissionType'],
    createTime: DateTime.parse(json['createTime']),
    activityType: json['activityType'],
    imgs: json['imgs'],
    guideName: json['guideName'],
    shopType: json['shopType'],
    couponConditions: json['couponConditions'],
    newRankingGoods: json['newRankingGoods'],
    sellerId: json['sellerId'],
    quanMLink: json['quanMLink'],
    hzQuanOver: json['hzQuanOver'],
    yunfeixian: json['yunfeixian'],
    estimateAmount: json['estimateAmount'].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'goodsId': goodsId,
    'ranking': ranking,
    'dtitle': dtitle,
    'actualPrice': actualPrice,
    'commissionRate': commissionRate,
    'couponPrice': couponPrice,
    'couponReceiveNum': couponReceiveNum,
    'couponTotalNum': couponTotalNum,
    'monthSales': monthSales,
    'twoHoursSales': twoHoursSales,
    'dailySales': dailySales,
    'hotPush': hotPush,
    'mainPic': mainPic,
    'title': title,
    'desc': desc,
    'originalPrice': originalPrice,
    'couponLink': couponLink,
    'couponStartTime': couponStartTime!.toIso8601String(),
    'couponEndTime': couponEndTime!.toIso8601String(),
    'commissionType': commissionType,
    'createTime': createTime!.toIso8601String(),
    'activityType': activityType,
    'imgs': imgs,
    'guideName': guideName,
    'shopType': shopType,
    'couponConditions': couponConditions,
    'newRankingGoods': newRankingGoods,
    'sellerId': sellerId,
    'quanMLink': quanMLink,
    'hzQuanOver': hzQuanOver,
    'yunfeixian': yunfeixian,
    'estimateAmount': estimateAmount,
  };
}
