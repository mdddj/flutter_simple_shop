// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:loading_more_list/loading_more_list.dart';

// Project imports:
import '../../config/app_config.dart';
import 'grid_menu.dart';
import 'model/index_grid_menu_item_model.dart';

/// 2020年11月17日 22:48:26
/// 首页的网格菜单列表
/// v2.0
/// 每排最好只显示5个
/// 不超过两排
/// 控制好数量
class GridMenuList extends StatefulWidget {
  const GridMenuList({Key? key}) : super(key: key);

  @override
  GridMenuListState createState() => GridMenuListState();
}

class GridMenuListState extends State<GridMenuList> {
  final int rowCount = 5;
  late List<IndexGridMenuItemModel> _items = [];

  @override
  void initState() {
    super.initState();
    _getList();
  }

  void _getList() {
    setState(() {
      _items = indexGridMenus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SliverWaterfallFlow.count(
      crossAxisCount: 5,
      children: renderItems(),
    );
  }

  List<Widget> renderItems() {
    return _items
        .map((e) => IndexGridViewMenu(
              model: e,
            ))
        .toList();
  }
}
