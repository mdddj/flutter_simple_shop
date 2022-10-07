import 'dart:ui';
import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_more_list/loading_more_list.dart';

import './ddq.dart';
import 'new/component/carousel.dart';
import 'store/component_index.dart';

/// 首页
class IndexHome extends StatefulWidget {
  final ScrollController? mController;

  const IndexHome({Key? key, this.mController}) : super(key: key);

  @override
  IndexHomeState createState() => IndexHomeState();
}

class IndexHomeState extends State<IndexHome>
    with TickerProviderStateMixin, AfterLayoutMixin<IndexHome> {
//   状态管理
  final GlobalKey _titleKey = GlobalKey();

  bool _titleIsInTop = false;

  //dddd
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



  // body
  Widget _buildIndexBody() {
    return LoadingMoreCustomScrollView(
      controller: _mainScrollController,
      slivers: <Widget>[
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
  }
}
