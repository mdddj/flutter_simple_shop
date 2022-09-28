import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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

    return Consumer<JdProductsProviderState>(builder: (BuildContext context, value, Widget? child) {
      final curr = value.selectProductTypeId;
      return JdCategoryMiniWidget(selectId: curr,onSelect: (model){
        context.read<JdProductsProviderState>().products.clear();
        context.read<JdProductsProviderState>().setSelectProductTypeId(model.id);
        context.read<JdProductsProviderState>().fetchData();
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

///Android Studio Chipmunk | 2021.2.1 Patch 1
// Build #AI-212.5712.43.2112.8609683, built on May 19, 2022
// Runtime version: 11.0.12+0-b1504.28-7817840 aarch64
// VM: OpenJDK 64-Bit Server VM by JetBrains s.r.o.
// macOS 12.4
// GC: G1 Young Generation, G1 Old Generation
// Memory: 2048M
// Cores: 8
// Registry: external.system.auto.import.disabled=true
// Non-Bundled Plugins: com.vecheslav.darculaDarkerTheme (1.2.0), com.tao.getx (3.2.6), com.jetbrains.ChooseRuntime (1.2), Gradle View (4.0.0), idea.plugin.protoeditor (212.5080.8), org.intellij.plugins.markdown (212.5457.16), com.thoughtworks.gauge (212.4746.52), org.jetbrains.kotlin (212-1.7.10-release-333-AS5457.46), pl.pszklarska.pubversionchecker (1.3.5), com.squareup.sqldelight (1.5.3), Dart (212.5744), io.flutter (69.0.2), cn.yiiguxing.plugin.translate (3.3-203u212.patch.1)