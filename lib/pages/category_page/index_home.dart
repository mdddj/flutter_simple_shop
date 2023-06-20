part of pages;

class CategoryIndexPage extends ConsumerStatefulWidget {
  const CategoryIndexPage({Key? key}) : super(key: key);

  @override
  CategoryIndexPageState createState() => CategoryIndexPageState();
}

class CategoryIndexPageState extends ConsumerState<CategoryIndexPage> {
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '分类',
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(42),
          child: Container(
              margin: const EdgeInsets.only(bottom: 12, left: 12, right: 12),
              child: const Center(
                  child: CupertinoSearchTextField(
                placeholder: '关键字搜索',
                placeholderStyle: TextStyle(fontSize: 13, color: Colors.grey),
              ))),
        ),
      ),
      body: EditePageHandle(
        child: Builder(builder: (context) {
          final categorys =
              ref.watch(categoryRiverpod.select((value) => value.categorys));
          final current =
              ref.watch(categoryRiverpod.select((value) => value.current));
          if (categorys.isEmpty) {
            return const Text('没有数据');
          }
          return SizedBox(
              width: context.screenWidth,
              height: context.kBodyHeight,
              child: Row(
                children: <Widget>[
                  //左侧
                  Container(
                    width: 80,
                    height: double.infinity,
                    decoration:
                        BoxDecoration(color: context.colorScheme.background),
                    child: ListView.builder(
                        itemCount: categorys.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () => ref
                                .read(categoryRiverpod)
                                .setCurrent(categorys[index]),
                            child: LeftWidgetItem(
                                item: categorys[index],
                                isCurrent: current.cid == categorys[index].cid),
                          );
                        }),
                  ),

                  //右侧
                  Expanded(
                    child: WaterfallFlow.builder(
                      padding: const EdgeInsets.all(kDefaultPadding),
                      gridDelegate:
                          SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
                              crossAxisCount:
                                  context.waterfallFlowCrossAxisCount,
                              mainAxisSpacing: 12,
                              crossAxisSpacing: 20),
                      itemBuilder: (context, sIndex) {
                        return RightWidgetItme(
                            category: current,
                            item: current.subcategories[sIndex]);
                      },
                      itemCount: (current.subcategories).length,
                    ),
                  )
                ],
              ));
        }),
      ),
    );
  }
}
