import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand.freezed.dart';

part 'brand.g.dart';

///匹配相关模型
@freezed
sealed class BrandItem with _$BrandItem {
  const BrandItem._();

  const factory BrandItem({
    @JsonKey(name: 'brandId') @Default(0) int brandid,
    @JsonKey(name: 'cid') @Default(0) int cid,
    @JsonKey(name: 'brandName') @Default('') String brandname,
    @JsonKey(name: 'brandLogo') @Default('') String brandlogo,
    @JsonKey(name: 'brandFeatures') @Default('') String brandfeatures,
    @JsonKey(name: 'sales') @Default(0) int sales,
    @JsonKey(name: 'maxDiscountAmount') @Default(0) int maxdiscountamount,
    @JsonKey(name: 'maxDiscount') @Default(0.0) double maxdiscount,
    @JsonKey(name: 'brandDesc') @Default('') String branddesc,
    @JsonKey(name: 'sort') @Default(0) int sort,
    @JsonKey(name: 'goodsList')
    @Default(IListConst([]))
    IList<BrandGoodslist> goodslist,
  }) = _BrandItem;

  factory BrandItem.fromJson(Map<String, dynamic> json) =>
      _$BrandItemFromJson(json);
}

@freezed
sealed class BrandGoodslist with _$BrandGoodslist {
  const BrandGoodslist._();

  const factory BrandGoodslist({
    @JsonKey(name: 'activityType') @Default(0) num activitytype,
    @JsonKey(name: 'actualPrice') @Default(0) num actualprice,
    @JsonKey(name: 'brandId') @Default('') String brandid,
    @JsonKey(name: 'cid') @Default(0) num cid,
    @JsonKey(name: 'commissionRate') @Default(0) num commissionrate,
    @JsonKey(name: 'commissionType') @Default(0) num commissiontype,
    @JsonKey(name: 'couponConditions') @Default('') String couponconditions,
    @JsonKey(name: 'couponEndTime') @Default('') String couponendtime,
    @JsonKey(name: 'couponId') @Default('') String couponid,
    @JsonKey(name: 'couponLink') @Default('') String couponlink,
    @JsonKey(name: 'couponPrice') @Default(0) num couponprice,
    @JsonKey(name: 'couponReceiveNum') @Default(0) num couponreceivenum,
    @JsonKey(name: 'couponStartTime') @Default('') String couponstarttime,
    @JsonKey(name: 'couponTotalNum') @Default(0) num coupontotalnum,
    @JsonKey(name: 'dTitle') @Default('') String dtitle,
    @JsonKey(name: 'dailySales') @Default(0) num dailysales,
    @JsonKey(name: 'desc') @Default('') String desc,
    @JsonKey(name: 'discount') @Default(0) num discount,
    @JsonKey(name: 'flagshipStore') @Default(0) num flagshipstore,
    @JsonKey(name: 'freeshipRemoteDistrct')
    @Default(0)
    num freeshipremotedistrct,
    @JsonKey(name: 'goodsId') @Default('') String goodsid,
    @JsonKey(name: 'goodsSign') @Default('') String goodssign,
    @JsonKey(name: 'id') @Default(0) num id,
    @JsonKey(name: 'mainPic') @Default('') String mainpic,
    @JsonKey(name: 'marketingMainPic') @Default('') String marketingmainpic,
    @JsonKey(name: 'monthSales') @Default(0) num monthsales,
    @JsonKey(name: 'originPrice') @Default(0) num originprice,
    @JsonKey(name: 'specialText') @Default([]) List<dynamic> specialtext,
    @JsonKey(name: 'title') @Default('') String title,
    @JsonKey(name: 'video') @Default('') String video,
  }) = _BrandGoodslist;

  factory BrandGoodslist.fromJson(Map<String, dynamic> json) =>
      _$BrandGoodslistFromJson(json);
}

@freezed
sealed class BrandListResult with _$BrandListResult {
  const BrandListResult._();

  const factory BrandListResult({
    @Default(IListConst([])) IList<BrandItem> lists,
    @Default(0) int pagesize,
    @Default(0) int currentpage,
    @Default(0) int totalcount,
  }) = _BrandListResult;

  factory BrandListResult.fromJson(Map<String, dynamic> json) =>
      _$BrandListResultFromJson(json);
}
