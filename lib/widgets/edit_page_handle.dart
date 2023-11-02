part of 'index.dart';

/// 点击空白处收起键盘
class EditePageHandle extends StatelessWidget {
  final Widget child;

  const EditePageHandle({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: child,
    );
  }
}
