part of '../index.dart';

class DesktopApp extends ConsumerWidget {
  final StatefulNavigationShell child;

  const DesktopApp({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = child.currentIndex;
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
              onDestinationSelected: child.goBranch,
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
                          onPressed: () {}, icon: const Icon(Icons.logout))
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
                  child: FadeInUp(
                    duration: const Duration(milliseconds: 334),
                    child: child,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
