part of 'index.dart';

PagerUtil pagerUtil = GetIt.instance.get<PagerUtil>();

class PagerUtil {
  ///首页
  Pager get app => const Pager(routername: '/app');

  /// home
  Pager get home => const Pager(routername: '/home');

  ///发布动态页面
  Pager get resourceWrite => const Pager(routername: '/resource/write');

  ///动态列表
  Pager get resourceList => const Pager(routername: '/dyn');

  ///面基列表
  Pager get meetList => const Pager(routername: '/meet');

  ///面基申请
  Pager get meetAdd => const Pager(routername: '/meet/add');

  ///设置
  Pager get setting => const Pager(routername: '/setting');

  ///登录
  Pager get login => const Pager(routername: '/login');

  ///饿了么
  Pager get elm => const Pager(routername: '/elm');

  ///品牌
  Pager get brand => const Pager(routername: '/brand');

  ///搜索
  Pager get search => const Pager(routername: '/search');

  ///订单
  Pager get order => const Pager(routername: '/order');

  ///产品详情
  Pager get goodsDetail => const Pager(routername: "/goods");

  ///9.9
  Pager get nineNine => const Pager(routername: '/nine-nine');

  ///大分类
  Pager get mainCategory => const Pager(routername: '/cates');

  /// 产品收藏
  Pager get fav => const Pager(routername: '/fav');

  ///个人中心
  Pager get profile => const Pager(routername: '/profile');
}

FutureOr<String?> redirectToLogin(BuildContext context, GoRouterState state) {
  if (UserApi.userToken.isEmpty) {
    return pagerUtil.login.routername;
  }
  return null;
}

///页面路由
final routers = GoRouter(
  initialLocation: pagerUtil.home.routername,
  routes: [
    StatefulShellRoute.indexedStack(
      branches: [
        StatefulShellBranch(routes: [
          GoRoute(
            path: pagerUtil.home.routername,
            builder: (context, state) => const IndexHomeNew(),
          ),
        ]),
        StatefulShellBranch(routes: [
          GoRoute(
            path: pagerUtil.nineNine.routername,
            builder: (context, state) => const JiuJiuIndex(),
          ),
        ]),
        StatefulShellBranch(routes: [
          GoRoute(
            path: pagerUtil.mainCategory.routername,
            builder: (context, state) => const CategoryIndexPage(),
          ),
        ]),
        StatefulShellBranch(routes: [
          GoRoute(
            path: pagerUtil.fav.routername,
            builder: (context, state) => const FavoriteIndexHome(),
          ),
        ]),
        StatefulShellBranch(routes: [
          GoRoute(
            path: pagerUtil.profile.routername,
            builder: (context, state) => const UserCenterPage(),
          ),
        ])
      ],
      builder: (context, state, child) {
        final isDesk = context.isDesktop;
        final view =
            isDesk ? DesktopApp(child: child) : MobileApp(child: child);
        return InitView(view);
      },
    ),
    GoRoute(
      path: pagerUtil.app.routername,
      builder: (context, state) => const IndexHomeNew(),
    ),
    //发布动态
    GoRoute(
      path: pagerUtil.resourceWrite.routername,
      builder: (context, state) {
        return MyResourceWritePage(params: state.extra as DynWriteParams);
      },
      redirect: redirectToLogin,
    ),

    //动态列表
    GoRoute(
      path: pagerUtil.resourceList.routername,
      builder: (context, state) {
        return MyResourcePage(params: state.extra as DynPageParams);
      },
    ),
    GoRoute(
      path: pagerUtil.meetList.routername,
      builder: (context, state) {
        return const MianjiPage();
      },
    ),
    GoRoute(
        path: pagerUtil.meetAdd.routername,
        builder: (context, state) {
          return const AddNewMeet();
        },
        redirect: redirectToLogin),
    GoRoute(
      path: pagerUtil.setting.routername,
      builder: (context, state) {
        return const SettingIndex();
      },
    ),
    GoRoute(
      path: pagerUtil.login.routername,
      builder: (context, state) {
        return const UserLoginPage();
      },
    ),
    GoRoute(
      path: pagerUtil.elm.routername,
      builder: (context, state) {
        return const WaimaiIndex();
      },
    ),
    GoRoute(
      path: pagerUtil.brand.routername,
      builder: (context, state) {
        return const BrandListPage();
      },
    ),
    GoRoute(
      path: pagerUtil.search.routername,
      builder: (context, state) {
        return const SearchPage();
      },
    ),
    GoRoute(
      path: pagerUtil.order.routername,
      builder: (context, state) => const UserOrderIndex(),
    ),
    GoRoute(
        path: pagerUtil.goodsDetail.routername,
        builder: (context, state) =>
            HaoDanKuDetailItem(goodsId: state.extra as String))
  ],
);
