// Flutter imports:
import 'package:flutter/material.dart';

import 'pages/pyq.dart';
// Project imports:
import 'pages/wph.dart';

/// 动态
class DynamicIndex extends StatefulWidget {
  const DynamicIndex({Key? key}) : super(key: key);

  @override
  _DynamicIndexState createState() => _DynamicIndexState();
}

class _DynamicIndexState extends State<DynamicIndex> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: TabBar(
            tabs: const [
              Tab(
                text: '动态',
              ),
              Tab(
                text: '唯品会',
              ),
            ],
            controller: tabController,
            isScrollable: true,
          ),
        ),
        elevation: 0,
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          PyqView(),
          WeipinhuiJinBianGoods(),
        ],
      ),
    );
  }
}
