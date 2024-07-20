part of "../index.dart";

class MobileApp extends StatelessWidget {
  final StatefulNavigationShell child;

  const MobileApp({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: AppBottomNav(
          currentIndex: child.currentIndex, onIndexChange: child.goBranch),
    );
  }
}
