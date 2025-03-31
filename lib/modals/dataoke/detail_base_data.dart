import 'package:freezed_annotation/freezed_annotation.dart';

import '../dd/product.dart';

part 'detail_base_data.freezed.dart';

part 'detail_base_data.g.dart';

@freezed
sealed class DetailBaseDataResult with _$DetailBaseDataResult {
  const DetailBaseDataResult._();

  const factory DetailBaseDataResult({
    @JsonKey(name: 'detail') required Product info,
    @JsonKey(name: 'similarList') @Default([]) List<Product> similarProducts,
    @JsonKey(name: 'privilegeLink')
    @Default(CouponLinkResult())
    CouponLinkResult couponInfo,
  }) = _DetailBaseDataResult;

  factory DetailBaseDataResult.fromJson(Map<String, dynamic> json) =>
      _$DetailBaseDataResultFromJson(json);
}

@freezed
sealed class CouponLinkResult with _$CouponLinkResult {
  const CouponLinkResult._();

  const factory CouponLinkResult({
    @Default('') String? couponRemainCount,
    @Default('') String? kuaiZhanUrl,
    @Default('') String? minCommissionRate,
    @Default(0) num originalPrice,
    @Default('') String? couponInfo,
    @Default(0) num actualPrice,
    @Default('') String? shortUrl,
    @Default('') String? maxCommissionRate,
    @Default('') String? couponEndTime,
    @Default('') String? couponTotalCount,
    @Default('') String? itemId,
    @Default('') String? couponStartTime,
    @Default('') String? couponClickUrl,
    @Default('') String? itemUrl,
    @Default('') String? longTpwd,
    @Default('') String? tpwd,
  }) = _CouponLinkResult;

  factory CouponLinkResult.fromJson(Map<String, dynamic> json) =>
      _$CouponLinkResultFromJson(json);
}
