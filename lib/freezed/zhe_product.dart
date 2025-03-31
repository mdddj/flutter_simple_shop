import 'package:freezed_annotation/freezed_annotation.dart';

part 'zhe_product.freezed.dart';

part 'zhe_product.g.dart';

@freezed
sealed class ZheProduct with _$ZheProduct {
  const ZheProduct._();

  const factory ZheProduct({
    @JsonKey(name: 'code') @Default('') String code,
    @JsonKey(name: 'type_one_id') @Default('') String typeOneId,
    @JsonKey(name: 'tao_id') @Default('') String taoId,
    @JsonKey(name: 'title') @Default('') String title,
    @JsonKey(name: 'jianjie') @Default('') String jianjie,
    @JsonKey(name: 'pict_url') @Default('') String pictUrl,
    @JsonKey(name: 'user_type') @Default('') String userType,
    @JsonKey(name: 'seller_id') @Default('') String sellerId,
    @JsonKey(name: 'shop_dsr') @Default('') String shopDsr,
    @JsonKey(name: 'volume') @Default('') String volume,
    @JsonKey(name: 'size') @Default('') String size,
    @JsonKey(name: 'quanhou_jiage') @Default('') String quanhouJiage,
    @JsonKey(name: 'date_time_yongjin') @Default('') String dateTimeYongjin,
    @JsonKey(name: 'tkrate3') @Default('') String tkrate3,
    @JsonKey(name: 'yongjin_type') @Default('') String yongjinType,
    @JsonKey(name: 'coupon_id') @Default('') String couponId,
    @JsonKey(name: 'coupon_start_time') @Default('') String couponStartTime,
    @JsonKey(name: 'coupon_end_time') @Default('') String couponEndTime,
    @JsonKey(name: 'coupon_info_money') @Default('') String couponInfoMoney,
    @JsonKey(name: 'coupon_total_count') @Default('') String couponTotalCount,
    @JsonKey(name: 'coupon_remain_count') @Default('') String couponRemainCount,
    @JsonKey(name: 'coupon_info') @Default('') String couponInfo,
    @JsonKey(name: 'juhuasuan') @Default('') String juhuasuan,
    @JsonKey(name: 'taoqianggou') @Default('') String taoqianggou,
    @JsonKey(name: 'haitao') @Default('') String haitao,
    @JsonKey(name: 'jiyoujia') @Default('') String jiyoujia,
    @JsonKey(name: 'jinpaimaijia') @Default('') String jinpaimaijia,
    @JsonKey(name: 'pinpai') @Default('') String pinpai,
    @JsonKey(name: 'pinpai_name') @Default('') String pinpaiName,
    @JsonKey(name: 'yunfeixian') @Default('') String yunfeixian,
    @JsonKey(name: 'nick') @Default('') String nick,
    @JsonKey(name: 'small_images') @Default('') String smallImages,
    @JsonKey(name: 'white_image') @Default('') String whiteImage,
    @JsonKey(name: 'tao_title') @Default('') String taoTitle,
    @JsonKey(name: 'provcity') @Default('') String provcity,
    @JsonKey(name: 'shop_title') @Default('') String shopTitle,
    @JsonKey(name: 'zhibo_url') @Default('') String zhiboUrl,
    @JsonKey(name: 'sellCount') @Default('') String sellCount,
    @JsonKey(name: 'commentCount') @Default('') String commentCount,
    @JsonKey(name: 'favcount') @Default('') String favcount,
    @JsonKey(name: 'score1') @Default('') String score1,
    @JsonKey(name: 'score2') @Default('') String score2,
    @JsonKey(name: 'score3') @Default('') String score3,
    @JsonKey(name: 'creditLevel') @Default('') String creditLevel,
    @JsonKey(name: 'shopIcon') @Default('') String shopIcon,
    @JsonKey(name: 'pcDescContent') @Default('') String pcDescContent,
    @JsonKey(name: 'item_url') @Default('') String itemUrl,
    @JsonKey(name: 'category_id') @Default('') String categoryId,
    @JsonKey(name: 'category_name') @Default('') String categoryName,
    @JsonKey(name: 'level_one_category_id')
    @Default('')
    String levelOneCategoryId,
    @JsonKey(name: 'level_one_category_name')
    @Default('')
    String levelOneCategoryName,
    @JsonKey(name: 'tkfee3') @Default('') String tkfee3,
    @JsonKey(name: 'biaoqian') @Default('') String biaoqian,
    @JsonKey(name: 'tag') @Default('') String tag,
    @JsonKey(name: 'date_time') @Default('') String dateTime,
    @JsonKey(name: 'presale_discount_fee_text')
    @Default('')
    String presaleDiscountFeeText,
    @JsonKey(name: 'presale_tail_end_time')
    @Default('')
    String presaleTailEndTime,
    @JsonKey(name: 'presale_tail_start_time')
    @Default('')
    String presaleTailStartTime,
    @JsonKey(name: 'presale_end_time') @Default('') String presaleEndTime,
    @JsonKey(name: 'presale_start_time') @Default('') String presaleStartTime,
    @JsonKey(name: 'presale_deposit') @Default('') String presaleDeposit,
  }) = _ZheProduct;

  factory ZheProduct.fromJson(dynamic json) => _$ZheProductFromJson(json);
}
