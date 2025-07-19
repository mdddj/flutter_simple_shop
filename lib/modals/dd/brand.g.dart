// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BrandItem _$BrandItemFromJson(Map<String, dynamic> json) => _BrandItem(
      brandid: (json['brandId'] as num?)?.toInt() ?? 0,
      cid: (json['cid'] as num?)?.toInt() ?? 0,
      brandname: json['brandName'] as String? ?? '',
      brandlogo: json['brandLogo'] as String? ?? '',
      brandfeatures: json['brandFeatures'] as String? ?? '',
      sales: (json['sales'] as num?)?.toInt() ?? 0,
      maxdiscountamount: (json['maxDiscountAmount'] as num?)?.toInt() ?? 0,
      maxdiscount: (json['maxDiscount'] as num?)?.toDouble() ?? 0.0,
      branddesc: json['brandDesc'] as String? ?? '',
      sort: (json['sort'] as num?)?.toInt() ?? 0,
      goodslist: json['goodsList'] == null
          ? const IListConst([])
          : IList<BrandGoodslist>.fromJson(
              json['goodsList'],
              (value) =>
                  BrandGoodslist.fromJson(value as Map<String, dynamic>)),
    );

Map<String, dynamic> _$BrandItemToJson(_BrandItem instance) =>
    <String, dynamic>{
      'brandId': instance.brandid,
      'cid': instance.cid,
      'brandName': instance.brandname,
      'brandLogo': instance.brandlogo,
      'brandFeatures': instance.brandfeatures,
      'sales': instance.sales,
      'maxDiscountAmount': instance.maxdiscountamount,
      'maxDiscount': instance.maxdiscount,
      'brandDesc': instance.branddesc,
      'sort': instance.sort,
      'goodsList': instance.goodslist.toJson(
        (value) => value,
      ),
    };

_BrandGoodslist _$BrandGoodslistFromJson(Map<String, dynamic> json) =>
    _BrandGoodslist(
      activitytype: json['activityType'] as num? ?? 0,
      actualprice: json['actualPrice'] as num? ?? 0,
      brandid: json['brandId'] as String? ?? '',
      cid: json['cid'] as num? ?? 0,
      commissionrate: json['commissionRate'] as num? ?? 0,
      commissiontype: json['commissionType'] as num? ?? 0,
      couponconditions: json['couponConditions'] as String? ?? '',
      couponendtime: json['couponEndTime'] as String? ?? '',
      couponid: json['couponId'] as String? ?? '',
      couponlink: json['couponLink'] as String? ?? '',
      couponprice: json['couponPrice'] as num? ?? 0,
      couponreceivenum: json['couponReceiveNum'] as num? ?? 0,
      couponstarttime: json['couponStartTime'] as String? ?? '',
      coupontotalnum: json['couponTotalNum'] as num? ?? 0,
      dtitle: json['dTitle'] as String? ?? '',
      dailysales: json['dailySales'] as num? ?? 0,
      desc: json['desc'] as String? ?? '',
      discount: json['discount'] as num? ?? 0,
      flagshipstore: json['flagshipStore'] as num? ?? 0,
      freeshipremotedistrct: json['freeshipRemoteDistrct'] as num? ?? 0,
      goodsid: json['goodsId'] as String? ?? '',
      goodssign: json['goodsSign'] as String? ?? '',
      id: json['id'] as num? ?? 0,
      mainpic: json['mainPic'] as String? ?? '',
      marketingmainpic: json['marketingMainPic'] as String? ?? '',
      monthsales: json['monthSales'] as num? ?? 0,
      originprice: json['originPrice'] as num? ?? 0,
      specialtext: json['specialText'] as List<dynamic>? ?? const [],
      title: json['title'] as String? ?? '',
      video: json['video'] as String? ?? '',
    );

Map<String, dynamic> _$BrandGoodslistToJson(_BrandGoodslist instance) =>
    <String, dynamic>{
      'activityType': instance.activitytype,
      'actualPrice': instance.actualprice,
      'brandId': instance.brandid,
      'cid': instance.cid,
      'commissionRate': instance.commissionrate,
      'commissionType': instance.commissiontype,
      'couponConditions': instance.couponconditions,
      'couponEndTime': instance.couponendtime,
      'couponId': instance.couponid,
      'couponLink': instance.couponlink,
      'couponPrice': instance.couponprice,
      'couponReceiveNum': instance.couponreceivenum,
      'couponStartTime': instance.couponstarttime,
      'couponTotalNum': instance.coupontotalnum,
      'dTitle': instance.dtitle,
      'dailySales': instance.dailysales,
      'desc': instance.desc,
      'discount': instance.discount,
      'flagshipStore': instance.flagshipstore,
      'freeshipRemoteDistrct': instance.freeshipremotedistrct,
      'goodsId': instance.goodsid,
      'goodsSign': instance.goodssign,
      'id': instance.id,
      'mainPic': instance.mainpic,
      'marketingMainPic': instance.marketingmainpic,
      'monthSales': instance.monthsales,
      'originPrice': instance.originprice,
      'specialText': instance.specialtext,
      'title': instance.title,
      'video': instance.video,
    };

_BrandListResult _$BrandListResultFromJson(Map<String, dynamic> json) =>
    _BrandListResult(
      lists: json['lists'] == null
          ? const IListConst([])
          : IList<BrandItem>.fromJson(json['lists'],
              (value) => BrandItem.fromJson(value as Map<String, dynamic>)),
      pagesize: (json['pagesize'] as num?)?.toInt() ?? 0,
      currentpage: (json['currentpage'] as num?)?.toInt() ?? 0,
      totalcount: (json['totalcount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$BrandListResultToJson(_BrandListResult instance) =>
    <String, dynamic>{
      'lists': instance.lists.toJson(
        (value) => value,
      ),
      'pagesize': instance.pagesize,
      'currentpage': instance.currentpage,
      'totalcount': instance.totalcount,
    };
