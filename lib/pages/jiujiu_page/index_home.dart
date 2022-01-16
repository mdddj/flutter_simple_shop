// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

// Project imports:
import '../../widgets/round_underline_tab_indicator.dart';
import 'list.dart'; // 9.9包邮的provider
import 'loading_status.dart';
import 'riverpod.dart';

// 9.9包邮专区
class JiujiuIndexHome extends StatefulWidget {
  final ScrollController? scrollController;

  const JiujiuIndexHome({this.scrollController,Key? key}): super(key: key);

  @override
  _JiujiuIndexHomeState createState() => _JiujiuIndexHomeState();
}

class _JiujiuIndexHomeState extends State<JiujiuIndexHome> with TickerProviderStateMixin {
  bool initLoading = false;
  bool nextPageLoading = false;

  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    Future.microtask(context.read<JiujiuState>().init);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text('9块9包邮', style: TextStyle(color: Colors.black)),
        bottom: PreferredSize(
          preferredSize: Size(Get.width, 48),
          child: Container(
            alignment: Alignment.centerLeft,
            child: TabBar(
              onTap: context.read<JiujiuState>().changeIndex,
              controller: tabController,
              isScrollable: true,
              indicator: const RoundUnderlineTabIndicator(
                  insets: EdgeInsets.only(bottom: 8),
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.pinkAccent,
                  )),
              tabs: const [
                Tab(
                  text: '精选',
                ),
                Tab(
                  text: '5.9元区',
                ),
                Tab(
                  text: '9.9元区',
                ),
                Tab(
                  text: '19.9元区',
                ),
              ],
              labelColor: Colors.pinkAccent,
              labelStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              indicatorColor: Colors.pinkAccent,
              unselectedLabelColor: Colors.black,
              unselectedLabelStyle: const TextStyle(fontSize: 12),
            ),
          ),
        ),
      ),
      body: EasyRefresh.custom(
          header: MaterialHeader(),
          footer: MaterialFooter(),
          onRefresh: context.read<JiujiuState>().refresh,
          onLoad: context.read<JiujiuState>().nextPage,
          slivers: const [JiuJiuLoadingStatus(), JiuJiuProductList()]),
    );
  }
}
