part of '../index.dart';

class CategoryDelegate extends SliverPersistentHeaderDelegate {
  final SelectWithItem onSelect;
  final CategoryController controller;

  CategoryDelegate(this.onSelect, this.controller);

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
        height: kToolbarHeight,
        alignment: Alignment.center,
        child: CategoryComponent(
          onSelect: onSelect,
          controller: controller,
          textStyle: const TextStyle(fontSize: 14, color: Colors.black),
        ));
  }

  @override
  double get maxExtent => kToolbarHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => false;
}
