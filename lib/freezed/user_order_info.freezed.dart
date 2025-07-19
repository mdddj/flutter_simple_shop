// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_order_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserOrderInfo {
  @JsonKey(name: 'adzoneName')
  String get adzoneName;
  @JsonKey(name: 'adzoneid')
  String get adzoneid;
  @JsonKey(name: 'alimamaRate')
  String get alimamaRate;
  @JsonKey(name: 'alimamaShareFee')
  String get alimamaShareFee;
  @JsonKey(name: 'alipayTotalPrice')
  String get alipayTotalPrice;
  @JsonKey(name: 'clickTime')
  String get clickTime;
  @JsonKey(name: 'depositPrice')
  String get depositPrice;
  @JsonKey(name: 'flowSource')
  String get flowSource;
  @JsonKey(name: 'id')
  int get id;
  @JsonKey(name: 'incomeRate')
  String get incomeRate;
  @JsonKey(name: 'itemCategoryName')
  String get itemCategoryName;
  @JsonKey(name: 'itemImg')
  String get itemImg;
  @JsonKey(name: 'itemLink')
  String get itemLink;
  @JsonKey(name: 'itemNum')
  int get itemNum;
  @JsonKey(name: 'itemPrice')
  String get itemPrice;
  @JsonKey(name: 'itemTitle')
  String get itemTitle;
  @JsonKey(name: 'itemid')
  String get itemid;
  @JsonKey(name: 'orderType')
  String get orderType;
  @JsonKey(name: 'pubShareFee')
  String get pubShareFee;
  @JsonKey(name: 'pubSharePreFee')
  String get pubSharePreFee;
  @JsonKey(name: 'pubShareRate')
  String get pubShareRate;
  @JsonKey(name: 'pubid')
  int get pubid;
  @JsonKey(name: 'refundTag')
  int get refundTag;
  @JsonKey(name: 'relationId', fromJson: _toString)
  String get relationId;
  @JsonKey(name: 'sellerNick')
  String get sellerNick;
  @JsonKey(name: 'sellerShopTitle')
  String get sellerShopTitle;
  @JsonKey(name: 'siteName')
  String get siteName;
  @JsonKey(name: 'siteid')
  int get siteid;
  @JsonKey(name: 'subsidyFee')
  String get subsidyFee;
  @JsonKey(name: 'subsidyRate')
  String get subsidyRate;
  @JsonKey(name: 'subsidyType')
  String get subsidyType;
  @JsonKey(name: 'tbDepositTime')
  String get tbDepositTime;
  @JsonKey(name: 'tbPaidTime')
  String get tbPaidTime;
  @JsonKey(name: 'terminalType')
  String get terminalType;
  @JsonKey(name: 'tkCommissionFeeForMediaPlatform')
  String get tkCommissionFeeForMediaPlatform;
  @JsonKey(name: 'tkCommissionPreFeeForMediaPlatform')
  String get tkCommissionPreFeeForMediaPlatform;
  @JsonKey(name: 'tkCommissionRateForMediaPlatform')
  String get tkCommissionRateForMediaPlatform;
  @JsonKey(name: 'tkCreateTime')
  String get tkCreateTime;
  @JsonKey(name: 'tkDepositTime')
  String get tkDepositTime;
  @JsonKey(name: 'tkOrderRole')
  int get tkOrderRole;
  @JsonKey(name: 'tkPaidTime')
  String get tkPaidTime;
  @JsonKey(name: 'tkStatus')
  int get tkStatus;
  @JsonKey(name: 'tkTotalRate')
  String get tkTotalRate;
  @JsonKey(name: 'totalCommissionFee')
  String get totalCommissionFee;
  @JsonKey(name: 'totalCommissionRate')
  String get totalCommissionRate;
  @JsonKey(name: 'tradeParentid')
  String get tradeParentid;
  @JsonKey(name: 'tradeid')
  String get tradeid;
  @JsonKey(name: 'zheAccount')
  String get zheAccount;
  @JsonKey(name: 'zheActId')
  String get zheActId;
  @JsonKey(name: 'zheAppKey')
  String get zheAppKey;
  @JsonKey(name: 'zheCode')
  String get zheCode;
  @JsonKey(name: 'zheCustomerIdZtk')
  String get zheCustomerIdZtk;
  @JsonKey(name: 'zheIsJieSuan')
  String get zheIsJieSuan;
  @JsonKey(name: 'zheJieSuanProfit')
  String get zheJieSuanProfit;
  @JsonKey(name: 'zheJieSuanTime')
  String get zheJieSuanTime;
  @JsonKey(name: 'zheOrderId')
  String get zheOrderId;
  @JsonKey(name: 'zhePayPrice')
  String get zhePayPrice;
  @JsonKey(name: 'zhePayTime')
  String get zhePayTime;
  @JsonKey(name: 'zhePlatformZtk')
  String get zhePlatformZtk;
  @JsonKey(name: 'zheProfit')
  String get zheProfit;
  @JsonKey(name: 'zheRefundPrice')
  String get zheRefundPrice;
  @JsonKey(name: 'zheRefundTime')
  String get zheRefundTime;
  @JsonKey(name: 'zheSanPingTai')
  String get zheSanPingTai;
  @JsonKey(name: 'zheSanPingTaiId')
  String get zheSanPingTaiId;
  @JsonKey(name: 'zheSid')
  String get zheSid;
  @JsonKey(name: 'zheSidZtk')
  String get zheSidZtk;
  @JsonKey(name: 'zheSmsTitle')
  String get zheSmsTitle;
  @JsonKey(name: 'zheStatus')
  String get zheStatus;
  @JsonKey(name: 'zheType')
  String get zheType;
  @JsonKey(name: 'zheUpdateTime')
  String get zheUpdateTime;

  /// Create a copy of UserOrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserOrderInfoCopyWith<UserOrderInfo> get copyWith =>
      _$UserOrderInfoCopyWithImpl<UserOrderInfo>(
          this as UserOrderInfo, _$identity);

  /// Serializes this UserOrderInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserOrderInfo &&
            (identical(other.adzoneName, adzoneName) ||
                other.adzoneName == adzoneName) &&
            (identical(other.adzoneid, adzoneid) ||
                other.adzoneid == adzoneid) &&
            (identical(other.alimamaRate, alimamaRate) ||
                other.alimamaRate == alimamaRate) &&
            (identical(other.alimamaShareFee, alimamaShareFee) ||
                other.alimamaShareFee == alimamaShareFee) &&
            (identical(other.alipayTotalPrice, alipayTotalPrice) ||
                other.alipayTotalPrice == alipayTotalPrice) &&
            (identical(other.clickTime, clickTime) ||
                other.clickTime == clickTime) &&
            (identical(other.depositPrice, depositPrice) ||
                other.depositPrice == depositPrice) &&
            (identical(other.flowSource, flowSource) ||
                other.flowSource == flowSource) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.incomeRate, incomeRate) ||
                other.incomeRate == incomeRate) &&
            (identical(other.itemCategoryName, itemCategoryName) ||
                other.itemCategoryName == itemCategoryName) &&
            (identical(other.itemImg, itemImg) || other.itemImg == itemImg) &&
            (identical(other.itemLink, itemLink) ||
                other.itemLink == itemLink) &&
            (identical(other.itemNum, itemNum) || other.itemNum == itemNum) &&
            (identical(other.itemPrice, itemPrice) ||
                other.itemPrice == itemPrice) &&
            (identical(other.itemTitle, itemTitle) ||
                other.itemTitle == itemTitle) &&
            (identical(other.itemid, itemid) || other.itemid == itemid) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
            (identical(other.pubShareFee, pubShareFee) ||
                other.pubShareFee == pubShareFee) &&
            (identical(other.pubSharePreFee, pubSharePreFee) ||
                other.pubSharePreFee == pubSharePreFee) &&
            (identical(other.pubShareRate, pubShareRate) ||
                other.pubShareRate == pubShareRate) &&
            (identical(other.pubid, pubid) || other.pubid == pubid) &&
            (identical(other.refundTag, refundTag) ||
                other.refundTag == refundTag) &&
            (identical(other.relationId, relationId) ||
                other.relationId == relationId) &&
            (identical(other.sellerNick, sellerNick) ||
                other.sellerNick == sellerNick) &&
            (identical(other.sellerShopTitle, sellerShopTitle) ||
                other.sellerShopTitle == sellerShopTitle) &&
            (identical(other.siteName, siteName) ||
                other.siteName == siteName) &&
            (identical(other.siteid, siteid) || other.siteid == siteid) &&
            (identical(other.subsidyFee, subsidyFee) ||
                other.subsidyFee == subsidyFee) &&
            (identical(other.subsidyRate, subsidyRate) ||
                other.subsidyRate == subsidyRate) &&
            (identical(other.subsidyType, subsidyType) ||
                other.subsidyType == subsidyType) &&
            (identical(other.tbDepositTime, tbDepositTime) ||
                other.tbDepositTime == tbDepositTime) &&
            (identical(other.tbPaidTime, tbPaidTime) ||
                other.tbPaidTime == tbPaidTime) &&
            (identical(other.terminalType, terminalType) ||
                other.terminalType == terminalType) &&
            (identical(other.tkCommissionFeeForMediaPlatform, tkCommissionFeeForMediaPlatform) ||
                other.tkCommissionFeeForMediaPlatform ==
                    tkCommissionFeeForMediaPlatform) &&
            (identical(other.tkCommissionPreFeeForMediaPlatform, tkCommissionPreFeeForMediaPlatform) ||
                other.tkCommissionPreFeeForMediaPlatform ==
                    tkCommissionPreFeeForMediaPlatform) &&
            (identical(other.tkCommissionRateForMediaPlatform, tkCommissionRateForMediaPlatform) ||
                other.tkCommissionRateForMediaPlatform ==
                    tkCommissionRateForMediaPlatform) &&
            (identical(other.tkCreateTime, tkCreateTime) ||
                other.tkCreateTime == tkCreateTime) &&
            (identical(other.tkDepositTime, tkDepositTime) ||
                other.tkDepositTime == tkDepositTime) &&
            (identical(other.tkOrderRole, tkOrderRole) ||
                other.tkOrderRole == tkOrderRole) &&
            (identical(other.tkPaidTime, tkPaidTime) ||
                other.tkPaidTime == tkPaidTime) &&
            (identical(other.tkStatus, tkStatus) ||
                other.tkStatus == tkStatus) &&
            (identical(other.tkTotalRate, tkTotalRate) ||
                other.tkTotalRate == tkTotalRate) &&
            (identical(other.totalCommissionFee, totalCommissionFee) ||
                other.totalCommissionFee == totalCommissionFee) &&
            (identical(other.totalCommissionRate, totalCommissionRate) ||
                other.totalCommissionRate == totalCommissionRate) &&
            (identical(other.tradeParentid, tradeParentid) || other.tradeParentid == tradeParentid) &&
            (identical(other.tradeid, tradeid) || other.tradeid == tradeid) &&
            (identical(other.zheAccount, zheAccount) || other.zheAccount == zheAccount) &&
            (identical(other.zheActId, zheActId) || other.zheActId == zheActId) &&
            (identical(other.zheAppKey, zheAppKey) || other.zheAppKey == zheAppKey) &&
            (identical(other.zheCode, zheCode) || other.zheCode == zheCode) &&
            (identical(other.zheCustomerIdZtk, zheCustomerIdZtk) || other.zheCustomerIdZtk == zheCustomerIdZtk) &&
            (identical(other.zheIsJieSuan, zheIsJieSuan) || other.zheIsJieSuan == zheIsJieSuan) &&
            (identical(other.zheJieSuanProfit, zheJieSuanProfit) || other.zheJieSuanProfit == zheJieSuanProfit) &&
            (identical(other.zheJieSuanTime, zheJieSuanTime) || other.zheJieSuanTime == zheJieSuanTime) &&
            (identical(other.zheOrderId, zheOrderId) || other.zheOrderId == zheOrderId) &&
            (identical(other.zhePayPrice, zhePayPrice) || other.zhePayPrice == zhePayPrice) &&
            (identical(other.zhePayTime, zhePayTime) || other.zhePayTime == zhePayTime) &&
            (identical(other.zhePlatformZtk, zhePlatformZtk) || other.zhePlatformZtk == zhePlatformZtk) &&
            (identical(other.zheProfit, zheProfit) || other.zheProfit == zheProfit) &&
            (identical(other.zheRefundPrice, zheRefundPrice) || other.zheRefundPrice == zheRefundPrice) &&
            (identical(other.zheRefundTime, zheRefundTime) || other.zheRefundTime == zheRefundTime) &&
            (identical(other.zheSanPingTai, zheSanPingTai) || other.zheSanPingTai == zheSanPingTai) &&
            (identical(other.zheSanPingTaiId, zheSanPingTaiId) || other.zheSanPingTaiId == zheSanPingTaiId) &&
            (identical(other.zheSid, zheSid) || other.zheSid == zheSid) &&
            (identical(other.zheSidZtk, zheSidZtk) || other.zheSidZtk == zheSidZtk) &&
            (identical(other.zheSmsTitle, zheSmsTitle) || other.zheSmsTitle == zheSmsTitle) &&
            (identical(other.zheStatus, zheStatus) || other.zheStatus == zheStatus) &&
            (identical(other.zheType, zheType) || other.zheType == zheType) &&
            (identical(other.zheUpdateTime, zheUpdateTime) || other.zheUpdateTime == zheUpdateTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        adzoneName,
        adzoneid,
        alimamaRate,
        alimamaShareFee,
        alipayTotalPrice,
        clickTime,
        depositPrice,
        flowSource,
        id,
        incomeRate,
        itemCategoryName,
        itemImg,
        itemLink,
        itemNum,
        itemPrice,
        itemTitle,
        itemid,
        orderType,
        pubShareFee,
        pubSharePreFee,
        pubShareRate,
        pubid,
        refundTag,
        relationId,
        sellerNick,
        sellerShopTitle,
        siteName,
        siteid,
        subsidyFee,
        subsidyRate,
        subsidyType,
        tbDepositTime,
        tbPaidTime,
        terminalType,
        tkCommissionFeeForMediaPlatform,
        tkCommissionPreFeeForMediaPlatform,
        tkCommissionRateForMediaPlatform,
        tkCreateTime,
        tkDepositTime,
        tkOrderRole,
        tkPaidTime,
        tkStatus,
        tkTotalRate,
        totalCommissionFee,
        totalCommissionRate,
        tradeParentid,
        tradeid,
        zheAccount,
        zheActId,
        zheAppKey,
        zheCode,
        zheCustomerIdZtk,
        zheIsJieSuan,
        zheJieSuanProfit,
        zheJieSuanTime,
        zheOrderId,
        zhePayPrice,
        zhePayTime,
        zhePlatformZtk,
        zheProfit,
        zheRefundPrice,
        zheRefundTime,
        zheSanPingTai,
        zheSanPingTaiId,
        zheSid,
        zheSidZtk,
        zheSmsTitle,
        zheStatus,
        zheType,
        zheUpdateTime
      ]);

  @override
  String toString() {
    return 'UserOrderInfo(adzoneName: $adzoneName, adzoneid: $adzoneid, alimamaRate: $alimamaRate, alimamaShareFee: $alimamaShareFee, alipayTotalPrice: $alipayTotalPrice, clickTime: $clickTime, depositPrice: $depositPrice, flowSource: $flowSource, id: $id, incomeRate: $incomeRate, itemCategoryName: $itemCategoryName, itemImg: $itemImg, itemLink: $itemLink, itemNum: $itemNum, itemPrice: $itemPrice, itemTitle: $itemTitle, itemid: $itemid, orderType: $orderType, pubShareFee: $pubShareFee, pubSharePreFee: $pubSharePreFee, pubShareRate: $pubShareRate, pubid: $pubid, refundTag: $refundTag, relationId: $relationId, sellerNick: $sellerNick, sellerShopTitle: $sellerShopTitle, siteName: $siteName, siteid: $siteid, subsidyFee: $subsidyFee, subsidyRate: $subsidyRate, subsidyType: $subsidyType, tbDepositTime: $tbDepositTime, tbPaidTime: $tbPaidTime, terminalType: $terminalType, tkCommissionFeeForMediaPlatform: $tkCommissionFeeForMediaPlatform, tkCommissionPreFeeForMediaPlatform: $tkCommissionPreFeeForMediaPlatform, tkCommissionRateForMediaPlatform: $tkCommissionRateForMediaPlatform, tkCreateTime: $tkCreateTime, tkDepositTime: $tkDepositTime, tkOrderRole: $tkOrderRole, tkPaidTime: $tkPaidTime, tkStatus: $tkStatus, tkTotalRate: $tkTotalRate, totalCommissionFee: $totalCommissionFee, totalCommissionRate: $totalCommissionRate, tradeParentid: $tradeParentid, tradeid: $tradeid, zheAccount: $zheAccount, zheActId: $zheActId, zheAppKey: $zheAppKey, zheCode: $zheCode, zheCustomerIdZtk: $zheCustomerIdZtk, zheIsJieSuan: $zheIsJieSuan, zheJieSuanProfit: $zheJieSuanProfit, zheJieSuanTime: $zheJieSuanTime, zheOrderId: $zheOrderId, zhePayPrice: $zhePayPrice, zhePayTime: $zhePayTime, zhePlatformZtk: $zhePlatformZtk, zheProfit: $zheProfit, zheRefundPrice: $zheRefundPrice, zheRefundTime: $zheRefundTime, zheSanPingTai: $zheSanPingTai, zheSanPingTaiId: $zheSanPingTaiId, zheSid: $zheSid, zheSidZtk: $zheSidZtk, zheSmsTitle: $zheSmsTitle, zheStatus: $zheStatus, zheType: $zheType, zheUpdateTime: $zheUpdateTime)';
  }
}

