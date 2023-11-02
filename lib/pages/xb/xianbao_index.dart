part of '../index.dart';

enum XianbaoType {
  defaultType("超值", "1"),
  tm('天猫超市', '2'),
  lastUpdate('最新抢购(全)', '4'),
  lastUpdateJd('最新抢购(京东)', '6'),
  lastUpdatePdd('最新抢购(拼多多)', '7');

  const XianbaoType(this.title, this.type);

  final String title;
  final String type;
}

class XianbaoIndex extends StatefulWidget {
  const XianbaoIndex({super.key});

  @override
  State<XianbaoIndex> createState() => _XianbaoIndexState();
}

class _XianbaoIndexState extends State<XianbaoIndex> with SingleTickerProviderStateMixin {
  late final _tabController = TabController(length: XianbaoType.values.length, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('线报'),
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48),
            child: TabBar(
              isScrollable: true,
              tabs: XianbaoType.values
                  .map((e) => Tab(
                        text: e.title,
                      ))
                  .toList(),
              controller: _tabController,
            )),
      ),
      body: TabBarView(
        controller: _tabController,
        children: XianbaoType.values.map(_View.new).toList(),
      ),
    );
  }
}

class _View extends StatefulWidget {
  final XianbaoType type;

  const _View(this.type, {super.key});

  @override
  State<_View> createState() => _ViewState();
}

class _ViewState extends State<_View> {
  late final _response = XianbaoResposne(widget.type.type);

  @override
  Widget build(BuildContext context) {
    return MyLoadingMoreCustomScrollView(
      slivers: [
        MyLoadingMoreSliverList(
            MySliverListConfig<XbItem>(padding: const EdgeInsets.all(12), itemBuilder: _itemBuilder, sourceList: _response, indicatorBuilder: CustomLoadingMoreWidgetWithSliver.new))
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _response.dispose();
  }

  Widget _itemBuilder(BuildContext context, XbItem item, int index) {
    return _ItemLayout(item);
  }
}

class _ItemLayout extends StatelessWidget {
  final XbItem item;

  const _ItemLayout(this.item);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HtmlWidget(
              item.getShowText(),
              textStyle: context.textTheme.bodyLarge,
            ),
            ImageView(image: MyImage.network(url: item.img, params: const ImageParams(width: 120, height: 120))).marginOnly(top: 12).visible(item.img.isNotEmpty),
            SizedBox(
              width: double.infinity,
              child: FilledButton.tonal(
                      onPressed: () {
                        appLaunchUrl(item.couponUrl);
                      },
                      child: const Text('去领取'))
                  .marginOnly(top: 12),
            )
          ],
        ),
      ),
    ).marginOnly(bottom: 12);
  }
}

///线报类型：1-超值买返(默认)2-天猫超市3-整点抢购4-最新线报-所有数据5-最新线报-天猫6-最新线报-京东7-最新线报-拼多多
class XianbaoResposne extends MyLoadingModel<XbItem> {
  final String topic;

  XianbaoResposne(this.topic);

  int _page = 1;
  bool _hasMore = true;
  final int _pageSize = 20;

  @override
  Future<bool> loadData([bool isLoadMoreAction = false]) async {
    try {
      final r = await getIt.get<TkXianbaoApi>().request(R(showDefaultLoading: false, data: {'pageId': _page, "pageSize": _pageSize, "topic": topic}));
      addAll(r.list);
      _page++;
      _hasMore = r.list.isNotEmpty;
      return true;
    } catch (e) {
      Logger().e(e);
      return false;
    }
  }

  @override
  bool get hasMore => _hasMore;
}
