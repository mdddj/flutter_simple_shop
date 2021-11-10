// Flutter imports:
import 'package:flutter/material.dart';

class IndexStickyTabBarDelegate extends SliverPersistentHeaderDelegate {
  EdgeInsets? padding;
  final TabBar child;
  Color? color;
  IndexStickyTabBarDelegate({required this.child,this.color,this.padding});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      margin: padding??EdgeInsets.zero,
      color:color ?? Colors.transparent,
      child: child,
    );
  }

  @override
  double get maxExtent => child.preferredSize.height;

  @override
  double get minExtent => child.preferredSize.height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