/// @nodoc
abstract mixin class $UserOrderInfoCopyWith<$Res> {
  factory $UserOrderInfoCopyWith(
          UserOrderInfo value, $Res Function(UserOrderInfo) _then) =
      _$UserOrderInfoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'adzoneName') String adzoneName,
      @JsonKey(name: 'adzoneid') String adzoneid,
      @JsonKey(name: 'alimamaRate') String alimamaRate,
      @JsonKey(name: 'alimamaShareFee') String alimamaShareFee,
      @JsonKey(name: 'alipayTotalPrice') String alipayTotalPrice,
      @JsonKey(name: 'clickTime') String clickTime,
      @JsonKey(name: 'depositPrice') String depositPrice,
      @JsonKey(name: 'flowSource') String flowSource,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'incomeRate') String incomeRate,
      @JsonKey(name: 'itemCategoryName') String itemCategoryName,
      @JsonKey(name: 'itemImg') String itemImg,
      @JsonKey(name: 'itemLink') String itemLink,
      @JsonKey(name: 'itemNum') int itemNum,
      @JsonKey(name: 'itemPrice') String itemPrice,
      @JsonKey(name: 'itemTitle') String itemTitle,
      @JsonKey(name: 'itemid') String itemid,
      @JsonKey(name: 'orderType') String orderType,
      @JsonKey(name: 'pubShareFee') String pubShareFee,
      @JsonKey(name: 'pubSharePreFee') String pubSharePreFee,
      @JsonKey(name: 'pubShareRate') String pubShareRate,
      @JsonKey(name: 'pubid') int pubid,
      @JsonKey(name: 'refundTag') int refundTag,
      @JsonKey(name: 'relationId', fromJson: _toString) String relationId,
      @JsonKey(name: 'sellerNick') String sellerNick,
      @JsonKey(name: 'sellerShopTitle') String sellerShopTitle,
      @JsonKey(name: 'siteName') String siteName,
      @JsonKey(name: 'siteid') int siteid,
      @JsonKey(name: 'subsidyFee') String subsidyFee,
      @JsonKey(name: 'subsidyRate') String subsidyRate,
      @JsonKey(name: 'subsidyType') String subsidyType,
      @JsonKey(name: 'tbDepositTime') String tbDepositTime,
      @JsonKey(name: 'tbPaidTime') String tbPaidTime,
      @JsonKey(name: 'terminalType') String terminalType,
      @JsonKey(name: 'tkCommissionFeeForMediaPlatform')
      String tkCommissionFeeForMediaPlatform,
      @JsonKey(name: 'tkCommissionPreFeeForMediaPlatform')
      String tkCommissionPreFeeForMediaPlatform,
      @JsonKey(name: 'tkCommissionRateForMediaPlatform')
      String tkCommissionRateForMediaPlatform,
      @JsonKey(name: 'tkCreateTime') String tkCreateTime,
      @JsonKey(name: 'tkDepositTime') String tkDepositTime,
      @JsonKey(name: 'tkOrderRole') int tkOrderRole,
      @JsonKey(name: 'tkPaidTime') String tkPaidTime,
      @JsonKey(name: 'tkStatus') int tkStatus,
      @JsonKey(name: 'tkTotalRate') String tkTotalRate,
      @JsonKey(name: 'totalCommissionFee') String totalCommissionFee,
      @JsonKey(name: 'totalCommissionRate') String totalCommissionRate,
      @JsonKey(name: 'tradeParentid') String tradeParentid,
      @JsonKey(name: 'tradeid') String tradeid,
      @JsonKey(name: 'zheAccount') String zheAccount,
      @JsonKey(name: 'zheActId') String zheActId,
      @JsonKey(name: 'zheAppKey') String zheAppKey,
      @JsonKey(name: 'zheCode') String zheCode,
      @JsonKey(name: 'zheCustomerIdZtk') String zheCustomerIdZtk,
      @JsonKey(name: 'zheIsJieSuan') String zheIsJieSuan,
      @JsonKey(name: 'zheJieSuanProfit') String zheJieSuanProfit,
      @JsonKey(name: 'zheJieSuanTime') String zheJieSuanTime,
      @JsonKey(name: 'zheOrderId') String zheOrderId,
      @JsonKey(name: 'zhePayPrice') String zhePayPrice,
      @JsonKey(name: 'zhePayTime') String zhePayTime,
      @JsonKey(name: 'zhePlatformZtk') String zhePlatformZtk,
      @JsonKey(name: 'zheProfit') String zheProfit,
      @JsonKey(name: 'zheRefundPrice') String zheRefundPrice,
      @JsonKey(name: 'zheRefundTime') String zheRefundTime,
      @JsonKey(name: 'zheSanPingTai') String zheSanPingTai,
      @JsonKey(name: 'zheSanPingTaiId') String zheSanPingTaiId,
      @JsonKey(name: 'zheSid') String zheSid,
      @JsonKey(name: 'zheSidZtk') String zheSidZtk,
      @JsonKey(name: 'zheSmsTitle') String zheSmsTitle,
      @JsonKey(name: 'zheStatus') String zheStatus,
      @JsonKey(name: 'zheType') String zheType,
      @JsonKey(name: 'zheUpdateTime') String zheUpdateTime});
}

