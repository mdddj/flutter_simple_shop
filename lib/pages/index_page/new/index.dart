import 'package:after_layout/after_layout.dart';
import 'package:dataoke_sdk/model/product.dart';
import 'package:flutter/material.dart' hide NestedScrollView;
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:loading_more_list/loading_more_list.dart';

// Project imports:
import '../../../constant/style.dart';
import '../../../controller/app_controller.dart';
import '../../../repository/index_goods_repository.dart';
import '../../../widgets/edit_page_handle.dart';
import '../../../widgets/loading_more_list_indicator.dart';
import '../../../widgets/waterfall_goods_card.dart';
import 'component/appbar.dart';
import 'component/carousel.dart';
import 'component/gridmenu/view.dart';
import 'component/two_column_comm.dart';

/// 新版首页
class IndexHomeNew extends StatefulWidget {
  const IndexHomeNew({Key? key}) : super(key: key);

  @override
  IndexHomeNewState createState() => IndexHomeNewState();
}

class IndexHomeNewState extends State<IndexHomeNew>
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

  void _listenTabbar() {}

  @override
  Widget build(BuildContext context) {
    return EditePageHandle(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: EasyRefresh.custom(
          scrollController: _scrollController,
          slivers: [
            const IndexHomeAppbar(),
            SliverPadding(
                padding: const EdgeInsets.only(top: 12),
                sliver: const IndexCarousel().sliverBox),
            const GridMenuComponent(),
            const IndexColumnWidget(),
            _renderAd(),
            _renderHeader(),
            _buildGoodsList()
          ],
        ),
      ),
    );
  }

  /// 横幅广告
  Widget _renderAd() {
    return Container(
      margin: const EdgeInsets.only(
          left: kDefaultPadding, right: kDefaultPadding, top: kDefaultPadding),
      child: AspectRatio(
        aspectRatio: 1920 / 500,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(kDefaultRadius),
            child: Image.asset('assets/images/ad.jpg')),
      ),
    ).sliverBox;
  }

  /// 产品列表标题
  Widget _renderHeader() {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(left: 12,bottom: 12,right: 12,top: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            'assets/svg/rmtj.svg',
            width: 120,
            height: 30,
          ),
          Text('* 每20分钟更新一次',style: Get.textTheme.bodyText2?.copyWith(
            color: Colors.grey,
            fontSize: 12
          ),)
        ],
      ),
    ).sliverBox;
  }

  /// 首页产品列表
  Widget _buildGoodsList() {
    return LoadingMoreSliverList(
        SliverListConfig<Product>(
          extendedListDelegate:
              const SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 12, mainAxisSpacing: 12),
          itemBuilder: (context, item, index) {
            return WaterfallGoodsCard(item);
          },
          sourceList: indexGoodsRepository,
          padding: const EdgeInsets.only(left: 12, right: 12),
          lastChildLayoutType: LastChildLayoutType.foot,
          indicatorBuilder: (context, state) {
            return LoadingMoreListCostumIndicator(state, isSliver: true);
          },
        ),
        key: AppController.find.indexProductKey);
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
