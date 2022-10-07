// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:provider/provider.dart';

// Project imports:
import '../../widgets/loading_widget.dart';
import '../../widgets/simple_appbar.dart';
import '../panic_buying/components/categorys.dart';
import '../panic_buying/components/list.dart';
import 'riverpod.dart';

class ZheIndex extends StatefulWidget {
  const ZheIndex({Key? key}) : super(key: key);

  @override
  ZheIndexState createState() => ZheIndexState();
}

class ZheIndexState extends State<ZheIndex> {
  final EasyRefreshController easyRefreshController = EasyRefreshController();
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      context.read<ZheState>().onTabChange(0,context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
        title: '折上折 - 拍两件更优惠',
        bottom: BottomCategoryTabs(
          onTap: context.read<ZheState>().onTabChange,
          insets: const [
            Tab(
              text: '推荐',
            )
          ],
        ),
        bottomHeight: 48,
      ),
      body: Consumer<ZheState>(
        builder: (BuildContext context, value, Widget? child) {
          final products = value.products;
          final loading = value.loading;
          return EasyRefresh.custom(
            controller: easyRefreshController,
            scrollController: scrollController,
            slivers: [
              if (loading)
                const SliverToBoxAdapter(
                  child: LoadingWidget(),
                ),
              ProductsList(products)
            ],
            onLoad: () async {
              final hasNextPage = await context.read<ZheState>().nextPage();
              if (scrollController.hasClients) {
                easyRefreshController.finishLoad(noMore: hasNextPage);
              }
            },
            footer: MaterialFooter(),
            header: MaterialHeader(),
            onRefresh: ()async {
              await context.read<ZheState>().refresh();
            },
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    easyRefreshController.dispose();
    super.dispose();
  }
}