/// @nodoc
class _$UserOrderInfoCopyWithImpl<$Res>
    implements $UserOrderInfoCopyWith<$Res> {
  _$UserOrderInfoCopyWithImpl(this._self, this._then);

  final UserOrderInfo _self;
  final $Res Function(UserOrderInfo) _then;

  /// Create a copy of UserOrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adzoneName = null,
    Object? adzoneid = null,
    Object? alimamaRate = null,
    Object? alimamaShareFee = null,
    Object? alipayTotalPrice = null,
    Object? clickTime = null,
    Object? depositPrice = null,
    Object? flowSource = null,
    Object? id = null,
    Object? incomeRate = null,
    Object? itemCategoryName = null,
    Object? itemImg = null,
    Object? itemLink = null,
    Object? itemNum = null,
    Object? itemPrice = null,
    Object? itemTitle = null,
    Object? itemid = null,
    Object? orderType = null,
    Object? pubShareFee = null,
    Object? pubSharePreFee = null,
    Object? pubShareRate = null,
    Object? pubid = null,
    Object? refundTag = null,
    Object? relationId = null,
    Object? sellerNick = null,
    Object? sellerShopTitle = null,
    Object? siteName = null,
    Object? siteid = null,
    Object? subsidyFee = null,
    Object? subsidyRate = null,
    Object? subsidyType = null,
    Object? tbDepositTime = null,
    Object? tbPaidTime = null,
    Object? terminalType = null,
    Object? tkCommissionFeeForMediaPlatform = null,
    Object? tkCommissionPreFeeForMediaPlatform = null,
    Object? tkCommissionRateForMediaPlatform = null,
    Object? tkCreateTime = null,
    Object? tkDepositTime = null,
    Object? tkOrderRole = null,
    Object? tkPaidTime = null,
    Object? tkStatus = null,
    Object? tkTotalRate = null,
    Object? totalCommissionFee = null,
    Object? totalCommissionRate = null,
    Object? tradeParentid = null,
    Object? tradeid = null,
    Object? zheAccount = null,
    Object? zheActId = null,
    Object? zheAppKey = null,
    Object? zheCode = null,
    Object? zheCustomerIdZtk = null,
    Object? zheIsJieSuan = null,
    Object? zheJieSuanProfit = null,
    Object? zheJieSuanTime = null,
    Object? zheOrderId = null,
    Object? zhePayPrice = null,
    Object? zhePayTime = null,
    Object? zhePlatformZtk = null,
    Object? zheProfit = null,
    Object? zheRefundPrice = null,
    Object? zheRefundTime = null,
    Object? zheSanPingTai = null,
    Object? zheSanPingTaiId = null,
    Object? zheSid = null,
    Object? zheSidZtk = null,
    Object? zheSmsTitle = null,
    Object? zheStatus = null,
    Object? zheType = null,
    Object? zheUpdateTime = null,
  }) {
    return _then(_self.copyWith(
      adzoneName: null == adzoneName
          ? _self.adzoneName
          : adzoneName // ignore: cast_nullable_to_non_nullable
              as String,
      adzoneid: null == adzoneid
          ? _self.adzoneid
          : adzoneid // ignore: cast_nullable_to_non_nullable
              as String,
      alimamaRate: null == alimamaRate
          ? _self.alimamaRate
          : alimamaRate // ignore: cast_nullable_to_non_nullable
              as String,
      alimamaShareFee: null == alimamaShareFee
          ? _self.alimamaShareFee
          : alimamaShareFee // ignore: cast_nullable_to_non_nullable
              as String,
      alipayTotalPrice: null == alipayTotalPrice
          ? _self.alipayTotalPrice
          : alipayTotalPrice // ignore: cast_nullable_to_non_nullable
              as String,
      clickTime: null == clickTime
          ? _self.clickTime
          : clickTime // ignore: cast_nullable_to_non_nullable
              as String,
      depositPrice: null == depositPrice
          ? _self.depositPrice
          : depositPrice // ignore: cast_nullable_to_non_nullable
              as String,
      flowSource: null == flowSource
          ? _self.flowSource
          : flowSource // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      incomeRate: null == incomeRate
          ? _self.incomeRate
          : incomeRate // ignore: cast_nullable_to_non_nullable
              as String,
      itemCategoryName: null == itemCategoryName
          ? _self.itemCategoryName
          : itemCategoryName // ignore: cast_nullable_to_non_nullable
              as String,
      itemImg: null == itemImg
          ? _self.itemImg
          : itemImg // ignore: cast_nullable_to_non_nullable
              as String,
      itemLink: null == itemLink
          ? _self.itemLink
          : itemLink // ignore: cast_nullable_to_non_nullable
              as String,
      itemNum: null == itemNum
          ? _self.itemNum
          : itemNum // ignore: cast_nullable_to_non_nullable
              as int,
      itemPrice: null == itemPrice
          ? _self.itemPrice
          : itemPrice // ignore: cast_nullable_to_non_nullable
              as String,
      itemTitle: null == itemTitle
          ? _self.itemTitle
          : itemTitle // ignore: cast_nullable_to_non_nullable
              as String,
      itemid: null == itemid
          ? _self.itemid
          : itemid // ignore: cast_nullable_to_non_nullable
              as String,
      orderType: null == orderType
          ? _self.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String,
      pubShareFee: null == pubShareFee
          ? _self.pubShareFee
          : pubShareFee // ignore: cast_nullable_to_non_nullable
              as String,
      pubSharePreFee: null == pubSharePreFee
          ? _self.pubSharePreFee
          : pubSharePreFee // ignore: cast_nullable_to_non_nullable
              as String,
      pubShareRate: null == pubShareRate
          ? _self.pubShareRate
          : pubShareRate // ignore: cast_nullable_to_non_nullable
              as String,
      pubid: null == pubid
          ? _self.pubid
          : pubid // ignore: cast_nullable_to_non_nullable
              as int,
      refundTag: null == refundTag
          ? _self.refundTag
          : refundTag // ignore: cast_nullable_to_non_nullable
              as int,
      relationId: null == relationId
          ? _self.relationId
          : relationId // ignore: cast_nullable_to_non_nullable
              as String,
      sellerNick: null == sellerNick
          ? _self.sellerNick
          : sellerNick // ignore: cast_nullable_to_non_nullable
              as String,
      sellerShopTitle: null == sellerShopTitle
          ? _self.sellerShopTitle
          : sellerShopTitle // ignore: cast_nullable_to_non_nullable
              as String,
      siteName: null == siteName
          ? _self.siteName
          : siteName // ignore: cast_nullable_to_non_nullable
              as String,
      siteid: null == siteid
          ? _self.siteid
          : siteid // ignore: cast_nullable_to_non_nullable
              as int,
      subsidyFee: null == subsidyFee
          ? _self.subsidyFee
          : subsidyFee // ignore: cast_nullable_to_non_nullable
              as String,
      subsidyRate: null == subsidyRate
          ? _self.subsidyRate
          : subsidyRate // ignore: cast_nullable_to_non_nullable
              as String,
      subsidyType: null == subsidyType
          ? _self.subsidyType
          : subsidyType // ignore: cast_nullable_to_non_nullable
              as String,
      tbDepositTime: null == tbDepositTime
          ? _self.tbDepositTime
          : tbDepositTime // ignore: cast_nullable_to_non_nullable
              as String,
      tbPaidTime: null == tbPaidTime
          ? _self.tbPaidTime
          : tbPaidTime // ignore: cast_nullable_to_non_nullable
              as String,
      terminalType: null == terminalType
          ? _self.terminalType
          : terminalType // ignore: cast_nullable_to_non_nullable
              as String,
      tkCommissionFeeForMediaPlatform: null == tkCommissionFeeForMediaPlatform
          ? _self.tkCommissionFeeForMediaPlatform
          : tkCommissionFeeForMediaPlatform // ignore: cast_nullable_to_non_nullable
              as String,
      tkCommissionPreFeeForMediaPlatform: null ==
              tkCommissionPreFeeForMediaPlatform
          ? _self.tkCommissionPreFeeForMediaPlatform
          : tkCommissionPreFeeForMediaPlatform // ignore: cast_nullable_to_non_nullable
              as String,
      tkCommissionRateForMediaPlatform: null == tkCommissionRateForMediaPlatform
          ? _self.tkCommissionRateForMediaPlatform
          : tkCommissionRateForMediaPlatform // ignore: cast_nullable_to_non_nullable
              as String,
      tkCreateTime: null == tkCreateTime
          ? _self.tkCreateTime
          : tkCreateTime // ignore: cast_nullable_to_non_nullable
              as String,
      tkDepositTime: null == tkDepositTime
          ? _self.tkDepositTime
          : tkDepositTime // ignore: cast_nullable_to_non_nullable
              as String,
      tkOrderRole: null == tkOrderRole
          ? _self.tkOrderRole
          : tkOrderRole // ignore: cast_nullable_to_non_nullable
              as int,
      tkPaidTime: null == tkPaidTime
          ? _self.tkPaidTime
          : tkPaidTime // ignore: cast_nullable_to_non_nullable
              as String,
      tkStatus: null == tkStatus
          ? _self.tkStatus
          : tkStatus // ignore: cast_nullable_to_non_nullable
              as int,
      tkTotalRate: null == tkTotalRate
          ? _self.tkTotalRate
          : tkTotalRate // ignore: cast_nullable_to_non_nullable
              as String,
      totalCommissionFee: null == totalCommissionFee
          ? _self.totalCommissionFee
          : totalCommissionFee // ignore: cast_nullable_to_non_nullable
              as String,
      totalCommissionRate: null == totalCommissionRate
          ? _self.totalCommissionRate
          : totalCommissionRate // ignore: cast_nullable_to_non_nullable
              as String,
      tradeParentid: null == tradeParentid
          ? _self.tradeParentid
          : tradeParentid // ignore: cast_nullable_to_non_nullable
              as String,
      tradeid: null == tradeid
          ? _self.tradeid
          : tradeid // ignore: cast_nullable_to_non_nullable
              as String,
      zheAccount: null == zheAccount
          ? _self.zheAccount
          : zheAccount // ignore: cast_nullable_to_non_nullable
              as String,
      zheActId: null == zheActId
          ? _self.zheActId
          : zheActId // ignore: cast_nullable_to_non_nullable
              as String,
      zheAppKey: null == zheAppKey
          ? _self.zheAppKey
          : zheAppKey // ignore: cast_nullable_to_non_nullable
              as String,
      zheCode: null == zheCode
          ? _self.zheCode
          : zheCode // ignore: cast_nullable_to_non_nullable
              as String,
      zheCustomerIdZtk: null == zheCustomerIdZtk
          ? _self.zheCustomerIdZtk
          : zheCustomerIdZtk // ignore: cast_nullable_to_non_nullable
              as String,
      zheIsJieSuan: null == zheIsJieSuan
          ? _self.zheIsJieSuan
          : zheIsJieSuan // ignore: cast_nullable_to_non_nullable
              as String,
      zheJieSuanProfit: null == zheJieSuanProfit
          ? _self.zheJieSuanProfit
          : zheJieSuanProfit // ignore: cast_nullable_to_non_nullable
              as String,
      zheJieSuanTime: null == zheJieSuanTime
          ? _self.zheJieSuanTime
          : zheJieSuanTime // ignore: cast_nullable_to_non_nullable
              as String,
      zheOrderId: null == zheOrderId
          ? _self.zheOrderId
          : zheOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      zhePayPrice: null == zhePayPrice
          ? _self.zhePayPrice
          : zhePayPrice // ignore: cast_nullable_to_non_nullable
              as String,
      zhePayTime: null == zhePayTime
          ? _self.zhePayTime
          : zhePayTime // ignore: cast_nullable_to_non_nullable
              as String,
      zhePlatformZtk: null == zhePlatformZtk
          ? _self.zhePlatformZtk
          : zhePlatformZtk // ignore: cast_nullable_to_non_nullable
              as String,
      zheProfit: null == zheProfit
          ? _self.zheProfit
          : zheProfit // ignore: cast_nullable_to_non_nullable
              as String,
      zheRefundPrice: null == zheRefundPrice
          ? _self.zheRefundPrice
          : zheRefundPrice // ignore: cast_nullable_to_non_nullable
              as String,
      zheRefundTime: null == zheRefundTime
          ? _self.zheRefundTime
          : zheRefundTime // ignore: cast_nullable_to_non_nullable
              as String,
      zheSanPingTai: null == zheSanPingTai
          ? _self.zheSanPingTai
          : zheSanPingTai // ignore: cast_nullable_to_non_nullable
              as String,
      zheSanPingTaiId: null == zheSanPingTaiId
          ? _self.zheSanPingTaiId
          : zheSanPingTaiId // ignore: cast_nullable_to_non_nullable
              as String,
      zheSid: null == zheSid
          ? _self.zheSid
          : zheSid // ignore: cast_nullable_to_non_nullable
              as String,
      zheSidZtk: null == zheSidZtk
          ? _self.zheSidZtk
          : zheSidZtk // ignore: cast_nullable_to_non_nullable
              as String,
      zheSmsTitle: null == zheSmsTitle
          ? _self.zheSmsTitle
          : zheSmsTitle // ignore: cast_nullable_to_non_nullable
              as String,
      zheStatus: null == zheStatus
          ? _self.zheStatus
          : zheStatus // ignore: cast_nullable_to_non_nullable
              as String,
      zheType: null == zheType
          ? _self.zheType
          : zheType // ignore: cast_nullable_to_non_nullable
              as String,
      zheUpdateTime: null == zheUpdateTime
          ? _self.zheUpdateTime
          : zheUpdateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _UserOrderInfo extends UserOrderInfo {
  const _UserOrderInfo(
      {@JsonKey(name: 'adzoneName') this.adzoneName = '',
      @JsonKey(name: 'adzoneid') this.adzoneid = '',
      @JsonKey(name: 'alimamaRate') this.alimamaRate = '',
      @JsonKey(name: 'alimamaShareFee') this.alimamaShareFee = '',
      @JsonKey(name: 'alipayTotalPrice') this.alipayTotalPrice = '',
      @JsonKey(name: 'clickTime') this.clickTime = '',
      @JsonKey(name: 'depositPrice') this.depositPrice = '',
      @JsonKey(name: 'flowSource') this.flowSource = '',
      @JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'incomeRate') this.incomeRate = '',
      @JsonKey(name: 'itemCategoryName') this.itemCategoryName = '',
      @JsonKey(name: 'itemImg') this.itemImg = '',
      @JsonKey(name: 'itemLink') this.itemLink = '',
      @JsonKey(name: 'itemNum') this.itemNum = 0,
      @JsonKey(name: 'itemPrice') this.itemPrice = '',
      @JsonKey(name: 'itemTitle') this.itemTitle = '',
      @JsonKey(name: 'itemid') this.itemid = '',
      @JsonKey(name: 'orderType') this.orderType = '',
      @JsonKey(name: 'pubShareFee') this.pubShareFee = '',
      @JsonKey(name: 'pubSharePreFee') this.pubSharePreFee = '',
      @JsonKey(name: 'pubShareRate') this.pubShareRate = '',
      @JsonKey(name: 'pubid') this.pubid = 0,
      @JsonKey(name: 'refundTag') this.refundTag = 0,
      @JsonKey(name: 'relationId', fromJson: _toString) this.relationId = '',
      @JsonKey(name: 'sellerNick') this.sellerNick = '',
      @JsonKey(name: 'sellerShopTitle') this.sellerShopTitle = '',
      @JsonKey(name: 'siteName') this.siteName = '',
      @JsonKey(name: 'siteid') this.siteid = 0,
      @JsonKey(name: 'subsidyFee') this.subsidyFee = '',
      @JsonKey(name: 'subsidyRate') this.subsidyRate = '',
      @JsonKey(name: 'subsidyType') this.subsidyType = '',
      @JsonKey(name: 'tbDepositTime') this.tbDepositTime = '',
      @JsonKey(name: 'tbPaidTime') this.tbPaidTime = '',
      @JsonKey(name: 'terminalType') this.terminalType = '',
      @JsonKey(name: 'tkCommissionFeeForMediaPlatform')
      this.tkCommissionFeeForMediaPlatform = '',
      @JsonKey(name: 'tkCommissionPreFeeForMediaPlatform')
      this.tkCommissionPreFeeForMediaPlatform = '',
      @JsonKey(name: 'tkCommissionRateForMediaPlatform')
      this.tkCommissionRateForMediaPlatform = '',
      @JsonKey(name: 'tkCreateTime') this.tkCreateTime = '',
      @JsonKey(name: 'tkDepositTime') this.tkDepositTime = '',
      @JsonKey(name: 'tkOrderRole') this.tkOrderRole = 0,
      @JsonKey(name: 'tkPaidTime') this.tkPaidTime = '',
      @JsonKey(name: 'tkStatus') this.tkStatus = 0,
      @JsonKey(name: 'tkTotalRate') this.tkTotalRate = '',
      @JsonKey(name: 'totalCommissionFee') this.totalCommissionFee = '',
      @JsonKey(name: 'totalCommissionRate') this.totalCommissionRate = '',
      @JsonKey(name: 'tradeParentid') this.tradeParentid = '',
      @JsonKey(name: 'tradeid') this.tradeid = '',
      @JsonKey(name: 'zheAccount') this.zheAccount = '',
      @JsonKey(name: 'zheActId') this.zheActId = '',
      @JsonKey(name: 'zheAppKey') this.zheAppKey = '',
      @JsonKey(name: 'zheCode') this.zheCode = '',
      @JsonKey(name: 'zheCustomerIdZtk') this.zheCustomerIdZtk = '',
      @JsonKey(name: 'zheIsJieSuan') this.zheIsJieSuan = '',
      @JsonKey(name: 'zheJieSuanProfit') this.zheJieSuanProfit = '',
      @JsonKey(name: 'zheJieSuanTime') this.zheJieSuanTime = '',
      @JsonKey(name: 'zheOrderId') this.zheOrderId = '',
      @JsonKey(name: 'zhePayPrice') this.zhePayPrice = '',
      @JsonKey(name: 'zhePayTime') this.zhePayTime = '',
      @JsonKey(name: 'zhePlatformZtk') this.zhePlatformZtk = '',
      @JsonKey(name: 'zheProfit') this.zheProfit = '',
      @JsonKey(name: 'zheRefundPrice') this.zheRefundPrice = '',
      @JsonKey(name: 'zheRefundTime') this.zheRefundTime = '',
      @JsonKey(name: 'zheSanPingTai') this.zheSanPingTai = '',
      @JsonKey(name: 'zheSanPingTaiId') this.zheSanPingTaiId = '',
      @JsonKey(name: 'zheSid') this.zheSid = '',
      @JsonKey(name: 'zheSidZtk') this.zheSidZtk = '',
      @JsonKey(name: 'zheSmsTitle') this.zheSmsTitle = '',
      @JsonKey(name: 'zheStatus') this.zheStatus = '',
      @JsonKey(name: 'zheType') this.zheType = '',
      @JsonKey(name: 'zheUpdateTime') this.zheUpdateTime = ''})
      : super._();
  factory _UserOrderInfo.fromJson(Map<String, dynamic> json) =>
      _$UserOrderInfoFromJson(json);

  @override
  @JsonKey(name: 'adzoneName')
  final String adzoneName;
  @override
  @JsonKey(name: 'adzoneid')
  final String adzoneid;
  @override
  @JsonKey(name: 'alimamaRate')
  final String alimamaRate;
  @override
  @JsonKey(name: 'alimamaShareFee')
  final String alimamaShareFee;
  @override
  @JsonKey(name: 'alipayTotalPrice')
  final String alipayTotalPrice;
  @override
  @JsonKey(name: 'clickTime')
  final String clickTime;
  @override
  @JsonKey(name: 'depositPrice')
  final String depositPrice;
  @override
  @JsonKey(name: 'flowSource')
  final String flowSource;
  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'incomeRate')
  final String incomeRate;
  @override
  @JsonKey(name: 'itemCategoryName')
  final String itemCategoryName;
  @override
  @JsonKey(name: 'itemImg')
  final String itemImg;
  @override
  @JsonKey(name: 'itemLink')
  final String itemLink;
  @override
  @JsonKey(name: 'itemNum')
  final int itemNum;
  @override
  @JsonKey(name: 'itemPrice')
  final String itemPrice;
  @override
  @JsonKey(name: 'itemTitle')
  final String itemTitle;
  @override
  @JsonKey(name: 'itemid')
  final String itemid;
  @override
  @JsonKey(name: 'orderType')
  final String orderType;
  @override
  @JsonKey(name: 'pubShareFee')
  final String pubShareFee;
  @override
  @JsonKey(name: 'pubSharePreFee')
  final String pubSharePreFee;
  @override
  @JsonKey(name: 'pubShareRate')
  final String pubShareRate;
  @override
  @JsonKey(name: 'pubid')
  final int pubid;
  @override
  @JsonKey(name: 'refundTag')
  final int refundTag;
  @override
  @JsonKey(name: 'relationId', fromJson: _toString)
  final String relationId;
  @override
  @JsonKey(name: 'sellerNick')
  final String sellerNick;
  @override
  @JsonKey(name: 'sellerShopTitle')
  final String sellerShopTitle;
  @override
  @JsonKey(name: 'siteName')
  final String siteName;
  @override
  @JsonKey(name: 'siteid')
  final int siteid;
  @override
  @JsonKey(name: 'subsidyFee')
  final String subsidyFee;
  @override
  @JsonKey(name: 'subsidyRate')
  final String subsidyRate;
  @override
  @JsonKey(name: 'subsidyType')
  final String subsidyType;
  @override
  @JsonKey(name: 'tbDepositTime')
  final String tbDepositTime;
  @override
  @JsonKey(name: 'tbPaidTime')
  final String tbPaidTime;
  @override
  @JsonKey(name: 'terminalType')
  final String terminalType;
  @override
  @JsonKey(name: 'tkCommissionFeeForMediaPlatform')
  final String tkCommissionFeeForMediaPlatform;
  @override
  @JsonKey(name: 'tkCommissionPreFeeForMediaPlatform')
  final String tkCommissionPreFeeForMediaPlatform;
  @override
  @JsonKey(name: 'tkCommissionRateForMediaPlatform')
  final String tkCommissionRateForMediaPlatform;
  @override
  @JsonKey(name: 'tkCreateTime')
  final String tkCreateTime;
  @override
  @JsonKey(name: 'tkDepositTime')
  final String tkDepositTime;
  @override
  @JsonKey(name: 'tkOrderRole')
  final int tkOrderRole;
  @override
  @JsonKey(name: 'tkPaidTime')
  final String tkPaidTime;
  @override
  @JsonKey(name: 'tkStatus')
  final int tkStatus;
  @override
  @JsonKey(name: 'tkTotalRate')
  final String tkTotalRate;
  @override
  @JsonKey(name: 'totalCommissionFee')
  final String totalCommissionFee;
  @override
  @JsonKey(name: 'totalCommissionRate')
  final String totalCommissionRate;
  @override
  @JsonKey(name: 'tradeParentid')
  final String tradeParentid;
  @override
  @JsonKey(name: 'tradeid')
  final String tradeid;
  @override
  @JsonKey(name: 'zheAccount')
  final String zheAccount;
  @override
  @JsonKey(name: 'zheActId')
  final String zheActId;
  @override
  @JsonKey(name: 'zheAppKey')
  final String zheAppKey;
  @override
  @JsonKey(name: 'zheCode')
  final String zheCode;
  @override
  @JsonKey(name: 'zheCustomerIdZtk')
  final String zheCustomerIdZtk;
  @override
  @JsonKey(name: 'zheIsJieSuan')
  final String zheIsJieSuan;
  @override
  @JsonKey(name: 'zheJieSuanProfit')
  final String zheJieSuanProfit;
  @override
  @JsonKey(name: 'zheJieSuanTime')
  final String zheJieSuanTime;
  @override
  @JsonKey(name: 'zheOrderId')
  final String zheOrderId;
  @override
  @JsonKey(name: 'zhePayPrice')
  final String zhePayPrice;
  @override
  @JsonKey(name: 'zhePayTime')
  final String zhePayTime;
  @override
  @JsonKey(name: 'zhePlatformZtk')
  final String zhePlatformZtk;
  @override
  @JsonKey(name: 'zheProfit')
  final String zheProfit;
  @override
  @JsonKey(name: 'zheRefundPrice')
  final String zheRefundPrice;
  @override
  @JsonKey(name: 'zheRefundTime')
  final String zheRefundTime;
  @override
  @JsonKey(name: 'zheSanPingTai')
  final String zheSanPingTai;
  @override
  @JsonKey(name: 'zheSanPingTaiId')
  final String zheSanPingTaiId;
  @override
  @JsonKey(name: 'zheSid')
  final String zheSid;
  @override
  @JsonKey(name: 'zheSidZtk')
  final String zheSidZtk;
  @override
  @JsonKey(name: 'zheSmsTitle')
  final String zheSmsTitle;
  @override
  @JsonKey(name: 'zheStatus')
  final String zheStatus;
  @override
  @JsonKey(name: 'zheType')
  final String zheType;
  @override
  @JsonKey(name: 'zheUpdateTime')
  final String zheUpdateTime;

  /// Create a copy of UserOrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserOrderInfoCopyWith<_UserOrderInfo> get copyWith =>
      __$UserOrderInfoCopyWithImpl<_UserOrderInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserOrderInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserOrderInfo &&
            (identical(other.adzoneName, adzoneName) ||
                other.adzoneName == adzoneName) &&
            (identical(other.adzoneid, adzoneid) ||
                other.adzoneid == adzoneid) &&
            (identical(other.alimamaRate, alimamaRate) ||
                other.alimamaRate == alimamaRate) &&
            (identical(other.alimamaShareFee, alimamaShareFee) ||
                other.alimamaShareFee == alimamaShareFee) &&
            (identical(other.alipayTotalPrice, alipayTotalPrice) ||
                other.alipayTotalPrice == alipayTotalPrice) &&
            (identical(other.clickTime, clickTime) ||
                other.clickTime == clickTime) &&
            (identical(other.depositPrice, depositPrice) ||
                other.depositPrice == depositPrice) &&
            (identical(other.flowSource, flowSource) ||
                other.flowSource == flowSource) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.incomeRate, incomeRate) ||
                other.incomeRate == incomeRate) &&
            (identical(other.itemCategoryName, itemCategoryName) ||
                other.itemCategoryName == itemCategoryName) &&
            (identical(other.itemImg, itemImg) || other.itemImg == itemImg) &&
            (identical(other.itemLink, itemLink) ||
                other.itemLink == itemLink) &&
            (identical(other.itemNum, itemNum) || other.itemNum == itemNum) &&
            (identical(other.itemPrice, itemPrice) ||
                other.itemPrice == itemPrice) &&
            (identical(other.itemTitle, itemTitle) ||
                other.itemTitle == itemTitle) &&
            (identical(other.itemid, itemid) || other.itemid == itemid) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
            (identical(other.pubShareFee, pubShareFee) ||
                other.pubShareFee == pubShareFee) &&
            (identical(other.pubSharePreFee, pubSharePreFee) ||
                other.pubSharePreFee == pubSharePreFee) &&
            (identical(other.pubShareRate, pubShareRate) ||
                other.pubShareRate == pubShareRate) &&
            (identical(other.pubid, pubid) || other.pubid == pubid) &&
            (identical(other.refundTag, refundTag) ||
                other.refundTag == refundTag) &&
            (identical(other.relationId, relationId) ||
                other.relationId == relationId) &&
            (identical(other.sellerNick, sellerNick) ||
                other.sellerNick == sellerNick) &&
            (identical(other.sellerShopTitle, sellerShopTitle) ||
                other.sellerShopTitle == sellerShopTitle) &&
            (identical(other.siteName, siteName) ||
                other.siteName == siteName) &&
            (identical(other.siteid, siteid) || other.siteid == siteid) &&
            (identical(other.subsidyFee, subsidyFee) ||
                other.subsidyFee == subsidyFee) &&
            (identical(other.subsidyRate, subsidyRate) ||
                other.subsidyRate == subsidyRate) &&
            (identical(other.subsidyType, subsidyType) ||
                other.subsidyType == subsidyType) &&
            (identical(other.tbDepositTime, tbDepositTime) ||
                other.tbDepositTime == tbDepositTime) &&
            (identical(other.tbPaidTime, tbPaidTime) ||
                other.tbPaidTime == tbPaidTime) &&
            (identical(other.terminalType, terminalType) ||
                other.terminalType == terminalType) &&
            (identical(other.tkCommissionFeeForMediaPlatform, tkCommissionFeeForMediaPlatform) ||
                other.tkCommissionFeeForMediaPlatform ==
                    tkCommissionFeeForMediaPlatform) &&
            (identical(other.tkCommissionPreFeeForMediaPlatform, tkCommissionPreFeeForMediaPlatform) ||
                other.tkCommissionPreFeeForMediaPlatform ==
                    tkCommissionPreFeeForMediaPlatform) &&
            (identical(other.tkCommissionRateForMediaPlatform, tkCommissionRateForMediaPlatform) ||
                other.tkCommissionRateForMediaPlatform ==
                    tkCommissionRateForMediaPlatform) &&
            (identical(other.tkCreateTime, tkCreateTime) ||
                other.tkCreateTime == tkCreateTime) &&
            (identical(other.tkDepositTime, tkDepositTime) ||
                other.tkDepositTime == tkDepositTime) &&
            (identical(other.tkOrderRole, tkOrderRole) ||
                other.tkOrderRole == tkOrderRole) &&
            (identical(other.tkPaidTime, tkPaidTime) ||
                other.tkPaidTime == tkPaidTime) &&
            (identical(other.tkStatus, tkStatus) ||
                other.tkStatus == tkStatus) &&
            (identical(other.tkTotalRate, tkTotalRate) ||
                other.tkTotalRate == tkTotalRate) &&
            (identical(other.totalCommissionFee, totalCommissionFee) ||
                other.totalCommissionFee == totalCommissionFee) &&
            (identical(other.totalCommissionRate, totalCommissionRate) ||
                other.totalCommissionRate == totalCommissionRate) &&
            (identical(other.tradeParentid, tradeParentid) || other.tradeParentid == tradeParentid) &&
            (identical(other.tradeid, tradeid) || other.tradeid == tradeid) &&
            (identical(other.zheAccount, zheAccount) || other.zheAccount == zheAccount) &&
            (identical(other.zheActId, zheActId) || other.zheActId == zheActId) &&
            (identical(other.zheAppKey, zheAppKey) || other.zheAppKey == zheAppKey) &&
            (identical(other.zheCode, zheCode) || other.zheCode == zheCode) &&
            (identical(other.zheCustomerIdZtk, zheCustomerIdZtk) || other.zheCustomerIdZtk == zheCustomerIdZtk) &&
            (identical(other.zheIsJieSuan, zheIsJieSuan) || other.zheIsJieSuan == zheIsJieSuan) &&
            (identical(other.zheJieSuanProfit, zheJieSuanProfit) || other.zheJieSuanProfit == zheJieSuanProfit) &&
            (identical(other.zheJieSuanTime, zheJieSuanTime) || other.zheJieSuanTime == zheJieSuanTime) &&
            (identical(other.zheOrderId, zheOrderId) || other.zheOrderId == zheOrderId) &&
            (identical(other.zhePayPrice, zhePayPrice) || other.zhePayPrice == zhePayPrice) &&
            (identical(other.zhePayTime, zhePayTime) || other.zhePayTime == zhePayTime) &&
            (identical(other.zhePlatformZtk, zhePlatformZtk) || other.zhePlatformZtk == zhePlatformZtk) &&
            (identical(other.zheProfit, zheProfit) || other.zheProfit == zheProfit) &&
            (identical(other.zheRefundPrice, zheRefundPrice) || other.zheRefundPrice == zheRefundPrice) &&
            (identical(other.zheRefundTime, zheRefundTime) || other.zheRefundTime == zheRefundTime) &&
            (identical(other.zheSanPingTai, zheSanPingTai) || other.zheSanPingTai == zheSanPingTai) &&
            (identical(other.zheSanPingTaiId, zheSanPingTaiId) || other.zheSanPingTaiId == zheSanPingTaiId) &&
            (identical(other.zheSid, zheSid) || other.zheSid == zheSid) &&
            (identical(other.zheSidZtk, zheSidZtk) || other.zheSidZtk == zheSidZtk) &&
            (identical(other.zheSmsTitle, zheSmsTitle) || other.zheSmsTitle == zheSmsTitle) &&
            (identical(other.zheStatus, zheStatus) || other.zheStatus == zheStatus) &&
            (identical(other.zheType, zheType) || other.zheType == zheType) &&
            (identical(other.zheUpdateTime, zheUpdateTime) || other.zheUpdateTime == zheUpdateTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        adzoneName,
        adzoneid,
        alimamaRate,
        alimamaShareFee,
        alipayTotalPrice,
        clickTime,
        depositPrice,
        flowSource,
        id,
        incomeRate,
        itemCategoryName,
        itemImg,
        itemLink,
        itemNum,
        itemPrice,
        itemTitle,
        itemid,
        orderType,
        pubShareFee,
        pubSharePreFee,
        pubShareRate,
        pubid,
        refundTag,
        relationId,
        sellerNick,
        sellerShopTitle,
        siteName,
        siteid,
        subsidyFee,
        subsidyRate,
        subsidyType,
        tbDepositTime,
        tbPaidTime,
        terminalType,
        tkCommissionFeeForMediaPlatform,
        tkCommissionPreFeeForMediaPlatform,
        tkCommissionRateForMediaPlatform,
        tkCreateTime,
        tkDepositTime,
        tkOrderRole,
        tkPaidTime,
        tkStatus,
        tkTotalRate,
        totalCommissionFee,
        totalCommissionRate,
        tradeParentid,
        tradeid,
        zheAccount,
        zheActId,
        zheAppKey,
        zheCode,
        zheCustomerIdZtk,
        zheIsJieSuan,
        zheJieSuanProfit,
        zheJieSuanTime,
        zheOrderId,
        zhePayPrice,
        zhePayTime,
        zhePlatformZtk,
        zheProfit,
        zheRefundPrice,
        zheRefundTime,
        zheSanPingTai,
        zheSanPingTaiId,
        zheSid,
        zheSidZtk,
        zheSmsTitle,
        zheStatus,
        zheType,
        zheUpdateTime
      ]);

  @override
  String toString() {
    return 'UserOrderInfo(adzoneName: $adzoneName, adzoneid: $adzoneid, alimamaRate: $alimamaRate, alimamaShareFee: $alimamaShareFee, alipayTotalPrice: $alipayTotalPrice, clickTime: $clickTime, depositPrice: $depositPrice, flowSource: $flowSource, id: $id, incomeRate: $incomeRate, itemCategoryName: $itemCategoryName, itemImg: $itemImg, itemLink: $itemLink, itemNum: $itemNum, itemPrice: $itemPrice, itemTitle: $itemTitle, itemid: $itemid, orderType: $orderType, pubShareFee: $pubShareFee, pubSharePreFee: $pubSharePreFee, pubShareRate: $pubShareRate, pubid: $pubid, refundTag: $refundTag, relationId: $relationId, sellerNick: $sellerNick, sellerShopTitle: $sellerShopTitle, siteName: $siteName, siteid: $siteid, subsidyFee: $subsidyFee, subsidyRate: $subsidyRate, subsidyType: $subsidyType, tbDepositTime: $tbDepositTime, tbPaidTime: $tbPaidTime, terminalType: $terminalType, tkCommissionFeeForMediaPlatform: $tkCommissionFeeForMediaPlatform, tkCommissionPreFeeForMediaPlatform: $tkCommissionPreFeeForMediaPlatform, tkCommissionRateForMediaPlatform: $tkCommissionRateForMediaPlatform, tkCreateTime: $tkCreateTime, tkDepositTime: $tkDepositTime, tkOrderRole: $tkOrderRole, tkPaidTime: $tkPaidTime, tkStatus: $tkStatus, tkTotalRate: $tkTotalRate, totalCommissionFee: $totalCommissionFee, totalCommissionRate: $totalCommissionRate, tradeParentid: $tradeParentid, tradeid: $tradeid, zheAccount: $zheAccount, zheActId: $zheActId, zheAppKey: $zheAppKey, zheCode: $zheCode, zheCustomerIdZtk: $zheCustomerIdZtk, zheIsJieSuan: $zheIsJieSuan, zheJieSuanProfit: $zheJieSuanProfit, zheJieSuanTime: $zheJieSuanTime, zheOrderId: $zheOrderId, zhePayPrice: $zhePayPrice, zhePayTime: $zhePayTime, zhePlatformZtk: $zhePlatformZtk, zheProfit: $zheProfit, zheRefundPrice: $zheRefundPrice, zheRefundTime: $zheRefundTime, zheSanPingTai: $zheSanPingTai, zheSanPingTaiId: $zheSanPingTaiId, zheSid: $zheSid, zheSidZtk: $zheSidZtk, zheSmsTitle: $zheSmsTitle, zheStatus: $zheStatus, zheType: $zheType, zheUpdateTime: $zheUpdateTime)';
  }
}

