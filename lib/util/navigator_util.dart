// Flutter imports:
// Package imports:
import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

// Project imports:
import '../pages/ddq_page/index_home.dart';
import '../pages/detail_page/hdk/index_home.dart';
import '../pages/index_page/index_home.dart';
import '../pages/other_page/not_found_page.dart';
import '../pages/search/view.dart';
import '../pages/user_home_page/login/login_page.dart';
import '../pages/user_home_page/order/my_order.dart';
import '../pages/user_home_page/order/order_add.dart';
import '../pages/user_home_page/white/index.dart';

// 路由工具类
class NavigatorUtil {
  // 跳转首页方法
  static void gotoHomePage(BuildContext context) {
    context.navigator.pushReplacement(SwipeablePageRoute(builder: (_)=>const IndexHome()));
  }

  // 跳转商品详情页方法
  static void gotoGoodsDetailPage(BuildContext context, String goodsId,{bool newViewPage=false}) {
      context.navigator.push(
          SwipeablePageRoute(builder: (_) => HaoDanKuDetailItem(goodsId: goodsId,)));
  }

//  跳转到错误页面
  static void gotoErrorPage(BuildContext context) {
    context.navigator.push(
        SwipeablePageRoute(builder: (_) => const NotFoundPage()));
  }


  //跳转到钉钉抢页面
  static void goTODdqPage() {
    Get.context!.navigator.push(
        SwipeablePageRoute(builder: (_) => const DdqIndexHome()));
  }

  // 跳转到登入页面
  static void gotoUserLoginPage(BuildContext context) {
    context.navigator.push(
        SwipeablePageRoute(builder: (_) => const UserLoginPage()));
  }

  // 跳转到发布动态页面
  static void goetoWhitePage(BuildContext context){
    context.navigator.push(
        SwipeablePageRoute(builder: (_) => const WhiteIndex()));
  }

  // 跳转到绑定订单页面
  static void gotoOrderAddIndexPage(BuildContext context){
    context.navigator.push(
        SwipeablePageRoute(builder: (_) => const OrderAddIndexPage()));
  }

  static void gotoOrderAllIndexPage(BuildContext context,String _stype){
    context.navigator.push(
        SwipeablePageRoute(builder: (_) => MyOrderHomePage(stype: _stype,)));
  }

  // 前往好单库商品详情页面
  static void gotoHaodankuGoodsDetailPage(BuildContext context,String? goodsId){
    context.navigator.push(
        SwipeablePageRoute(builder: (_) => HaoDanKuDetailItem(goodsId:goodsId!)));
  }

  /// 跳转到搜索页面
  ///
  /// [worlds] 初始化搜索关键字

  void toSearchPage({String? worlds}){
    Get.to(() => SearchPage(
      initSearchKeyWord: worlds??'',
    ));
  }
}
