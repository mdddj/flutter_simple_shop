part of '../index.dart';

/// 2020年11月17日 22:48:26
/// 首页的网格菜单列表
/// v2.0
/// 每排最好只显示5个
/// 不超过两排
/// 控制好数量
class GridMenuList extends StatefulWidget {
  const GridMenuList({super.key});

  @override
  GridMenuListState createState() => GridMenuListState();
}

class GridMenuListState extends State<GridMenuList> {
  final int rowCount = 5;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverWaterfallFlow.count(
      crossAxisCount: 5,
      children: renderItems(),
    );
  }

  List<Widget> renderItems() {
    return []
        .map((e) => IndexGridViewMenu(
              model: e,
            ))
        .toList();
  }
}
