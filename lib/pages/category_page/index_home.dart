part of '../index.dart';

class CategoryIndexPage extends ConsumerStatefulWidget {
  const CategoryIndexPage({super.key});

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
      ),
      body: EditePageHandle(
        child: Builder(builder: (context) {
          final categorys = ref.watch(categoryRiverpod.select((value) => value.categorys));
          final current = ref.watch(categoryRiverpod.select((value) => value.current));
          if (categorys.isEmpty) {
            return const Text('没有数据');
          }
          return SizedBox(
              width: context.screenWidth,
              height: context.kBodyHeight,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  //左侧
                  Container(
                    width: 80,
                    height: double.infinity,
                    decoration: BoxDecoration(color: context.cardColor),
                    child: ListView.builder(
                        itemCount: categorys.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () => ref.read(categoryRiverpod).setCurrent(categorys[index]),
                            child: LeftWidgetItem(item: categorys[index], isCurrent: current.cid == categorys[index].cid),
                          );
                        }),
                  ),

                  //右侧
                  Expanded(
                    child: Container(
                      height: context.kBodyHeight,
                      decoration: BoxDecoration(color: context.cardColor),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Stack(
                            //   children: [
                            //     Container(
                            //       height: 120,
                            //       alignment: Alignment.center,
                            //       margin: const EdgeInsets.symmetric(horizontal: 12,vertical: 6),
                            //       decoration: BoxDecoration(
                            //         color: Colors.grey.shade200,
                            //         borderRadius:  12.borderRadius
                            //       ),
                            //       child: Text("广告位招租,联系商务微信:flutter-null\n支持图片+文字",style: TextStyle(color: context.colorScheme.primary),textAlign: TextAlign.center),
                            //     ),
                            //     const Positioned(left: 12,top: 12,child: AdTag(),)
                            //   ],
                            // ),
                            WaterfallFlow.builder(
                              padding: const EdgeInsets.all(kDefaultPadding),
                              gridDelegate: SliverWaterfallFlowDelegateWithFixedCrossAxisCount(crossAxisCount: context.isDesktop ? 5 : 3, mainAxisSpacing: 12, crossAxisSpacing: 20),
                              itemBuilder: (context, sIndex) {
                                return RightWidgetItme(category: current, item: current.subcategories[sIndex]);
                              },
                              itemCount: (current.subcategories).length,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ));
        }),
      ),
    );
  }
}
