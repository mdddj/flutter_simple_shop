// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

// Project imports:
import '../../widgets/simple_appbar.dart';
import 'components/categorys.dart';
import 'components/list.dart';
import 'components/view_status.dart';
import 'repository.dart';

///
/// @Author 梁典典
/// @Github 开源地址 https://github.com/mdddj/flutter_simple_shop
/// @Description 功能描述  排行榜页面
/// @Date 创建时间 2021年6月19日 14:38:39
///
class PanicBuyingPage extends StatefulWidget {
  const PanicBuyingPage({Key? key}) : super(key: key);

  @override
  _PanicBuyingPageState createState() => _PanicBuyingPageState();
}

class _PanicBuyingPageState extends State<PanicBuyingPage> {
  final EasyRefreshController easyRefreshController = EasyRefreshController();

  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      await context.read<PanicBuyingModel>().init();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
        title: '排行榜单',
        bottom: BottomCategoryTabs(
          insets: const [
            Tab(
              text: '实时榜',
            ),
            Tab(
              text: '全天榜',
            ),
          ],
          onTap:  context.read<PanicBuyingModel>().tabChanged,
        ),
        bottomHeight: 48,
      ),
      body: Stack(
        children: [
          EasyRefresh.custom(
            controller: easyRefreshController,
            slivers: [
              const SliverPadding(padding: EdgeInsets.only(top: 12)),
              const SliverToBoxAdapter(
                child: ViewStatusWithPanicBuy(),
              ),
              Consumer<PanicBuyingModel>(builder: (BuildContext context, value, Widget? child) {
                return ProductsList(value.products);
              },)
            ],
            onLoad: () async {
              final result = await context.read<PanicBuyingModel>().nextPage();
              easyRefreshController.finishLoad(noMore: result);
            },
            footer: MaterialFooter(),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    easyRefreshController.dispose();
  }
}

void toPanicBuyPage() => Get.to(() => const PanicBuyingPage());
