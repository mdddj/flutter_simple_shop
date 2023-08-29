part of common;

/// 首页的京东列表
class JdProductsView extends StatefulWidget {
  const JdProductsView({Key? key}) : super(key: key);

  @override
  JdProductsViewState createState() => JdProductsViewState();
}

class JdProductsViewState extends State<JdProductsView> {
  @override
  Widget build(BuildContext context) {
    return renderListWidget();
  }

  Widget renderListWidget() {
    return Consumer(
      builder: (BuildContext context, ref, Widget? child) {
        final products =
            ref.watch(jdProductsRiverpod.select((value) => value.products));

        return SliverWaterfallFlow.count(
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          crossAxisCount: 2,
          children: products.map(renderItem).toList(),
        );
      },
    );
  }

  Widget renderItem(JdNativeProduct item) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: Column(
        children: [
          ExtendedImage.network(item.imageInfo.whiteImage),
          Column(
            children: [
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 2),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(8)),
                      child: const Text(
                        '京东',
                        style: TextStyle(color: Colors.white),
                      )),
                  Text(
                    '销量${item.inOrderCount30Days}',
                    style: const TextStyle(color: Colors.grey),
                  )
                ],
              ),
              Text(
                item.skuName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 12),
              ).marginOnly(top: 12),
              const SizedBox(
                height: 12,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
