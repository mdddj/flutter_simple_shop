// Flutter imports:
// Package imports:
import 'package:dataoke_sdk/dd_taoke_sdk.dart';
import 'package:dataoke_sdk/model/brand_list_model.dart';
import 'package:dataoke_sdk/model/category.dart';
import 'package:dataoke_sdk/params/brand_param.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:provider/provider.dart';
import 'package:waterfall_flow/waterfall_flow.dart';

// Project imports:
import '../../common/widgets/loading_mixin.dart';
import '../../provider/riverpod/category_riverpod.dart';
import '../index_page/component/category_component.dart';
import 'category_delegate.dart';
import 'components/item.dart';

/// 品牌列表页面
class BrandListPage extends StatefulWidget {
  const BrandListPage({Key? key}) : super(key: key);

  @override
  BrandListPageState createState() => BrandListPageState();
}

class BrandListPageState extends State<BrandListPage> with LoadingMixin {
  final CategoryController _categoryController = CategoryController();
  final EasyRefreshController _easyRefreshController = EasyRefreshController();
  int page = 1;
  int size = 20;
  int cid = 0;
  List<ListElement> lists = [];

  @override
  void initState() {
    super.initState();
    cid = context.read<CategoryState>().categorys[0].cid;
    Future.microtask(init);
  }

  Future<void> init({bool onLoad = false}) async {
    if (!onLoad) {
      setLoading(true);
    }
    final result = await DdTaokeSdk.instance.getBrandList(
        param: BrandListParam(cid: '$cid', pageId: '$page', pageSize: '$size'));
    if (result != null) {
      lists.addAll(result.lists ?? []);
    }
    setLoading(false);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('品牌特卖'),
      ),
      body: EasyRefresh.custom(
        controller: _easyRefreshController,
        header: MaterialHeader(),
        footer: MaterialFooter(),
        slivers: [
          SliverPersistentHeader(
            delegate: CategoryDelegate(_categoryOnSelect, _categoryController),
            floating: true,
          ),
          SliverWaterfallFlow.count(crossAxisCount: 1, children: _items())
        ],
        onRefresh: _refresh,
        onLoad: _load,
      ),
    );
  }

  List<Widget> _items() => lists
      .map((e) => BrandItemCard(
            storeInfo: e,
          ))
      .toList();

  /// 刷新页面
  Future<void> _refresh() async {
    page = 1;
    await init();
    _easyRefreshController.finishRefresh();
  }

  /// 加载下一页
  Future<void> _load() async {
    page++;
    await init(onLoad: true);
    _easyRefreshController.finishLoad();
  }

  /// 菜单被选择
  void _categoryOnSelect(int index, Category item) async {
    _categoryController.toIndex(index);
    cid = item.cid;
    page = 1;
    lists.clear();
    setState(() {});
    _easyRefreshController.callRefresh();
  }
}
