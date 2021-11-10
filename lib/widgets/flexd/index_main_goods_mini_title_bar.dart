// Flutter imports:
import 'package:flutter/material.dart';

class IndexMainGoodsMiniTitleBar extends SliverPersistentHeaderDelegate {

  final Widget? child;
  final double? height;
  IndexMainGoodsMiniTitleBar({this.child,this.height});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {

    return Container(
      child: child,
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => height!;

  @override
  // TODO: implement minExtent
  double get minExtent => height!;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

}
