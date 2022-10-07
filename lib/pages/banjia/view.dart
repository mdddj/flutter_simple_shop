// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:provider/provider.dart';

// Project imports:
import '../../widgets/float_widget.dart';
import '../../widgets/loading_widget.dart';
import '../../widgets/simple_appbar.dart';
import 'component/appbar.dart';
import 'component/list.dart';
import 'resp.dart';

// 每日半价页面
class BanjiaIndex extends StatefulWidget {
  const BanjiaIndex({Key? key}) : super(key: key);

  @override
  BanjiaIndexState createState() => BanjiaIndexState();
}

class BanjiaIndexState extends State<BanjiaIndex> {
  final ScrollController scrollController = ScrollController();

  bool showTopButton = false;

  @override
  void initState() {
    Future.microtask(() {
      context.read<BanjiaResp>().init();
    });
    scrollController.addListener(() {
      if (scrollController.offset >= 200) {
        if (!showTopButton) {
          setState(() {
            showTopButton = true;
          });
        }
      } else {
        if (showTopButton) {
          setState(() {
            showTopButton = false;
          });
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(
        title: '每日半价',
        titleColor: Colors.white,
      ),
      body: EasyRefresh.custom(scrollController: scrollController, slivers: [
        SliverPersistentHeader(
          delegate: FloatWidget(child: const BanjiaSessions(), height: 48),
          pinned: true,
        ),
        Consumer<BanjiaResp>(
          builder: (BuildContext context,
              value, Widget? child) {
            final list = value.products;
            final loading = value.loading;
            if(loading) return const SliverToBoxAdapter(child: LoadingWidget());
            return BanjiaList(products: list);
          },
        )
      ]),
      floatingActionButton: showTopButton
          ? FloatingActionButton(
              onPressed: () {
                scrollController.jumpTo(0);
              },
        backgroundColor: Colors.pink,
              child: const Icon(Icons.vertical_align_top),
            )
          : null,
    );
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }
}
