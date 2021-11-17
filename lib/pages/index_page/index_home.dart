// Dart imports:
import 'dart:ui';

// Package imports:
import 'package:after_layout/after_layout.dart';
import 'package:dataoke_sdk/model/product.dart';
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart' hide NestedScrollView;
import 'package:get/get.dart';
import 'package:loading_more_list/loading_more_list.dart';

import './ddq.dart';
// Project imports:
import '../../repository/index_goods_repository.dart';
import '../../widgets/loading_more_list_indicator.dart';
import '../../widgets/waterfall_goods_card.dart';
import 'new/component/appbar.dart';
import 'new/component/carousel.dart';
import 'store/component_index.dart';

/// 首页
class IndexHome extends StatefulWidget {
  final ScrollController? mController;

  const IndexHome({Key? key, this.mController}) : super(key: key);

  @override
  _IndexHomeState createState() => _IndexHomeState();
}

class _IndexHomeState extends State<IndexHome>
    with TickerProviderStateMixin, AfterLayoutMixin<IndexHome> {
//   状态管理
  final GlobalKey _titleKey = GlobalKey();

  bool _titleIsInTop = false;

  //dddd
  IndexGoodsRepository indexGoodsRepository = IndexGoodsRepository();
  final ScrollController _mainScrollController = ScrollController();

  TabController? tabController;

  bool carouselISLoaded = false; // 轮播图资源是否准备完毕
  bool categortListIsLoaded = false; // 分类数据是否准备好
  Color? bgColor;
  int carouselHeight = 500; // 轮播图高度

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 1, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildIndexBody(),
    );
  }

  // 首页商品列表
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
      indicatorBuilder: (context, state) {
        return LoadingMoreListCostumIndicator(state, isSliver: true);
      },
    ));
  }

  /// 初始化数据
  /// 从上往下顺序加载
  Future<void> _initDatas() async {
    setState(() {
      carouselISLoaded = true;
    });
    // await context.read<DtkIndexGoodsModal>().getGoodsList(1); // 首页商品列表
    // setState(() {
    //   tabController = TabController(length: categorys.length + 1, vsync: this);
    //   setState(() {
    //     categortListIsLoaded = true;
    //   });
    // });
  }

  // body
  Widget _buildIndexBody() {
    return LoadingMoreCustomScrollView(
      controller: _mainScrollController,
      slivers: <Widget>[
        const IndexHomeAppbar(),
        const IndexCarousel().marginOnly(top: 6).sliverBox,

        const DDQWidget().sliverBox,

        const StoreComponentIndex().sliverBox,

        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: const Text(
            '随便看看',
            style: TextStyle(
                fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ).sliverBox,

        //商品列表 (瀑布流)
        _buildGoodsList(),
      ],
    );
  }

  //获取title的位置信息
  double _titleLocationHandler() {
    if (_titleKey.currentContext != null) {
      var renderBox = _titleKey.currentContext!.findRenderObject() as RenderBox;
      var offset = renderBox.localToGlobal(const Offset(0, 0));
      return offset.dy;
    }
    return 0;
  }

  // 监听主滑动距离
  void _addMainScrollListening() {
    var topAppbarHei =
        111 + MediaQueryData.fromWindow(window).padding.top; // 顶部搜索框和选项卡高度
    _mainScrollController.addListener(() {
      var titleTopHei = _titleLocationHandler();
      if (titleTopHei <= topAppbarHei) {
        if (!_titleIsInTop) {
          setState(() {
            _titleIsInTop = true;
          });
        }
      } else {
        if (_titleIsInTop) {
          setState(() {
            _titleIsInTop = false;
          });
        }
      }
    });
  }

  @override
  void afterFirstLayout(BuildContext context) {
    _titleLocationHandler();
    _addMainScrollListening();
    _initDatas();
  }
}
