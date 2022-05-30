import 'package:flutter/material.dart';

// Project imports:
import '../modals/coupon_data.dart';
import '../modals/goods_info.dart';
import '../util/system_toast.dart';

class GoodsDetailProvider extends ChangeNotifier {
  GoodsDetail? goodInfo; // 商品信息
  CouponData? couponData; // 优惠券信息
  int isHaveFav = 0; // 是否已经收藏,0 - 没有,1 - 有
  bool have = false; // 商品是否有效


  void setNullInfo() {
    goodInfo = null;
    couponData = null;
    have = false;
    isHaveFav = 0;
  }

  // 用户添加商品收藏
  Future<bool> addGoodsFavoriteFun() async {
    return true;
  }

  // 用户移除某个商品收藏
  Future<bool> removeGoodsFavoriteFun({String? goodsId}) async {
    if(goodsId==null){
    }
    return true;
  }

  // 判断收藏按钮显示
  Future<void> haveFav() async {
  }

  // 获取优惠券信息
  void getPrivilegeLinkData(String? goodsId) async {
  }

  @override
  void dispose() {
    super.dispose();
    goodInfo = null;
  }
}
