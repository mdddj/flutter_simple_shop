import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
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
    context.navToWidget(to: const IndexHome());
  }

  // 跳转商品详情页方法
  static void gotoGoodsDetailPage(BuildContext context, String goodsId,{bool newViewPage=false}) {
      context.navToWidget(to: HaoDanKuDetailItem(goodsId: goodsId,));
  }

//  跳转到错误页面
  static void gotoErrorPage(BuildContext context) {
    context.navToWidget(to: const NotFoundPage());
  }


  //跳转到钉钉抢页面
  static void goTODdqPage(BuildContext context) {
    context.navToWidget(to: const DdqIndexHome());
  }

  // 跳转到登入页面
  static void gotoUserLoginPage(BuildContext context) {
    context.navToWidget(to: const UserLoginPage());
  }

  // 跳转到发布动态页面
  static void goetoWhitePage(BuildContext context){
    context.navToWidget(to: const WhiteIndex());
  }

  // 跳转到绑定订单页面
  static void gotoOrderAddIndexPage(BuildContext context){
    context.navToWidget(to: const OrderAddIndexPage());
  }

  static void gotoOrderAllIndexPage(BuildContext context,String stype){
    context.navToWidget(to: MyOrderHomePage(stype: stype,));
  }

  // 前往好单库商品详情页面
  static void gotoHaodankuGoodsDetailPage(BuildContext context,String? goodsId){
    context.navToWidget(to: HaoDanKuDetailItem(goodsId:goodsId!));
  }

  /// 跳转到搜索页面
  ///
  /// [worlds] 初始化搜索关键字

  void toSearchPage(BuildContext context,{String? worlds}){
    context.navToWidget(to: SearchPage(
      initSearchKeyWord: worlds??'',
    ));
  }
}