/// @nodoc
abstract mixin class _$UserOrderInfoCopyWith<$Res>
    implements $UserOrderInfoCopyWith<$Res> {
  factory _$UserOrderInfoCopyWith(
          _UserOrderInfo value, $Res Function(_UserOrderInfo) _then) =
      __$UserOrderInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'adzoneName') String adzoneName,
      @JsonKey(name: 'adzoneid') String adzoneid,
      @JsonKey(name: 'alimamaRate') String alimamaRate,
      @JsonKey(name: 'alimamaShareFee') String alimamaShareFee,
      @JsonKey(name: 'alipayTotalPrice') String alipayTotalPrice,
      @JsonKey(name: 'clickTime') String clickTime,
      @JsonKey(name: 'depositPrice') String depositPrice,
      @JsonKey(name: 'flowSource') String flowSource,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'incomeRate') String incomeRate,
      @JsonKey(name: 'itemCategoryName') String itemCategoryName,
      @JsonKey(name: 'itemImg') String itemImg,
      @JsonKey(name: 'itemLink') String itemLink,
      @JsonKey(name: 'itemNum') int itemNum,
      @JsonKey(name: 'itemPrice') String itemPrice,
      @JsonKey(name: 'itemTitle') String itemTitle,
      @JsonKey(name: 'itemid') String itemid,
      @JsonKey(name: 'orderType') String orderType,
      @JsonKey(name: 'pubShareFee') String pubShareFee,
      @JsonKey(name: 'pubSharePreFee') String pubSharePreFee,
      @JsonKey(name: 'pubShareRate') String pubShareRate,
      @JsonKey(name: 'pubid') int pubid,
      @JsonKey(name: 'refundTag') int refundTag,
      @JsonKey(name: 'relationId', fromJson: _toString) String relationId,
      @JsonKey(name: 'sellerNick') String sellerNick,
      @JsonKey(name: 'sellerShopTitle') String sellerShopTitle,
      @JsonKey(name: 'siteName') String siteName,
      @JsonKey(name: 'siteid') int siteid,
      @JsonKey(name: 'subsidyFee') String subsidyFee,
      @JsonKey(name: 'subsidyRate') String subsidyRate,
      @JsonKey(name: 'subsidyType') String subsidyType,
      @JsonKey(name: 'tbDepositTime') String tbDepositTime,
      @JsonKey(name: 'tbPaidTime') String tbPaidTime,
      @JsonKey(name: 'terminalType') String terminalType,
      @JsonKey(name: 'tkCommissionFeeForMediaPlatform')
      String tkCommissionFeeForMediaPlatform,
      @JsonKey(name: 'tkCommissionPreFeeForMediaPlatform')
      String tkCommissionPreFeeForMediaPlatform,
      @JsonKey(name: 'tkCommissionRateForMediaPlatform')
      String tkCommissionRateForMediaPlatform,
      @JsonKey(name: 'tkCreateTime') String tkCreateTime,
      @JsonKey(name: 'tkDepositTime') String tkDepositTime,
      @JsonKey(name: 'tkOrderRole') int tkOrderRole,
      @JsonKey(name: 'tkPaidTime') String tkPaidTime,
      @JsonKey(name: 'tkStatus') int tkStatus,
      @JsonKey(name: 'tkTotalRate') String tkTotalRate,
      @JsonKey(name: 'totalCommissionFee') String totalCommissionFee,
      @JsonKey(name: 'totalCommissionRate') String totalCommissionRate,
      @JsonKey(name: 'tradeParentid') String tradeParentid,
      @JsonKey(name: 'tradeid') String tradeid,
      @JsonKey(name: 'zheAccount') String zheAccount,
      @JsonKey(name: 'zheActId') String zheActId,
      @JsonKey(name: 'zheAppKey') String zheAppKey,
      @JsonKey(name: 'zheCode') String zheCode,
      @JsonKey(name: 'zheCustomerIdZtk') String zheCustomerIdZtk,
      @JsonKey(name: 'zheIsJieSuan') String zheIsJieSuan,
      @JsonKey(name: 'zheJieSuanProfit') String zheJieSuanProfit,
      @JsonKey(name: 'zheJieSuanTime') String zheJieSuanTime,
      @JsonKey(name: 'zheOrderId') String zheOrderId,
      @JsonKey(name: 'zhePayPrice') String zhePayPrice,
      @JsonKey(name: 'zhePayTime') String zhePayTime,
      @JsonKey(name: 'zhePlatformZtk') String zhePlatformZtk,
      @JsonKey(name: 'zheProfit') String zheProfit,
      @JsonKey(name: 'zheRefundPrice') String zheRefundPrice,
      @JsonKey(name: 'zheRefundTime') String zheRefundTime,
      @JsonKey(name: 'zheSanPingTai') String zheSanPingTai,
      @JsonKey(name: 'zheSanPingTaiId') String zheSanPingTaiId,
      @JsonKey(name: 'zheSid') String zheSid,
      @JsonKey(name: 'zheSidZtk') String zheSidZtk,
      @JsonKey(name: 'zheSmsTitle') String zheSmsTitle,
      @JsonKey(name: 'zheStatus') String zheStatus,
      @JsonKey(name: 'zheType') String zheType,
      @JsonKey(name: 'zheUpdateTime') String zheUpdateTime});
}

