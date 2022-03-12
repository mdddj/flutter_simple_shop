import 'package:after_layout/after_layout.dart';
import 'package:dataoke_sdk/model/product.dart';
import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart';
import 'package:flutter/material.dart' hide NestedScrollView;
import 'package:get/get.dart';
import 'package:loading_more_list/loading_more_list.dart';

import '../../../common/components/jd/jd_products_view.dart';
// Project imports:
import '../../../controller/app_controller.dart';
import '../../../repository/index_goods_repository.dart';
import '../../../widgets/edit_page_handle.dart';
import '../../../widgets/loading_more_list_indicator.dart';
import '../../../widgets/waterfall_goods_card.dart';
import 'component/appbar.dart';
import 'component/carousel.dart';
import 'component/gridmenu/view.dart';
import 'component/index_tabbar.dart';
import 'component/two_column_comm.dart';
import 'github/github.dart';

/// 新版首页
class IndexHomeNew extends StatefulWidget {
  const IndexHomeNew({Key? key}) : super(key: key);

  @override
  _IndexHomeNewState createState() => _IndexHomeNewState();
}

class _IndexHomeNewState extends State<IndexHomeNew>
    with AfterLayoutMixin, SingleTickerProviderStateMixin {
  late TabController tabController;
  IndexGoodsRepository indexGoodsRepository = IndexGoodsRepository();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    _scrollController.addListener(_listenTabbar);
  }

  void _listenTabbar(){

  }

  @override
  Widget build(BuildContext context) {
    return EditePageHandle(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ExtendedNestedScrollView(
          controller: _scrollController,
          body: renderViews(),
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              const IndexHomeAppbar(),
              // 轮播图
              SliverPadding(
                  padding: const EdgeInsets.only(top: 12),
                  sliver: const IndexCarousel().sliverBox),
              // 网格菜单

            const GithubWidget().sliverBox,

              const GridMenuComponent(),
              // 两列菜单
              const IndexColumnWidget(),
              // 分类导航
              SliverPersistentHeader(
                delegate: IndexTabbar(tabController),
                pinned: true,
              ),
            ];
          },
        ),
      ),
    );
  }

  Widget renderViews() {
    return TabBarView(
      children: [_buildGoodsList(), const JdProductsView()],
      controller: tabController,
    );
  }

  Widget _buildGoodsList() {
    return LoadingMoreList(ListConfig<Product>(
      extendedListDelegate:
      const SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 12, mainAxisSpacing: 12),
      itemBuilder: (context, item, index) {
        return WaterfallGoodsCard(item);
      },
      sourceList: indexGoodsRepository,
      padding: const EdgeInsets.only(left: 12, right: 12),
//      lastChildLayoutType: LastChildLayoutType.foot,
      indicatorBuilder: (context, state) {
        return LoadingMoreListCostumIndicator(state, isSliver: false);
      },
    )).marginOnly(top: 12);
  }

  @override
  void afterFirstLayout(BuildContext context) {
    AppController.find.getNewVersion();
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.removeListener(_listenTabbar);
    _scrollController.dispose();
  }
}
