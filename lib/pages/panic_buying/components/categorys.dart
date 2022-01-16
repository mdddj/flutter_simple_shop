// Flutter imports:
// Package imports:
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';

// Project imports:
import '../../../common/utils.dart';

class BottomCategoryTabs extends StatelessWidget implements PreferredSizeWidget  {
  final List<Tab>? insets;
  final ValueChanged<int>? onTap;
  final int? initIndex;

  const BottomCategoryTabs({this.insets, this.onTap, this.initIndex,Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    var _insets = insets ?? [];
    final categoryWidgets = utils.widgetUtils.categoryTabs(context);
    return Container(
      alignment: Alignment.centerLeft,
      child: DefaultTabController(
        length: categoryWidgets.length + _insets.length,
        initialIndex: initIndex ?? 0,
        child: TabBar(
          tabs: [..._insets, ...categoryWidgets],
          isScrollable: true,
          indicator: const BubbleTabIndicator(
            indicatorHeight: 25.0,
            indicatorColor: Colors.pink,
            tabBarIndicatorSize: TabBarIndicatorSize.tab,
          ),
          unselectedLabelColor: Colors.black.withOpacity(.67),
          labelColor: Colors.white,
          onTap: onTap,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(48);
}
