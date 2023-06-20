import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../provider/index.dart';
import '../../widgets/index.dart';
import 'goods_item.dart';
import 'sliver_app_bar_delegate.dart';

/// 钉钉抢的页面
class DdqIndexHome extends ConsumerStatefulWidget {
  const DdqIndexHome({Key? key}) : super(key: key);

  @override
  DdqIndexHomeState createState() => DdqIndexHomeState();
}

class DdqIndexHomeState extends ConsumerState<DdqIndexHome> {
  late DdqProvider ddqProvider = ref.watch(ddqRiverpod);
  int? cur;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: context.kBodyHeight + kToolbarHeight,
      width: context.screenWidth,
      child: Stack(
        children: [
          _bg(),
          Positioned(
            top: kToolbarHeight + context.paddingTop,
            left: 0,
            right: 0,
            bottom: 0,
            child: CustomScrollView(
              slivers: <Widget>[
                _buildSliverAppBar(),
                _buildTimesList(),
                _buildList(),
                SliverPersistentHeader(
                  delegate: SliverAppBarDelegate(
                      maxHeight: 75,
                      minHeight: 75,
                      child: const Center(
                        child: Text('我是有底线的~~'),
                      )),
                )
              ],
            ),
          ),
          _title(),
          _backBtn()
        ],
      ),
    ));
  }

  /// 仅仅显示一张背景图片
  Widget _renderBgImage() {
    return Image.asset('assets/images/ddq.png', fit: BoxFit.cover);
  }

  /// 标题
  Widget _title() {
    return Positioned(
        left: 0,
        top: 22 + context.paddingTop,
        right: 0,
        child: Container(
            alignment: Alignment.center,
            child: const Text(
              '钉钉抢',
              style: TextStyle(color: Colors.white, fontSize: 18),
            )));
  }

  /// 返回按钮
  Widget _backBtn() {
    return Positioned(
        left: 12,
        top: 12 + context.paddingTop,
        child: const BackButton(
          color: Colors.white,
        ));
  }

  /// 背景
  Widget _bg() {
    return Positioned(
        left: 0,
        right: 0,
        top: 0,
        child: Image.asset(
          'assets/images/ddq.png',
          width: context.screenWidth,
          height: 170 + kToolbarHeight,
          fit: BoxFit.cover,
        ));
  }

  Widget _buildSliverAppBar() {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      expandedHeight: 170,
      elevation: 0,
      backgroundColor: Colors.transparent,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: _renderBgImage(),
        collapseMode: CollapseMode.parallax,
      ),
    );
  }

  /// 时间列表
  Widget _buildTimesList() {
    return SliverPersistentHeader(
        pinned: true,
        floating: true,
        delegate: SliverAppBarDelegate(
            minHeight: 60,
            maxHeight: 60,
            child: Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      bottom: BorderSide(width: 0.5, color: Colors.white70))),
              child: DdqTimesWidget(
                timesList: ddqProvider.roundsList,
                ddqProvider: ddqProvider,
              ),
            )));
  }

  Widget _buildList() {
    return SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
      return GoodsItem(
        goodsItem: ddqProvider.goodsList[index],
        state: ddqProvider.status,
      );
    }, childCount: ddqProvider.goodsList.length));
  }
}
