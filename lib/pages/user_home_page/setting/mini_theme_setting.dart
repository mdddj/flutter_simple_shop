part of '../../index.dart';

class MiniThemeSetting extends StatelessWidget {
  const MiniThemeSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.isDesktop ? 120 : context.screenWidth,
      child: WaterfallFlow.count(
        crossAxisCount: 4,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: const [
          _ThemeItem(data: CustomAppThemeData.deepBlue),
          _ThemeItem(data: CustomAppThemeData.redWine),
          _ThemeItem(data: CustomAppThemeData.green),
          _ThemeItem(data: CustomAppThemeData.indigo),
          _ThemeItem(data: CustomAppThemeData.wasabi),
          _ThemeItem(data: CustomAppThemeData.gold),
          _ThemeItem(data: CustomAppThemeData.brandBlue),
          _ThemeItem(data: CustomAppThemeData.red),
        ],
      ),
    );
  }
}

class _ThemeItem extends StatelessWidget {
  final CustomAppThemeData data;

  const _ThemeItem({required this.data});

  @override
  Widget build(BuildContext context) {
    final theme = FlexThemeData.light(scheme: data.flexScheme);
    final size = context.isDesktop ? 22.0 : 50.0;
    return Container(
      width: size,
      height: size,
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
          color: theme.primaryColor,
          borderRadius: BorderRadius.circular(size / 2)),
    ).click(() {
      AppThemeUtil().changeThemeWithEnum(data);
    });
  }
}

//暗夜模式切换
class DarkAndLightSetting extends ConsumerWidget {
  const DarkAndLightSetting({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ThemeBuildWidget(
        themeBuild: (theme) {
          return CupertinoSlidingSegmentedControl<ThemeMode>(
            children: const {
              ThemeMode.system: Text('跟随'),
              ThemeMode.light: Text('亮'),
              ThemeMode.dark: Text('暗')
            },
            onValueChanged: (ThemeMode? value) async {
              if (value != null) {
                AppThemeUtil().changeThemeMode(value);
              }
            },
            groupValue: theme.getThemeMode,
            padding: EdgeInsets.zero,
          );
        },
      ),
    );
  }
}
