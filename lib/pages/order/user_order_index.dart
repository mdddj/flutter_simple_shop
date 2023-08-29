part of pages;

///用户订单页面
class UserOrderIndex extends StatefulWidget {
  const UserOrderIndex({super.key});

  @override
  State<UserOrderIndex> createState() => _UserOrderIndexState();
}

class _UserOrderIndexState extends State<UserOrderIndex>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  late final _tabController =
      TabController(length: UserOrderStatus.values.length, vsync: this);

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('订单'),
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(38),
            child: TabBar(
              tabs: UserOrderStatus.values
                  .map((e) => Tab(
                        text: e.title,
                      ))
                  .toList(),
              controller: _tabController,
            )),
      ),
      body: TabBarView(
        controller: _tabController,
        children: UserOrderStatus.values
            .map((e) => _OrderListView(
                  status: e,
                ))
            .toList(),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class _OrderListView extends StatefulWidget {
  final UserOrderStatus status;

  const _OrderListView({required this.status});

  @override
  State<_OrderListView> createState() => _OrderListViewState();
}

class _OrderListViewState extends State<_OrderListView> with AutomaticKeepAliveClientMixin {
  UserOrderStatus get _status => widget.status;

  late final _repository = UserOrderRepository(_status.requestParam);

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return MyLoadingMoreList(MyListConfig<UserOrderInfo>(sourceList: _repository,itemBuilder: _itemBuilder,padding: const EdgeInsets.all(12),indicatorBuilder: _indicatorBuilder));
  }

  Widget _itemBuilder(BuildContext context, UserOrderInfo item, int index) {
    return _UserOrderItemLayout(info: item);
  }

  @override
  bool get wantKeepAlive => true;

  Widget? _indicatorBuilder(BuildContext context, status) {
    return CustomLoadingMoreWidget(context, status, retry: () {
      _repository.refresh(true);
    }, emptyChild: const SizedBox());
  }
}



///item项目布局
class _UserOrderItemLayout extends StatelessWidget {
  final UserOrderInfo info;
  const _UserOrderItemLayout({required this.info});

  @override
  Widget build(BuildContext context) {
    const size = 120.0;
    return Card(
      child: Row(
        children: [
          ImageView(image: MyImage.network(url: 'https:${info.itemImg}',params: ImageParams(
            size: size,borderRadius: BorderRadius.circular(12),shape: BoxShape.rectangle
          ))),
          const SizedBox(width: 12,),
          Expanded(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minHeight: size
              ),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(info.itemTitle,maxLines: 2,overflow: TextOverflow.ellipsis),
                    Text('¥${info.itemPrice}',style: context.textTheme.titleMedium)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
