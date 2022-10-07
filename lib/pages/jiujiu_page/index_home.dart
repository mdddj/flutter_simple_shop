import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:provider/provider.dart';
import 'list.dart'; // 9.9包邮的provider
import 'loading_status.dart';
import 'riverpod.dart';

// 9.9包邮专区
class JiujiuIndexHome extends StatefulWidget {

  const JiujiuIndexHome({Key? key}): super(key: key);

  @override
  JiujiuIndexHomeState createState() => JiujiuIndexHomeState();
}

class JiujiuIndexHomeState extends State<JiujiuIndexHome> with TickerProviderStateMixin {
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
          preferredSize: Size(context.screenWidth, 48),
          child: Container(
            alignment: Alignment.centerLeft,
            child: TabBar(
              onTap: context.read<JiujiuState>().changeIndex,
              controller: tabController,
              isScrollable: true,
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
              labelColor: Colors.black,
              indicatorColor: Colors.transparent,
              unselectedLabelColor: Colors.grey,
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
