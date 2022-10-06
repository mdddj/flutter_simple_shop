import 'package:after_layout/after_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' hide NestedScrollView;
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../index.dart';

/// 新版首页
class IndexHomeNew extends StatefulWidget {
  const IndexHomeNew({Key? key}) : super(key: key);

  @override
  IndexHomeNewState createState() => IndexHomeNewState();
}

class IndexHomeNewState extends State<IndexHomeNew>
    with AfterLayoutMixin, SingleTickerProviderStateMixin {
  late TabController tabController = TabController(length: context.categoryLength+1, vsync: this);

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
       headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [
           IndexHomeAppbar(tabController: tabController,),
        ];
    }, body: TabBarView(controller: tabController,children:  [
      const HomeWidgets(),
      ...context.categorys.map(CategoryGoodsList.new).toList()
    ],),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    AppController.find.getNewVersion();
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }
}


///首页[精选]的小部件列表
class HomeWidgets extends StatelessWidget {


  const HomeWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverList(delegate: SliverChildBuilderDelegate((context, index) {
        switch(index){
          case 0:
            return const IndexCarousel();
          case 1:
            return const GridMenuComponent();
          case 2:
            return const IndexColumnWidget();
          case 3:
            return const IndexProductTitle();
          default:
            return const SizedBox();
        }
      },childCount: 4)),
      IndexProducts(repository: IndexGoodsRepository())
    ],  );
  }
}


///无限下拉瀑布流标题
class IndexProductTitle extends StatelessWidget {
  const IndexProductTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.only(left: 12,bottom: 12,right: 12,top: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              'assets/svg/rmtj.svg',
              width: 120,
              height: 30,
            ),
            Text('* 每20分钟更新一次',style: context.textTheme.bodyText2?.copyWith(
                color: Colors.grey,
                fontSize: 12
            ),)
          ],
        ),
      );
  }
}
