part of pages;

class MiniThemeSetting extends StatelessWidget {
  const MiniThemeSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
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
    return Container(
      width: 22,
      height: 22,
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
          color: theme.primaryColor, borderRadius: BorderRadius.circular(12)),
    ).click(() {
      AppThemeUtil().changeThemeWithEnum(data);
    });
  }
}
