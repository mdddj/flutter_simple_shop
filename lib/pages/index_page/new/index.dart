import 'package:after_layout/after_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' hide NestedScrollView;
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:waterfall_flow/waterfall_flow.dart';
import '../../../index.dart';

/// 新版首页
class IndexHomeNew extends StatefulWidget {
  const IndexHomeNew({Key? key}) : super(key: key);

  @override
  IndexHomeNewState createState() => IndexHomeNewState();
}

class IndexHomeNewState extends State<IndexHomeNew> with AfterLayoutMixin, SingleTickerProviderStateMixin {
  late TabController tabController = TabController(length: context.categoryLength + 1, vsync: this);

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [
          IndexHomeAppbar(
            tabController: tabController,
          ),
        ];
      },
      body: TabBarView(
        controller: tabController,
        children: [const HomeWidgets(), ...context.categorys.map(CategoryGoodsList.new).toList()],
      ),
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
class HomeWidgets extends ConsumerWidget {
  const HomeWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return EasyRefresh.custom(
      slivers: [
        SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
          switch (index) {
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
        }, childCount: 4)),
        const IndexProducts()
      ],
      onLoad: () async => await fetchProducts(ref),
      onRefresh: () async => await refresh(ref),
      firstRefresh: true,
    );
  }

  Future<void> fetchProducts(WidgetRef ref) async {
    ref.read(riverpodIndexProducts.notifier).loadData();
  }

  Future<void> refresh(WidgetRef ref) async {
    ref.read(riverpodIndexProducts.notifier).loadData(true);
  }
}

///无限下拉瀑布流标题
class IndexProductTitle extends StatelessWidget {
  const IndexProductTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, bottom: 12, right: 12, top: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            'assets/svg/rmtj.svg',
            width: 120,
            height: 30,
          ),
          Text(
            '* 每20分钟更新一次',
            style: context.textTheme.bodyText2?.copyWith(color: Colors.grey, fontSize: 12),
          )
        ],
      ),
    );
  }
}

///首页的产品瀑布流列表
class IndexProducts extends ConsumerWidget {
  const IndexProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(riverpodIndexProducts.select((value) => value.products));
    return SliverPadding(
        padding: const EdgeInsets.all(8),
        sliver: SliverWaterfallFlow.count(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          children: products.map(WaterfallGoodsCard.new).toList(),
        ));
  }
}
