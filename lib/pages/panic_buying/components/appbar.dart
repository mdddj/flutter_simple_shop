part of '../../index.dart';

/// 导航条
class AppbarWithPanicBuying extends StatelessWidget {
  const AppbarWithPanicBuying({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      centerTitle: true,
      title: Text('排行榜'),
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.white),
    );
  }
}
