import 'package:dataoke_sdk/dataoke_sdk.dart';
import 'package:dataoke_sdk/model/category.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../index.dart' hide Subcategory;


/// 新的商品列表
class NewGoodsList extends ConsumerStatefulWidget {
  final Category category;
  final Subcategory? subcategory;
  final int? initIndex;

  const NewGoodsList(
      {Key? key, required this.category, this.subcategory, this.initIndex})
      : super(key: key);

  @override
  NewGoodsListState createState() => NewGoodsListState();
}

class NewGoodsListState extends ConsumerState<NewGoodsList>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController = TabController(length: 4, vsync: this);

  final EasyRefreshController _easyRefreshController = EasyRefreshController();

  @override
  void initState() {
    super.initState();
    delayFunction(() {
      ref.read(goodsListRiverpod).setCategory(widget.category, widget.subcategory,isInit: true);
    });
  }

  GoodsListState get _goodsListState => ref.read(goodsListRiverpod);
  GoodsListState get _goodsListStateWatch => ref.watch(goodsListRiverpod);
  @override
  Widget build(BuildContext context) {
    final current = ref.watch(goodsListRiverpod.select((value) => value.sort));
    return Scaffold(
      appBar:  SimpleAppBar(
        title: '产品列表',
        bottomHeight: 48,
        bottom: PreferredSize(preferredSize: const Size.fromHeight(48), child:TabBar(
            onTap: (int index){
              _goodsListState.sortChange(index);
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
            ]),

        )
      ),
      body: EasyRefresh.custom(
        controller: _easyRefreshController,
          onLoad: _goodsListState.nextPage,
          onRefresh: _goodsListState.onRefresh,
          firstRefresh: true,
          header: MaterialHeader(),
          footer: MaterialFooter(),
          slivers: [
            //排序操作

            const SizedBox(
              height: 12,
            ).toSliverWidget,
            //子分类
            Builder(
              builder: (BuildContext context) {
                final cate = _goodsListStateWatch.category;
                final subCate = _goodsListStateWatch.subcategory;
                return SliverToBoxAdapter(
                  child: SubCategoryView(
                    cate,
                    changeSubcategory: (subcategory) {
                      _goodsListState.setCategory(cate, subcategory);
                      _goodsListState.onRefresh();
                    },
                    subcategory: subCate,
                  ),
                );
              },
            ),

            // 刷新指示器
           Builder(
              builder: (BuildContext context) {
                final loading = _goodsListStateWatch.loading;
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
            Builder(
              builder: (BuildContext context) {
                final products = _goodsListStateWatch.products;
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