/// @nodoc
class __$UserOrderInfoCopyWithImpl<$Res>
    implements _$UserOrderInfoCopyWith<$Res> {
  __$UserOrderInfoCopyWithImpl(this._self, this._then);

  final _UserOrderInfo _self;
  final $Res Function(_UserOrderInfo) _then;

  /// Create a copy of UserOrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? adzoneName = null,
    Object? adzoneid = null,
    Object? alimamaRate = null,
    Object? alimamaShareFee = null,
    Object? alipayTotalPrice = null,
    Object? clickTime = null,
    Object? depositPrice = null,
    Object? flowSource = null,
    Object? id = null,
    Object? incomeRate = null,
    Object? itemCategoryName = null,
    Object? itemImg = null,
    Object? itemLink = null,
    Object? itemNum = null,
    Object? itemPrice = null,
    Object? itemTitle = null,
    Object? itemid = null,
    Object? orderType = null,
    Object? pubShareFee = null,
    Object? pubSharePreFee = null,
    Object? pubShareRate = null,
    Object? pubid = null,
    Object? refundTag = null,
    Object? relationId = null,
    Object? sellerNick = null,
    Object? sellerShopTitle = null,
    Object? siteName = null,
    Object? siteid = null,
    Object? subsidyFee = null,
    Object? subsidyRate = null,
    Object? subsidyType = null,
    Object? tbDepositTime = null,
    Object? tbPaidTime = null,
    Object? terminalType = null,
    Object? tkCommissionFeeForMediaPlatform = null,
    Object? tkCommissionPreFeeForMediaPlatform = null,
    Object? tkCommissionRateForMediaPlatform = null,
    Object? tkCreateTime = null,
    Object? tkDepositTime = null,
    Object? tkOrderRole = null,
    Object? tkPaidTime = null,
    Object? tkStatus = null,
    Object? tkTotalRate = null,
    Object? totalCommissionFee = null,
    Object? totalCommissionRate = null,
    Object? tradeParentid = null,
    Object? tradeid = null,
    Object? zheAccount = null,
    Object? zheActId = null,
    Object? zheAppKey = null,
    Object? zheCode = null,
    Object? zheCustomerIdZtk = null,
    Object? zheIsJieSuan = null,
    Object? zheJieSuanProfit = null,
    Object? zheJieSuanTime = null,
    Object? zheOrderId = null,
    Object? zhePayPrice = null,
    Object? zhePayTime = null,
    Object? zhePlatformZtk = null,
    Object? zheProfit = null,
    Object? zheRefundPrice = null,
    Object? zheRefundTime = null,
    Object? zheSanPingTai = null,
    Object? zheSanPingTaiId = null,
    Object? zheSid = null,
    Object? zheSidZtk = null,
    Object? zheSmsTitle = null,
    Object? zheStatus = null,
    Object? zheType = null,
    Object? zheUpdateTime = null,
  }) {
    return _then(_UserOrderInfo(
      adzoneName: null == adzoneName
          ? _self.adzoneName
          : adzoneName // ignore: cast_nullable_to_non_nullable
              as String,
      adzoneid: null == adzoneid
          ? _self.adzoneid
          : adzoneid // ignore: cast_nullable_to_non_nullable
              as String,
      alimamaRate: null == alimamaRate
          ? _self.alimamaRate
          : alimamaRate // ignore: cast_nullable_to_non_nullable
              as String,
      alimamaShareFee: null == alimamaShareFee
          ? _self.alimamaShareFee
          : alimamaShareFee // ignore: cast_nullable_to_non_nullable
              as String,
      alipayTotalPrice: null == alipayTotalPrice
          ? _self.alipayTotalPrice
          : alipayTotalPrice // ignore: cast_nullable_to_non_nullable
              as String,
      clickTime: null == clickTime
          ? _self.clickTime
          : clickTime // ignore: cast_nullable_to_non_nullable
              as String,
      depositPrice: null == depositPrice
          ? _self.depositPrice
          : depositPrice // ignore: cast_nullable_to_non_nullable
              as String,
      flowSource: null == flowSource
          ? _self.flowSource
          : flowSource // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      incomeRate: null == incomeRate
          ? _self.incomeRate
          : incomeRate // ignore: cast_nullable_to_non_nullable
              as String,
      itemCategoryName: null == itemCategoryName
          ? _self.itemCategoryName
          : itemCategoryName // ignore: cast_nullable_to_non_nullable
              as String,
      itemImg: null == itemImg
          ? _self.itemImg
          : itemImg // ignore: cast_nullable_to_non_nullable
              as String,
      itemLink: null == itemLink
          ? _self.itemLink
          : itemLink // ignore: cast_nullable_to_non_nullable
              as String,
      itemNum: null == itemNum
          ? _self.itemNum
          : itemNum // ignore: cast_nullable_to_non_nullable
              as int,
      itemPrice: null == itemPrice
          ? _self.itemPrice
          : itemPrice // ignore: cast_nullable_to_non_nullable
              as String,
      itemTitle: null == itemTitle
          ? _self.itemTitle
          : itemTitle // ignore: cast_nullable_to_non_nullable
              as String,
      itemid: null == itemid
          ? _self.itemid
          : itemid // ignore: cast_nullable_to_non_nullable
              as String,
      orderType: null == orderType
          ? _self.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String,
      pubShareFee: null == pubShareFee
          ? _self.pubShareFee
          : pubShareFee // ignore: cast_nullable_to_non_nullable
              as String,
      pubSharePreFee: null == pubSharePreFee
          ? _self.pubSharePreFee
          : pubSharePreFee // ignore: cast_nullable_to_non_nullable
              as String,
      pubShareRate: null == pubShareRate
          ? _self.pubShareRate
          : pubShareRate // ignore: cast_nullable_to_non_nullable
              as String,
      pubid: null == pubid
          ? _self.pubid
          : pubid // ignore: cast_nullable_to_non_nullable
              as int,
      refundTag: null == refundTag
          ? _self.refundTag
          : refundTag // ignore: cast_nullable_to_non_nullable
              as int,
      relationId: null == relationId
          ? _self.relationId
          : relationId // ignore: cast_nullable_to_non_nullable
              as String,
      sellerNick: null == sellerNick
          ? _self.sellerNick
          : sellerNick // ignore: cast_nullable_to_non_nullable
              as String,
      sellerShopTitle: null == sellerShopTitle
          ? _self.sellerShopTitle
          : sellerShopTitle // ignore: cast_nullable_to_non_nullable
              as String,
      siteName: null == siteName
          ? _self.siteName
          : siteName // ignore: cast_nullable_to_non_nullable
              as String,
      siteid: null == siteid
          ? _self.siteid
          : siteid // ignore: cast_nullable_to_non_nullable
              as int,
      subsidyFee: null == subsidyFee
          ? _self.subsidyFee
          : subsidyFee // ignore: cast_nullable_to_non_nullable
              as String,
      subsidyRate: null == subsidyRate
          ? _self.subsidyRate
          : subsidyRate // ignore: cast_nullable_to_non_nullable
              as String,
      subsidyType: null == subsidyType
          ? _self.subsidyType
          : subsidyType // ignore: cast_nullable_to_non_nullable
              as String,
      tbDepositTime: null == tbDepositTime
          ? _self.tbDepositTime
          : tbDepositTime // ignore: cast_nullable_to_non_nullable
              as String,
      tbPaidTime: null == tbPaidTime
          ? _self.tbPaidTime
          : tbPaidTime // ignore: cast_nullable_to_non_nullable
              as String,
      terminalType: null == terminalType
          ? _self.terminalType
          : terminalType // ignore: cast_nullable_to_non_nullable
              as String,
      tkCommissionFeeForMediaPlatform: null == tkCommissionFeeForMediaPlatform
          ? _self.tkCommissionFeeForMediaPlatform
          : tkCommissionFeeForMediaPlatform // ignore: cast_nullable_to_non_nullable
              as String,
      tkCommissionPreFeeForMediaPlatform: null ==
              tkCommissionPreFeeForMediaPlatform
          ? _self.tkCommissionPreFeeForMediaPlatform
          : tkCommissionPreFeeForMediaPlatform // ignore: cast_nullable_to_non_nullable
              as String,
      tkCommissionRateForMediaPlatform: null == tkCommissionRateForMediaPlatform
          ? _self.tkCommissionRateForMediaPlatform
          : tkCommissionRateForMediaPlatform // ignore: cast_nullable_to_non_nullable
              as String,
      tkCreateTime: null == tkCreateTime
          ? _self.tkCreateTime
          : tkCreateTime // ignore: cast_nullable_to_non_nullable
              as String,
      tkDepositTime: null == tkDepositTime
          ? _self.tkDepositTime
          : tkDepositTime // ignore: cast_nullable_to_non_nullable
              as String,
      tkOrderRole: null == tkOrderRole
          ? _self.tkOrderRole
          : tkOrderRole // ignore: cast_nullable_to_non_nullable
              as int,
      tkPaidTime: null == tkPaidTime
          ? _self.tkPaidTime
          : tkPaidTime // ignore: cast_nullable_to_non_nullable
              as String,
      tkStatus: null == tkStatus
          ? _self.tkStatus
          : tkStatus // ignore: cast_nullable_to_non_nullable
              as int,
      tkTotalRate: null == tkTotalRate
          ? _self.tkTotalRate
          : tkTotalRate // ignore: cast_nullable_to_non_nullable
              as String,
      totalCommissionFee: null == totalCommissionFee
          ? _self.totalCommissionFee
          : totalCommissionFee // ignore: cast_nullable_to_non_nullable
              as String,
      totalCommissionRate: null == totalCommissionRate
          ? _self.totalCommissionRate
          : totalCommissionRate // ignore: cast_nullable_to_non_nullable
              as String,
      tradeParentid: null == tradeParentid
          ? _self.tradeParentid
          : tradeParentid // ignore: cast_nullable_to_non_nullable
              as String,
      tradeid: null == tradeid
          ? _self.tradeid
          : tradeid // ignore: cast_nullable_to_non_nullable
              as String,
      zheAccount: null == zheAccount
          ? _self.zheAccount
          : zheAccount // ignore: cast_nullable_to_non_nullable
              as String,
      zheActId: null == zheActId
          ? _self.zheActId
          : zheActId // ignore: cast_nullable_to_non_nullable
              as String,
      zheAppKey: null == zheAppKey
          ? _self.zheAppKey
          : zheAppKey // ignore: cast_nullable_to_non_nullable
              as String,
      zheCode: null == zheCode
          ? _self.zheCode
          : zheCode // ignore: cast_nullable_to_non_nullable
              as String,
      zheCustomerIdZtk: null == zheCustomerIdZtk
          ? _self.zheCustomerIdZtk
          : zheCustomerIdZtk // ignore: cast_nullable_to_non_nullable
              as String,
      zheIsJieSuan: null == zheIsJieSuan
          ? _self.zheIsJieSuan
          : zheIsJieSuan // ignore: cast_nullable_to_non_nullable
              as String,
      zheJieSuanProfit: null == zheJieSuanProfit
          ? _self.zheJieSuanProfit
          : zheJieSuanProfit // ignore: cast_nullable_to_non_nullable
              as String,
      zheJieSuanTime: null == zheJieSuanTime
          ? _self.zheJieSuanTime
          : zheJieSuanTime // ignore: cast_nullable_to_non_nullable
              as String,
      zheOrderId: null == zheOrderId
          ? _self.zheOrderId
          : zheOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      zhePayPrice: null == zhePayPrice
          ? _self.zhePayPrice
          : zhePayPrice // ignore: cast_nullable_to_non_nullable
              as String,
      zhePayTime: null == zhePayTime
          ? _self.zhePayTime
          : zhePayTime // ignore: cast_nullable_to_non_nullable
              as String,
      zhePlatformZtk: null == zhePlatformZtk
          ? _self.zhePlatformZtk
          : zhePlatformZtk // ignore: cast_nullable_to_non_nullable
              as String,
      zheProfit: null == zheProfit
          ? _self.zheProfit
          : zheProfit // ignore: cast_nullable_to_non_nullable
              as String,
      zheRefundPrice: null == zheRefundPrice
          ? _self.zheRefundPrice
          : zheRefundPrice // ignore: cast_nullable_to_non_nullable
              as String,
      zheRefundTime: null == zheRefundTime
          ? _self.zheRefundTime
          : zheRefundTime // ignore: cast_nullable_to_non_nullable
              as String,
      zheSanPingTai: null == zheSanPingTai
          ? _self.zheSanPingTai
          : zheSanPingTai // ignore: cast_nullable_to_non_nullable
              as String,
      zheSanPingTaiId: null == zheSanPingTaiId
          ? _self.zheSanPingTaiId
          : zheSanPingTaiId // ignore: cast_nullable_to_non_nullable
              as String,
      zheSid: null == zheSid
          ? _self.zheSid
          : zheSid // ignore: cast_nullable_to_non_nullable
              as String,
      zheSidZtk: null == zheSidZtk
          ? _self.zheSidZtk
          : zheSidZtk // ignore: cast_nullable_to_non_nullable
              as String,
      zheSmsTitle: null == zheSmsTitle
          ? _self.zheSmsTitle
          : zheSmsTitle // ignore: cast_nullable_to_non_nullable
              as String,
      zheStatus: null == zheStatus
          ? _self.zheStatus
          : zheStatus // ignore: cast_nullable_to_non_nullable
              as String,
      zheType: null == zheType
          ? _self.zheType
          : zheType // ignore: cast_nullable_to_non_nullable
              as String,
      zheUpdateTime: null == zheUpdateTime
          ? _self.zheUpdateTime
          : zheUpdateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
