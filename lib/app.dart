import 'package:dd_js_util/dd_js_util.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'index.dart';
import 'widgets/lazy_indexed_stack.dart';

const kNavIconSize = 23.0;
final _homeModuleShowIndex = StateProvider((ref) => 0);

///APP主要页面
const _pages = <Widget>[IndexHomeNew(), JiujiuIndexHome(), CategoryIndexPage(), FavoriteIndexHome(), UserIndexHome()];

///APP主体框架
class App extends ConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: IndexedStack(
        index: ref.watch(_homeModuleShowIndex),
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
    final currentIndex = ref.watch(_homeModuleShowIndex);
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: ((index) {
          ref.read(_homeModuleShowIndex.notifier).state = index;
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
