part of resource;

class MyResourcePage extends StatefulWidget {
  final DynPageParams params;
  const MyResourcePage({super.key, required this.params});

  @override
  State<MyResourcePage> createState() => _MyResourcePageState();
}

class _MyResourcePageState extends State<MyResourcePage> {
  DynPageParams get params => widget.params;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(params.name),
      ),
      body: MyLoadingMoreCustomScrollView(
        slivers: [
          MyResourceListWidget(
              name: params.name, emptyChild: _builderEmptyWidget())
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _gotoWrite, child: const Icon(CupertinoIcons.add)),
    );
  }

  Widget _builderEmptyWidget() {
    return FilledButton.tonal(
            onPressed: _gotoWrite, child: Text(params.emptyText))
        .marginOnly(top: 22);
  }

  ///去发布页面
  void _gotoWrite() {
    context.push(pagerUtil.resourceWrite.routername,
        extra: DynWriteParams(name: params.name));
  }
}
