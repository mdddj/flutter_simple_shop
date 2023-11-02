part of '../../../index.dart';

// 更多操作
class MoreActions extends StatelessWidget {
  final List<ListTile> actions;

  const MoreActions({super.key, required this.actions});

  /// 显示
  static Future<void> show(List<ListTile> actions, BuildContext context) async {
    await showModalBottomSheet(context: context, builder: (_) => MoreActions(actions: actions));
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
