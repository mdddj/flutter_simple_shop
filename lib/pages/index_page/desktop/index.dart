part of '../../index.dart';

/// 首页
/// 桌面版本
class IndexHomeV2 extends StatelessWidget {
  const IndexHomeV2({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: ListView.builder(
      itemBuilder: itemBuilder,
      itemCount: 1,
    ));
  }

  Widget itemBuilder(BuildContext context, int index) {
    switch (index) {
      case 0:
        return const AppTitle(text: '典典的小卖部');
      default:
        return Container();
    }
  }
}
