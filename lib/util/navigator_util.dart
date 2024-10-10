part of 'index.dart';

// 路由工具类
class NavigatorUtil {
  // 跳转商品详情页方法
  static void gotoGoodsDetailPage(BuildContext context, String goodsId, {bool newViewPage = false}) {
    context.push(pagerUtil.goodsDetail.routername, extra: goodsId);
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
  static void gotoHaodankuGoodsDetailPage(BuildContext context, String? goodsId) {
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

  ///显示隐私政策的弹出
  static Future<void> showPrivacyPolicyDialog(BuildContext context) async {
    final ctx = context;
    getIt.get<PrivacyCache>().isAgree().then((value) {
      if (value.not && ctx.mounted) {
        //弹出隐私政策的弹出
        showDialog<bool>(
            context: context,
            builder: (_) {
              return const PrivacyDialog();
            }).then((result) {
          if (result?.not == true) {
            exit(0);
          }
        });
      }
    });
  }
}
