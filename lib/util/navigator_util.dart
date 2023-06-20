part of util;

// 路由工具类
class NavigatorUtil {
  // 跳转商品详情页方法
  static void gotoGoodsDetailPage(BuildContext context, String goodsId,
      {bool newViewPage = false}) {
    context.navToWidget(
        to: HaoDanKuDetailItem(
      goodsId: goodsId,
    ));
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
  static void goetoWhitePage(BuildContext context) {
    context.navToWidget(to: const WhiteIndex());
  }

  // 跳转到绑定订单页面
  static void gotoOrderAddIndexPage(BuildContext context) {
    context.navToWidget(to: const OrderAddIndexPage());
  }

  static void gotoOrderAllIndexPage(BuildContext context, String stype) {
    context.navToWidget(
        to: MyOrderHomePage(
      stype: stype,
    ));
  }

  // 前往好单库商品详情页面
  static void gotoHaodankuGoodsDetailPage(
      BuildContext context, String? goodsId) {
    context.navToWidget(to: HaoDanKuDetailItem(goodsId: goodsId!));
  }

  /// 跳转到搜索页面
  ///
  /// [worlds] 初始化搜索关键字

  void toSearchPage(BuildContext context, {String? worlds}) {
    context.navToWidget(
        to: SearchPage(
      initSearchKeyWord: worlds ?? '',
    ));
  }
}
