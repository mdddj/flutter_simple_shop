import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_order_info.freezed.dart';

part 'user_order_info.g.dart';

/// 用户订单模型
@freezed
sealed class UserOrderInfo with _$UserOrderInfo {
  const UserOrderInfo._();

  const factory UserOrderInfo({
    @JsonKey(name: 'adzoneName') @Default('') String adzoneName,
    @JsonKey(name: 'adzoneid') @Default('') String adzoneid,
    @JsonKey(name: 'alimamaRate') @Default('') String alimamaRate,
    @JsonKey(name: 'alimamaShareFee') @Default('') String alimamaShareFee,
    @JsonKey(name: 'alipayTotalPrice') @Default('') String alipayTotalPrice,
    @JsonKey(name: 'clickTime') @Default('') String clickTime,
    @JsonKey(name: 'depositPrice') @Default('') String depositPrice,
    @JsonKey(name: 'flowSource') @Default('') String flowSource,
    @JsonKey(name: 'id') @Default(0) int id,
    @JsonKey(name: 'incomeRate') @Default('') String incomeRate,
    @JsonKey(name: 'itemCategoryName') @Default('') String itemCategoryName,
    @JsonKey(name: 'itemImg') @Default('') String itemImg,
    @JsonKey(name: 'itemLink') @Default('') String itemLink,
    @JsonKey(name: 'itemNum') @Default(0) int itemNum,
    @JsonKey(name: 'itemPrice') @Default('') String itemPrice,
    @JsonKey(name: 'itemTitle') @Default('') String itemTitle,
    @JsonKey(name: 'itemid') @Default('') String itemid,
    @JsonKey(name: 'orderType') @Default('') String orderType,
    @JsonKey(name: 'pubShareFee') @Default('') String pubShareFee,
    @JsonKey(name: 'pubSharePreFee') @Default('') String pubSharePreFee,
    @JsonKey(name: 'pubShareRate') @Default('') String pubShareRate,
    @JsonKey(name: 'pubid') @Default(0) int pubid,
    @JsonKey(name: 'refundTag') @Default(0) int refundTag,
    @JsonKey(name: 'relationId', fromJson: _toString)
    @Default('')
    String relationId,
    @JsonKey(name: 'sellerNick') @Default('') String sellerNick,
    @JsonKey(name: 'sellerShopTitle') @Default('') String sellerShopTitle,
    @JsonKey(name: 'siteName') @Default('') String siteName,
    @JsonKey(name: 'siteid') @Default(0) int siteid,
    @JsonKey(name: 'subsidyFee') @Default('') String subsidyFee,
    @JsonKey(name: 'subsidyRate') @Default('') String subsidyRate,
    @JsonKey(name: 'subsidyType') @Default('') String subsidyType,
    @JsonKey(name: 'tbDepositTime') @Default('') String tbDepositTime,
    @JsonKey(name: 'tbPaidTime') @Default('') String tbPaidTime,
    @JsonKey(name: 'terminalType') @Default('') String terminalType,
    @JsonKey(name: 'tkCommissionFeeForMediaPlatform')
    @Default('')
    String tkCommissionFeeForMediaPlatform,
    @JsonKey(name: 'tkCommissionPreFeeForMediaPlatform')
    @Default('')
    String tkCommissionPreFeeForMediaPlatform,
    @JsonKey(name: 'tkCommissionRateForMediaPlatform')
    @Default('')
    String tkCommissionRateForMediaPlatform,
    @JsonKey(name: 'tkCreateTime') @Default('') String tkCreateTime,
    @JsonKey(name: 'tkDepositTime') @Default('') String tkDepositTime,
    @JsonKey(name: 'tkOrderRole') @Default(0) int tkOrderRole,
    @JsonKey(name: 'tkPaidTime') @Default('') String tkPaidTime,
    @JsonKey(name: 'tkStatus') @Default(0) int tkStatus,
    @JsonKey(name: 'tkTotalRate') @Default('') String tkTotalRate,
    @JsonKey(name: 'totalCommissionFee') @Default('') String totalCommissionFee,
    @JsonKey(name: 'totalCommissionRate')
    @Default('')
    String totalCommissionRate,
    @JsonKey(name: 'tradeParentid') @Default('') String tradeParentid,
    @JsonKey(name: 'tradeid') @Default('') String tradeid,
    @JsonKey(name: 'zheAccount') @Default('') String zheAccount,
    @JsonKey(name: 'zheActId') @Default('') String zheActId,
    @JsonKey(name: 'zheAppKey') @Default('') String zheAppKey,
    @JsonKey(name: 'zheCode') @Default('') String zheCode,
    @JsonKey(name: 'zheCustomerIdZtk') @Default('') String zheCustomerIdZtk,
    @JsonKey(name: 'zheIsJieSuan') @Default('') String zheIsJieSuan,
    @JsonKey(name: 'zheJieSuanProfit') @Default('') String zheJieSuanProfit,
    @JsonKey(name: 'zheJieSuanTime') @Default('') String zheJieSuanTime,
    @JsonKey(name: 'zheOrderId') @Default('') String zheOrderId,
    @JsonKey(name: 'zhePayPrice') @Default('') String zhePayPrice,
    @JsonKey(name: 'zhePayTime') @Default('') String zhePayTime,
    @JsonKey(name: 'zhePlatformZtk') @Default('') String zhePlatformZtk,
    @JsonKey(name: 'zheProfit') @Default('') String zheProfit,
    @JsonKey(name: 'zheRefundPrice') @Default('') String zheRefundPrice,
    @JsonKey(name: 'zheRefundTime') @Default('') String zheRefundTime,
    @JsonKey(name: 'zheSanPingTai') @Default('') String zheSanPingTai,
    @JsonKey(name: 'zheSanPingTaiId') @Default('') String zheSanPingTaiId,
    @JsonKey(name: 'zheSid') @Default('') String zheSid,
    @JsonKey(name: 'zheSidZtk') @Default('') String zheSidZtk,
    @JsonKey(name: 'zheSmsTitle') @Default('') String zheSmsTitle,
    @JsonKey(name: 'zheStatus') @Default('') String zheStatus,
    @JsonKey(name: 'zheType') @Default('') String zheType,
    @JsonKey(name: 'zheUpdateTime') @Default('') String zheUpdateTime,
  }) = _UserOrderInfo;

  factory UserOrderInfo.fromJson(dynamic json) => _$UserOrderInfoFromJson(json);
}

String _toString(dynamic v) => '$v';
