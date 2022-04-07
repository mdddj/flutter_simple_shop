import 'package:after_layout/after_layout.dart';
import 'package:dataoke_sdk/model/product.dart';
import 'package:flutter/material.dart' hide NestedScrollView;
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:get/get.dart';
import 'package:loading_more_list/loading_more_list.dart';

import '../../../common/components/jd/jd_products_view.dart';
// Project imports:
import '../../../constant/style.dart';
import '../../../controller/app_controller.dart';
import '../../../repository/index_goods_repository.dart';
import '../../../widgets/edit_page_handle.dart';
import '../../../widgets/waterfall_goods_card.dart';
import 'component/appbar.dart';
import 'component/carousel.dart';
import 'component/gridmenu/view.dart';
import 'component/two_column_comm.dart';

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
        body: EasyRefresh.custom(
          scrollController: _scrollController,
          slivers: [
            const IndexHomeAppbar(),
            // 轮播图
            SliverPadding(
                padding: const EdgeInsets.only(top: 12),
                sliver: const IndexCarousel().sliverBox),
            // 网格菜单

            //  github 广告
            // const GithubWidget().sliverBox,

            const GridMenuComponent(),
            // 两列菜单,畅销榜单和每日上新
            const IndexColumnWidget(),
            _renderAd(),
            // 分类导航
            // SliverPersistentHeader(
            //   delegate: IndexTabbar(tabController),
            //   pinned: true,
            // ),
            _buildGoodsList()
          ],
        ),
      ),
    );
  }

  /// 横幅广告
  Widget _renderAd(){
    return Container(
      margin: const EdgeInsets.only(left: kDefaultPadding,right: kDefaultPadding,top: kDefaultPadding),
      child: AspectRatio(aspectRatio:1920 / 500 ,child: ClipRRect(
          borderRadius: BorderRadius.circular(kDefaultRadius),
          child: Image.asset('assets/images/ad.jpg')),),
    ).sliverBox;
  }

  Widget renderViews() {
    return TabBarView(
      children: [_buildGoodsList(), const JdProductsView()],
      controller: tabController,
    );
  }

  Widget _buildGoodsList() {
    return LoadingMoreSliverList(SliverListConfig<Product>(
      extendedListDelegate:
      const SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 12, mainAxisSpacing: 12),
      itemBuilder: (context, item, index) {
        return WaterfallGoodsCard(item);
      },
      sourceList: indexGoodsRepository,
      padding: const EdgeInsets.only(left: 12, right: 12),
//      lastChildLayoutType: LastChildLayoutType.foot,
//       indicatorBuilder: (context, state) {
//         return LoadingMoreListCostumIndicator(state, isSliver: true);
//       },
    ));
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
