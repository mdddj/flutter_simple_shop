import 'package:dd_js_util/dd_js_util.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'common/view.dart';
import 'index.dart';
import 'pages/jiujiu_page/new/widget.dart';

const kNavIconSize = 23.0;
final homeModuleShowIndex = StateProvider((ref) => 0);

///APP主要页面
const _pages = <Widget>[IndexHomeNew(), JiuJiuIndex(), CategoryIndexPage(), FavoriteIndexHome(), UserIndexHome()];



class MyApp extends ApplicationWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget buildApplication(ApplicationModel applicationModel) =>const App();

  @override
  Widget buildErrorWidget(Object e, Object s, WidgetRef ref) {
    return const Text('启动失败.');
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
    return Scaffold(
      body: LazyIndexedStack(
        index: ref.watch(homeModuleShowIndex),
        children: _pages,
      ),
      bottomNavigationBar: const AppBottomNav(),
    );
  }
}

///app底部导航
class AppBottomNav extends ConsumerWidget {
  const AppBottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(homeModuleShowIndex);
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: ((index) {
          ref.read(homeModuleShowIndex.notifier).state = index;
        }),
        items: [
          BottomNavigationBarItem(label: '首页', icon: _buildIcon(currentIndex, 0, 'home', context)),
          BottomNavigationBarItem(label: '9.9包邮', icon: _buildIcon(currentIndex, 1, 'jiujiu', context)),
          BottomNavigationBarItem(label: '分类', icon: _buildIcon(currentIndex, 2, 'fenlei', context)),
          BottomNavigationBarItem(label: '收藏', icon: _buildIcon(currentIndex, 3, 'shoucang', context)),
          BottomNavigationBarItem(label: '我的', icon: _buildIcon(currentIndex, 4, 'my', context)),
        ]);
  }

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
}
