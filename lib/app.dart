part of 'index.dart';

const kNavIconSize = 23.0;
final homeModuleShowIndex = StateProvider((ref) => 0);

///APP主要页面
const _pages = <Widget>[
  IndexHomeNew(),
  JiuJiuIndex(),
  CategoryIndexPage(),
  FavoriteIndexHome(),
  UserCenterPage()
];

class MyApp extends ApplicationWidget {
  const MyApp({super.key});

  @override
  Widget buildApplication(ApplicationModel applicationModel) => const App();

  @override
  Widget buildErrorWidget(
      Object e, StackTrace s, BuildContext context, WidgetRef ref) {
    return InitLoadingWidget(
      errorMessage: switch (e) { BaseApiException() => e.message, _ => "$e" },
      retry: () =>
          ref.invalidate(application(ApplocationContext(context, ref))),
    );
  }

  @override
  Widget buildInitLoadingWidget(WidgetRef ref) {
    return const InitLoadingWidget();
  }
}

///APP主体框架
class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final layout = context.deviceScreenType;
    final currentIndex = ref.watch(homeModuleShowIndex);
    switch (layout) {
      case DeviceScreenType.mobile:
        return Scaffold(
          body: LazyIndexedStack(
            index: ref.watch(homeModuleShowIndex),
            children: _pages,
          ),
          bottomNavigationBar: const AppBottomNav(),
        );
      case DeviceScreenType.desktop:
        return Scaffold(
          body: Row(
            children: [
              SizedBox(
                width: 150,
                child: NavigationRail(
                  leading: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Logo(),
                        const SizedBox(
                          width: 2,
                        ),
                        Text('典典的小卖部', style: context.textTheme.titleMedium)
                      ],
                    ),
                  ),
                  labelType: NavigationRailLabelType.selected,
                  destinations: bottomMenus.map((element) {
                    return NavigationRailDestination(
                        icon: Image.asset(
                          element.getAssetPath(
                              currentIndex == bottomMenus.indexOf(element)),
                          width: kNavIconSize,
                          height: kNavIconSize,
                        ),
                        label: Text(element.title));
                  }).toList(),
                  selectedIndex: currentIndex,
                  onDestinationSelected: (v) {
                    ref.read(homeModuleShowIndex.notifier).state = v;
                  },
                  trailing: Expanded(
                    child: Column(
                      children: [
                        const Spacer(),
                        const MiniThemeSetting(),
                        const DarkAndLightSetting(),
                        IconButton(
                            onPressed: () {
                              if (!ref.isLogin) {
                                toast('请先登录');
                                if (context.isDesktop) {
                                  showDialog(
                                      context: context,
                                      builder: (_) {
                                        return const LoginDialog();
                                      });
                                }
                                return;
                              }
                              context.push(pagerUtil.setting.routername);
                            },
                            icon: const Icon(Icons.settings)),
                        Tooltip(
                          message: "退出登录",
                          child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.logout))
                              .ifShow(ref.isLogin),
                        ),
                        const SizedBox(height: 12)
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Container(
                    constraints: const BoxConstraints(
                        maxWidth: AppTheme.desktopContainerMaxWidth),
                    height: context.screenHeight,
                    alignment: Alignment.center,
                    child: LazyIndexedStack(
                      index: ref.watch(homeModuleShowIndex),
                      children: _pages
                          .map((e) => FadeInUp(
                                duration: const Duration(milliseconds: 334),
                                child: e,
                              ))
                          .toList(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      default:
        return Scaffold(
          body: LazyIndexedStack(
            index: ref.watch(homeModuleShowIndex),
            children: _pages,
          ),
          bottomNavigationBar: const AppBottomNav(),
        );
    }
  }
}

///app底部导航
class AppBottomNav extends View {
  const AppBottomNav({super.key});

  Widget _buildIcon(
      int currentIndex, int index, String filename, BuildContext context) {
    return IfWidget(
        expression: () => currentIndex == index,
        trueBuild: () => ExtendedImage.asset(
              'assets/nav/$filename.png',
              height: kNavIconSize,
              width: kNavIconSize,
              enableMemoryCache: true,
              color: context.primaryColor,
            ),
        elseBuild: () => ExtendedImage.asset(
              'assets/nav/$filename-n.png',
              height: kNavIconSize,
              width: kNavIconSize,
              enableMemoryCache: true,
              color: context.iconColor,
            ));
  }

  @override
  Widget renderView(BuildContext context, ApplicationModel appCore) {
    final currentIndex = appCore.ref.watch(homeModuleShowIndex);
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: ((index) {
          appCore.ref.read(homeModuleShowIndex.notifier).state = index;
        }),
        items: [
          BottomNavigationBarItem(
              label: '首页', icon: _buildIcon(currentIndex, 0, 'home', context)),
          BottomNavigationBarItem(
              label: '9.9包邮',
              icon: _buildIcon(currentIndex, 1, 'jiujiu', context)),
          BottomNavigationBarItem(
              label: '分类',
              icon: _buildIcon(currentIndex, 2, 'fenlei', context)),
          BottomNavigationBarItem(
              label: '收藏',
              icon: _buildIcon(currentIndex, 3, 'shoucang', context)),
          BottomNavigationBarItem(
              label: '我的', icon: _buildIcon(currentIndex, 4, 'my', context)),
        ]);
  }
}

final bottomMenus = IList<AppbarMenu>(const IListConst([
  AppbarMenu(icon: 'home', title: '首页'),
  AppbarMenu(icon: 'jiujiu', title: '9.9包邮'),
  AppbarMenu(icon: 'fenlei', title: '分类'),
  AppbarMenu(icon: 'shoucang', title: '收藏'),
  AppbarMenu(icon: 'my', title: '我的'),
]));
