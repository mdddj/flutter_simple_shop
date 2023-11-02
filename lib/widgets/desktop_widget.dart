part of 'index.dart';

extension DeskTopWidgetEx on Widget {
  Widget desktopLayout({required Widget Function(BuildContext context) child}) {
    return DeskTopWidget(child: child, mobile: (_) => this);
  }
}

class DeskTopWidget extends StatelessWidget {
  final Widget Function(BuildContext context) child;
  final Widget Function(BuildContext context) mobile;

  const DeskTopWidget({super.key, required this.child, required this.mobile});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(mobile: mobile, desktop: child);
  }
}
