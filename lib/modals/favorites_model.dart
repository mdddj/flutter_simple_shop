// To parse this JSON data, do
//
//     final favoritesAllData = favoritesAllDataFromJson(jsonString);

// Dart imports:
import 'dart:convert';

FavoritesAllData favoritesAllDataFromJson(String str) => FavoritesAllData.fromJson(json.decode(str));

String favoritesAllDataToJson(FavoritesAllData data) => json.encode(data.toJson());

class FavoritesAllData {
  PageInfo? pageInfo;
  List<Good>? goods;

  FavoritesAllData({
    this.pageInfo,
    this.goods,
  });

  factory FavoritesAllData.fromJson(Map<String, dynamic> json) => FavoritesAllData(
    pageInfo: PageInfo.fromJson(json['pageInfo']),
    goods: List<Good>.from(json['goods'].map((x) => Good.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    'pageInfo': pageInfo!.toJson(),
    'goods': List<dynamic>.from(goods!.map((x) => x.toJson())),
  };
}

class Good {
  int? id;
  String? activityEndTime;
  int? couponTotalNum;
  String? couponConditions;
  int? couponReceiveNum;
  String? marketingMainPic;
  String? activityStartTime;
  double? servicePercent;
  int? estimateAmount;
  int? commissionType;
  int? commissionRate;
  DateTime? couponStartTime;
  DateTime? createTime;
  String? title;
  String? goodsId;
  String? couponLink;
  DateTime? couponEndTime;
  int? couponPrice;
  int? activityType;
  String? mainPic;
  String? actualPrice;
  int? monthSales;
  String? dtitle;
  int? goldSellers;
  int? twoHoursSales;
  double? originalPrice;
  int? shopType;
  int? dailySales;
  double? descScore;
  int? brand;
  String? brandName;
  String? detailPics;
  double? shipScore;
  double? discounts;
  double? shipPercent;
  int? shopLevel;
  int? hotPush;
  int? hzQuanOver;
  int? yunfeixian;
  int? tbcid;
  String? shopName;
  String? sellerId;
  int? brandId;
  double? dsrPercent;
  double? dsrScore;
  int? haitao;
  int? tchaoshi;
  String? itemLink;
  int? cid;
  int? quanMLink;
  double? serviceScore;
  String? teamName;
  int? nineCid;

  Good({
    this.id,
    this.activityEndTime,
    this.couponTotalNum,
    this.couponConditions,
    this.couponReceiveNum,
    this.marketingMainPic,
    this.activityStartTime,
    this.servicePercent,
    this.estimateAmount,
    this.commissionType,
    this.commissionRate,
    this.couponStartTime,
    this.createTime,
    this.title,
    this.goodsId,
    this.couponLink,
    this.couponEndTime,
    this.couponPrice,
    this.activityType,
    this.mainPic,
    this.actualPrice,
    this.monthSales,
    this.dtitle,
    this.goldSellers,
    this.twoHoursSales,
    this.originalPrice,
    this.shopType,
    this.dailySales,
    this.descScore,
    this.brand,
    this.brandName,
    this.detailPics,
    this.shipScore,
    this.discounts,
    this.shipPercent,
    this.shopLevel,
    this.hotPush,
    this.hzQuanOver,
    this.yunfeixian,
    this.tbcid,
    this.shopName,
    this.sellerId,
    this.brandId,
    this.dsrPercent,
    this.dsrScore,
    this.haitao,
    this.tchaoshi,
    this.itemLink,
    this.cid,
    this.quanMLink,
    this.serviceScore,
    this.teamName,
    this.nineCid,
  });

  factory Good.fromJson(Map<String, dynamic> json) => Good(
    id: json['id'],
    activityEndTime: json['activityEndTime'],
    couponTotalNum: json['couponTotalNum'],
    couponConditions: json['couponConditions'],
    couponReceiveNum: json['couponReceiveNum'],
    marketingMainPic: json['marketingMainPic'],
    activityStartTime: json['activityStartTime'],
    servicePercent: json['servicePercent'].toDouble(),
    estimateAmount: json['estimateAmount'],
    commissionType: json['commissionType'],
    commissionRate: json['commissionRate'],
    couponStartTime: DateTime.parse(json['couponStartTime']),
    createTime: DateTime.parse(json['createTime']),
    title: json['title'],
    goodsId: json['goodsId'],
    couponLink: json['couponLink'],
    couponEndTime: DateTime.parse(json['couponEndTime']),
    couponPrice: json['couponPrice'],
    activityType: json['activityType'],
    mainPic: json['mainPic'],
    actualPrice: json['actualPrice'],
    monthSales: json['monthSales'],
    dtitle: json['dtitle'],
    goldSellers: json['goldSellers'],
    twoHoursSales: json['twoHoursSales'],
    originalPrice: json['originalPrice'].toDouble(),
    shopType: json['shopType'],
    dailySales: json['dailySales'],
    descScore: json['descScore'].toDouble(),
    brand: json['brand'],
    brandName: json['brandName'],
    detailPics: json['detailPics'],
    shipScore: json['shipScore'].toDouble(),
    discounts: json['discounts'].toDouble(),
    shipPercent: json['shipPercent'].toDouble(),
    shopLevel: json['shopLevel'],
    hotPush: json['hotPush'],
    hzQuanOver: json['hzQuanOver'],
    yunfeixian: json['yunfeixian'],
    tbcid: json['tbcid'],
    shopName: json['shopName'],
    sellerId: json['sellerId'],
    brandId: json['brandId'],
    dsrPercent: json['dsrPercent'].toDouble(),
    dsrScore: json['dsrScore'].toDouble(),
    haitao: json['haitao'],
    tchaoshi: json['tchaoshi'],
    itemLink: json['itemLink'],
    cid: json['cid'],
    quanMLink: json['quanMLink'],
    serviceScore: json['serviceScore'].toDouble(),
    teamName: json['teamName'],
    nineCid: json['nineCid'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'activityEndTime': activityEndTime,
    'couponTotalNum': couponTotalNum,
    'couponConditions': couponConditions,
    'couponReceiveNum': couponReceiveNum,
    'marketingMainPic': marketingMainPic,
    'activityStartTime': activityStartTime,
    'servicePercent': servicePercent,
    'estimateAmount': estimateAmount,
    'commissionType': commissionType,
    'commissionRate': commissionRate,
    'couponStartTime': couponStartTime!.toIso8601String(),
    'createTime': createTime!.toIso8601String(),
    'title': title,
    'goodsId': goodsId,
    'couponLink': couponLink,
    'couponEndTime': couponEndTime!.toIso8601String(),
    'couponPrice': couponPrice,
    'activityType': activityType,
    'mainPic': mainPic,
    'actualPrice': actualPrice,
    'monthSales': monthSales,
    'dtitle': dtitle,
    'goldSellers': goldSellers,
    'twoHoursSales': twoHoursSales,
    'originalPrice': originalPrice,
    'shopType': shopType,
    'dailySales': dailySales,
    'descScore': descScore,
    'brand': brand,
    'brandName': brandName,
    'detailPics': detailPics,
    'shipScore': shipScore,
    'discounts': discounts,
    'shipPercent': shipPercent,
    'shopLevel': shopLevel,
    'hotPush': hotPush,
    'hzQuanOver': hzQuanOver,
    'yunfeixian': yunfeixian,
    'tbcid': tbcid,
    'shopName': shopName,
    'sellerId': sellerId,
    'brandId': brandId,
    'dsrPercent': dsrPercent,
    'dsrScore': dsrScore,
    'haitao': haitao,
    'tchaoshi': tchaoshi,
    'itemLink': itemLink,
    'cid': cid,
    'quanMLink': quanMLink,
    'serviceScore': serviceScore,
    'teamName': teamName,
    'nineCid': nineCid,
  };
}

class PageInfo {
  int? number;
  int? size;
  List<Content>? content;
  PageInfoSort? sort;
  int? numberOfElements;
  bool? first;
  int? totalPages;
  int? totalElements;
  bool? last;
  Pageable? pageable;
  bool? empty;

  PageInfo({
    this.number,
    this.size,
    this.content,
    this.sort,
    this.numberOfElements,
    this.first,
    this.totalPages,
    this.totalElements,
    this.last,
    this.pageable,
    this.empty,
  });

  factory PageInfo.fromJson(Map<String, dynamic> json) => PageInfo(
    number: json['number'],
    size: json['size'],
    content: List<Content>.from(json['content'].map((x) => Content.fromJson(x))),
    sort: PageInfoSort.fromJson(json['sort']),
    numberOfElements: json['numberOfElements'],
    first: json['first'],
    totalPages: json['totalPages'],
    totalElements: json['totalElements'],
    last: json['last'],
    pageable: Pageable.fromJson(json['pageable']),
    empty: json['empty'],
  );

  Map<String, dynamic> toJson() => {
    'number': number,
    'size': size,
    'content': List<dynamic>.from(content!.map((x) => x.toJson())),
    'sort': sort!.toJson(),
    'numberOfElements': numberOfElements,
    'first': first,
    'totalPages': totalPages,
    'totalElements': totalElements,
    'last': last,
    'pageable': pageable!.toJson(),
    'empty': empty,
  };
}

class Content {
  int? id;
  int? goodsId;
  int? userId;
  int? createDate;

  Content({
    this.id,
    this.goodsId,
    this.userId,
    this.createDate,
  });

  factory Content.fromJson(Map<String, dynamic> json) => Content(
    id: json['id'],
    goodsId: json['goodsId'],
    userId: json['userId'],
    createDate: json['createDate'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'goodsId': goodsId,
    'userId': userId,
    'createDate': createDate,
  };
}

class Pageable {
  PageableSort? sort;
  int? offset;
  int? pageNumber;
  int? pageSize;
  bool? paged;
  bool? unpaged;

  Pageable({
    this.sort,
    this.offset,
    this.pageNumber,
    this.pageSize,
    this.paged,
    this.unpaged,
  });

  factory Pageable.fromJson(Map<String, dynamic> json) => Pageable(
    sort: PageableSort.fromJson(json['sort']),
    offset: json['offset'],
    pageNumber: json['pageNumber'],
    pageSize: json['pageSize'],
    paged: json['paged'],
    unpaged: json['unpaged'],
  );

  Map<String, dynamic> toJson() => {
    'sort': sort!.toJson(),
    'offset': offset,
    'pageNumber': pageNumber,
    'pageSize': pageSize,
    'paged': paged,
    'unpaged': unpaged,
  };
}

class PageableSort {
  String? ref;

  PageableSort({
    this.ref,
  });

  factory PageableSort.fromJson(Map<String, dynamic> json) => PageableSort(
    ref: json['\u0024ref'],
  );

  Map<String, dynamic> toJson() => {
    '\u0024ref': ref,
  };
}

class PageInfoSort {
  bool? unsorted;
  bool? sorted;
  bool? empty;

  PageInfoSort({
    this.unsorted,
    this.sorted,
    this.empty,
  });

  factory PageInfoSort.fromJson(Map<String, dynamic> json) => PageInfoSort(
    unsorted: json['unsorted'],
    sorted: json['sorted'],
    empty: json['empty'],
  );

  Map<String, dynamic> toJson() => {
    'unsorted': unsorted,
    'sorted': sorted,
    'empty': empty,
  };
}
