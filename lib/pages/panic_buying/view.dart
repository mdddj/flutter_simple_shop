import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';

import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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
class PanicBuyingPage extends ConsumerStatefulWidget {
  const PanicBuyingPage({Key? key}) : super(key: key);

  @override
  PanicBuyingPageState createState() => PanicBuyingPageState();
}

class PanicBuyingPageState extends ConsumerState<PanicBuyingPage> {
  final EasyRefreshController easyRefreshController = EasyRefreshController();

  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      ref.read(panicBuyingModelRiverpod).init(context);
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
          onTap: (index)=> ref.read(panicBuyingModelRiverpod).tabChanged(index,context),
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
              ProductsList(ref.watch(panicBuyingModelRiverpod.select((value) => value.products)))
            ],
            onLoad: () async {
              final result = await ref.read(panicBuyingModelRiverpod).nextPage();
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

void toPanicBuyPage(BuildContext context) => context.navToWidget(to: const PanicBuyingPage());
