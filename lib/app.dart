import 'package:dd_js_util/dd_js_util.dart';
import 'package:extended_image/extended_image.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart' hide View;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'common/view.dart';
import 'constant/context.dart';
import 'freezed/appbar_menu.dart';
import 'freezed/application.dart';
import 'index.dart';
import 'pages/jiujiu_page/new/widget.dart';
import 'widgets/logo.dart';

const kNavIconSize = 23.0;
final homeModuleShowIndex = StateProvider((ref) => 0);

///APP主要页面
const _pages = <Widget>[IndexHomeNew(), JiuJiuIndex(), CategoryIndexPage(), FavoriteIndexHome(), UserIndexHome()];

class MyApp extends ApplicationWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget buildApplication(ApplicationModel applicationModel) => const App();

  @override
  Widget buildErrorWidget(Object e, Object s, BuildContext context, WidgetRef ref) {
    if (e is AppException) {
      kLog("${e.code} ${e.message}");
    }
    return InitLoadingWidget(
      errorMessage: (e as AppException).message,
      retry: () => ref.invalidate(application(ApplocationContext(context, ref))),
    );
  }

  @override
  Widget buildInitLoadingWidget(WidgetRef ref) {
    return const InitLoadingWidget();
  }
}

///APP主体框架
class App extends ConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final layout = context.deviceScreenType;
    final currentIndex = ref.watch(homeModuleShowIndex);
    switch(layout){
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
              NavigationRail(
                leading: const Logo().padding(12),
                elevation: 5,
                extended: false,
                labelType: NavigationRailLabelType.selected,
                destinations: bottomMenus.map((element) {
                  return NavigationRailDestination(icon: Image.asset(element.getAssetPath(currentIndex == bottomMenus.indexOf(element)),width:kNavIconSize,height:kNavIconSize,color: context.isDarkModel ? Colors.white : null,), label: Text(element.title));
                }).toList(), selectedIndex: currentIndex,
                onDestinationSelected: (v){
                  ref.read(homeModuleShowIndex.notifier).state = v;
                },
                trailing: Expanded(
                  child: Column(
                    children: [
                      const Spacer(),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.settings)),
                      const SizedBox(height: 22)
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Container(
                    height: context.screenHeight,
                    alignment: Alignment.center,
                    child: LazyIndexedStack(
                      index: ref.watch(homeModuleShowIndex),
                      children: _pages,
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
  const AppBottomNav({Key? key}) : super(key: key);

  Widget _buildIcon(int currentIndex, int index, String filename, BuildContext context) {
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
          BottomNavigationBarItem(label: '首页', icon: _buildIcon(currentIndex, 0, 'home', context)),
          BottomNavigationBarItem(label: '9.9包邮', icon: _buildIcon(currentIndex, 1, 'jiujiu', context)),
          BottomNavigationBarItem(label: '分类', icon: _buildIcon(currentIndex, 2, 'fenlei', context)),
          BottomNavigationBarItem(label: '收藏', icon: _buildIcon(currentIndex, 3, 'shoucang', context)),
          BottomNavigationBarItem(label: '我的', icon: _buildIcon(currentIndex, 4, 'my', context)),
        ]);
  }
}


final bottomMenus = IList<AppbarMenu>(const IListConst([
  AppbarMenu(icon: 'home',title: '首页'),
  AppbarMenu(icon: 'jiujiu',title: '9.9包邮'),
  AppbarMenu(icon: 'fenlei',title: '分类'),
  AppbarMenu(icon: 'shoucang',title: '收藏'),
  AppbarMenu(icon: 'my',title: '我的'),
]));



