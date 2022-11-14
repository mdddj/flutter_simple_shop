import 'package:dataoke_sdk/dataoke_sdk.dart';
import 'package:dataoke_sdk/model/category.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:provider/provider.dart';

import '../../index.dart' hide Subcategory;


/// 新的商品列表
class NewGoodsList extends StatefulWidget {
  final Category category;
  final Subcategory? subcategory;
  final int? initIndex;

  const NewGoodsList(
      {Key? key, required this.category, this.subcategory, this.initIndex})
      : super(key: key);

  @override
  NewGoodsListState createState() => NewGoodsListState();
}

class NewGoodsListState extends State<NewGoodsList>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final EasyRefreshController _easyRefreshController = EasyRefreshController();

  @override
  void initState() {
    super.initState();
    context
        .read<GoodsListState>()
        .setCategory(widget.category, widget.subcategory, isInit: true);
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  SimpleAppBar(
        title: '产品列表',
        bottomHeight: 48,
        bottom: PreferredSize(preferredSize: const Size.fromHeight(48), child: Consumer<GoodsListState>(
          builder: (BuildContext context, value, Widget? child) {
            final current = value.sort;
            return //排序
              TabBar(
                  onTap: (int index){
                    value.sortChange(index);
                    _easyRefreshController.callRefresh();
                  },
                  labelColor: Colors.pinkAccent,
                  unselectedLabelColor: Colors.black,
                  indicatorColor: Colors.pinkAccent,
                  indicator: const RoundUnderlineTabIndicator(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.pinkAccent,
                      )),
                  controller: _tabController,
                  tabs: <Widget>[
                    SortWidget(
                      title: '人气',
                      current: current == DdSort.defaultSort,
                    ),
                    SortWidget(
                      title: '最新',
                      current: current == DdSort.timeHighToLow,
                    ),
                    SortWidget(
                      title: '销量',
                      current: current == DdSort.salesHighToLow,
                    ),
                    SortWidget(
                        title: '价格',
                        current: current == DdSort.priceLowToHigh,
                        icon: _bulidPriceIconWidget(current)),
                  ]);
          },
        ),

        )
      ),
      body: EasyRefresh.custom(
        controller: _easyRefreshController,
          onLoad: context.read<GoodsListState>().nextPage,
          onRefresh: context.read<GoodsListState>().onRefresh,
          firstRefresh: true,
          header: MaterialHeader(),
          footer: MaterialFooter(),
          slivers: [
            //排序操作

            const SizedBox(
              height: 12,
            ).toSliverWidget,
            //子分类
            Consumer<GoodsListState>(
              builder: (BuildContext context, value, Widget? child) {
                final cate = value.category;
                final subCate = value.subcategory;
                return SliverToBoxAdapter(
                  child: SubCategoryView(
                    cate,
                    changeSubcategory: (subcategory) {
                      value.setCategory(cate, subcategory);
                      value.onRefresh();
                    },
                    subcategory: subCate,
                  ),
                );
              },
            ),

            // 刷新指示器
            Consumer<GoodsListState>(
              builder: (BuildContext context, value, Widget? child) {
                final loading = value.loading;
                if (loading) {
                  return const SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Center(child: CircularProgressIndicator()),
                    ),
                  );
                }
                return const SliverToBoxAdapter();
              },
            ),

            // 产品列表
            Consumer<GoodsListState>(
              builder: (BuildContext context, value, Widget? child) {
                final products = value.products;
                return ProductsList(products);
              },
            ),
          ]),
    );
  }

  // 价格排序图标改变 (从高到低/从低到高)
  Widget _bulidPriceIconWidget(String current) {
    var iconShow = 'assets/icons/px.png';
    if (current == '5') {
      iconShow = 'assets/icons/pxx.png';
    }
    if (current == '6') {
      iconShow = 'assets/icons/pxs.png';
    }
    return Image.asset(
      iconShow,
      height: 12,
      width: 12,
    );
  }
}
