part of 'index.dart';

const kNavIconSize = 23.0;

class InitView extends ApplicationWidget {
  final Widget child;

  const InitView(this.child, {super.key});

  @override
  Widget buildApplication(ApplicationModel applicationModel) => child;

  @override
  Widget buildErrorWidget(Object e, StackTrace s, BuildContext context, WidgetRef ref) {
    return InitLoadingWidget(
      errorMessage: switch (e) { BaseApiException() => e.message, _ => "$e" },
      retry: () => ref.invalidate(application(ApplocationContext(context, ref))),
    );
  }

  @override
  Widget buildInitLoadingWidget(WidgetRef ref) {
    return const InitLoadingWidget();
  }
}

///app底部导航
class AppBottomNav extends View {
  final int currentIndex;
  final ValueChanged<int> onIndexChange;

  const AppBottomNav({super.key, required this.currentIndex, required this.onIndexChange});

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
    return BottomNavigationBar(type: BottomNavigationBarType.fixed, currentIndex: currentIndex, onTap: (onIndexChange), items: [
      BottomNavigationBarItem(label: '首页', icon: _buildIcon(currentIndex, 0, 'home', context)),
      BottomNavigationBarItem(label: '9.9包邮', icon: _buildIcon(currentIndex, 1, 'jiujiu', context)),
      BottomNavigationBarItem(label: '分类', icon: _buildIcon(currentIndex, 2, 'fenlei', context)),
      BottomNavigationBarItem(label: '收藏', icon: _buildIcon(currentIndex, 3, 'shoucang', context)),
      BottomNavigationBarItem(label: '我的', icon: _buildIcon(currentIndex, 4, 'my', context)),
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
