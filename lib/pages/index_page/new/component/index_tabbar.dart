import 'package:dd_js_util/common/ext.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

import '../../../../common/components/jd/jd_category_mini_widget.dart';
import '../../../../provider/jd_products_provider.dart';

class IndexTabbar extends SliverPersistentHeaderDelegate {
  final TabController tabController;

  IndexTabbar(this.tabController);

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: Column(
          children: [
            TabBar(
              tabs: const [
                Tab(
                  text: '淘宝',
                ),
                Tab(
                  text: '拼多多',
                ),
                Tab(
                  text: '京东',
                ),
              ],
              controller: tabController,
              isScrollable: true,
              labelColor: Colors.black,
              indicator: MaterialIndicator(color: Colors.green,height: 5,horizontalPadding: 16,bottomLeftRadius: 15,bottomRightRadius: 15,topLeftRadius: 15,topRightRadius: 15),
            ),
            if(tabController.index==2)
            categoryWidget()
          ],
        ),
      ),
    );
  }


  Widget categoryWidget(){

    return Consumer(builder: (BuildContext context, T Function<T>(ProviderBase<Object?, T>) watch, Widget? child) {
      final curr = watch(jdProductsProvider).selectProductTypeId;
      return JdCategoryMiniWidget(selectId: curr,onSelect: (model){
        context.read(jdProductsProvider).products.clear();
        context.read(jdProductsProvider).setSelectProductTypeId(model.id);
        context.read(jdProductsProvider).fetchData();
      },).height(36);
    },
    );
  }


  int get index => tabController.index;
  double get calcHei => index==2 ? 40+36+20 : 50;

  @override
  double get maxExtent => calcHei;

  @override
  double get minExtent => calcHei;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => false;
}


class IndexJdCategory extends SliverPersistentHeaderDelegate {
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return  const SizedBox(
        height: 36,
        child: JdCategoryMiniWidget());
  }

  @override
  double get maxExtent => 36;

  @override
  double get minExtent => 36;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => false;
}

class PindSliverWidget extends SliverPersistentHeaderDelegate {
  final Widget child;

  PindSliverWidget(this.child);
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return  child;
  }

  @override
  double get maxExtent => 36;

  @override
  double get minExtent => 36;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => false;
}