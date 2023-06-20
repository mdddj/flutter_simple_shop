part of pages;

// 更多操作
class MoreActions extends StatelessWidget {
  final List<ListTile> actions;

  const MoreActions({Key? key, required this.actions}) : super(key: key);

  /// 显示
  static Future<void> show(List<ListTile> actions, BuildContext context) async {
    await showModalBottomSheet(
        context: context, builder: (_) => MoreActions(actions: actions));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: actions.map((e) => e).toList(),
      ),
    );
  }
}
