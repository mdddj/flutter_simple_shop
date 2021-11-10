// 通用类型

// Package imports:
import 'package:common_utils/common_utils.dart';

import '../../modals/pdd_detail_model.dart';
// Project imports:
import '../dynamic/model/wph_detail_resul.dart';

class PublicDetailModel {
  String type; //类型 ,taobao , jindong, pdd
  String title; // 标题
  String goodsImage; // 产品主图
  double price; // 价格
  String id; // 产品的id (用来转链)
  String coupon; // 券金额
  List<String> detailImages; // 产品详情图
  String sales; // 销量

  PublicDetailModel({required this.type, required this.title, required this.goodsImage, required this.price, required this.id, required this.detailImages, required this.coupon, required this.sales});

  /// 拼夕夕
  factory PublicDetailModel.fromPdd(PddDetail detail) {
    return PublicDetailModel(
        type: '拼多多',
        title: detail.goodsName,
        goodsImage: detail.goodsThumbnailUrl,
        price: double.parse(MoneyUtil.changeF2Y(detail.minGroupPrice)),
        id: detail.goodsSign,
        detailImages: detail.goodsGalleryUrls,
        coupon: MoneyUtil.changeF2Y(detail.couponDiscount),
        sales: detail.salesTip);
  }

  // 唯品会
  factory PublicDetailModel.fromWph(WeipinhuiDetail detail) {
    return PublicDetailModel(
        type: '唯品会',
        title: detail.goodsName,
        goodsImage: detail.goodsThumbUrl,
        price: double.parse(detail.vipPrice),
        id: detail.goodsId,
        detailImages: detail.goodsDetailPictures,
        coupon: '',
        sales: '0');
  }
}
