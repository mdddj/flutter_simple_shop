// Flutter imports:
// Package imports:
import 'package:after_layout/after_layout.dart';
import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart';
import 'package:flutter/material.dart' hide NestedScrollView;
import 'package:get/get.dart';
import '../../../common/components/jd/jd_products_view.dart';
// Project imports:
import '../../../controller/app_controller.dart';
import '../../../widgets/category/jd_category.dart';
import '../../../widgets/edit_page_handle.dart';
import 'component/appbar.dart';
import 'component/carousel.dart';
import 'component/index_tabbar.dart';

/// 新版首页
class IndexHomeNew extends StatefulWidget {
  const IndexHomeNew({Key? key}) : super(key: key);

  @override
  _IndexHomeNewState createState() => _IndexHomeNewState();
}

class _IndexHomeNewState extends State<IndexHomeNew>
    with AfterLayoutMixin, SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return EditePageHandle(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: ExtendedNestedScrollView( body: renderViews(), headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            const IndexHomeAppbar(),
             SliverPadding(padding: const EdgeInsets.only(top: 12), sliver: const IndexCarousel().sliverBox),
            const SliverToBoxAdapter(
              child: JDCategory(),
            ),
            SliverPersistentHeader(delegate: IndexTabbar(tabController),pinned: true,),
          ];
        },),
      ),
    );
  }

  Widget renderViews(){
    return  TabBarView(
      children: [
        Container(),
        Container(),
        const JdProductsView()
      ],
      controller: tabController,
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    AppController.find.getNewVersion();
  }
}
