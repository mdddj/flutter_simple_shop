part of '../../index.dart';

class ZheCarouselProductsPage extends ConsumerStatefulWidget {
  final String apiUrl;
  final String name;

  const ZheCarouselProductsPage(
      {super.key, required this.apiUrl, required this.name});

  @override
  ConsumerState<ZheCarouselProductsPage> createState() =>
      _ZheCarouselProductsPageState();
}

class _ZheCarouselProductsPageState
    extends ConsumerState<ZheCarouselProductsPage> {
  late final repository = ZheCarouselRepository(url: widget.apiUrl);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: MyLoadingMoreCustomScrollView(
        slivers: [
          MyLoadingMoreSliverList(MySliverListConfig(
            itemBuilder: (context, item, index) {
              return _RenderZheProduct(item);
            },
            sourceList: repository,
            extendedListDelegate:
                SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
                    crossAxisCount: context.waterfallFlowCrossAxisCountResource,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 12),
            indicatorBuilder: _indicatorBuilder,
            padding: const EdgeInsets.all(8),
            lock: false,
          ))
        ],
      ),
    );
  }

  Widget? _indicatorBuilder(BuildContext context, status) {
    return CustomLoadingMoreWidgetWithSliver(context, status, retry: () {
      repository.refresh(true);
    }, emptyChild: const SizedBox());
  }
}

class _RenderZheProduct extends StatelessWidget {
  final ZheProduct product;

  const _RenderZheProduct(this.product);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, size) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageView(
              image: MyImage.network(
                  url: product.pictUrl,
                  params: ImageParams(
                      fit: BoxFit.contain,
                      borderRadius: BorderRadius.circular(0),
                      shape: BoxShape.rectangle,
                      width: size.maxWidth,
                      height: size.maxWidth))),
          const SizedBox(
            height: 2,
          ),
          Text(product.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.titleMedium),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(color: Colors.green),
                child: Text(
                  "包邮",
                  style: context.textTheme.bodyMedium
                      ?.copyWith(color: Colors.white),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(color: Colors.red),
                child: Text(
                  '优惠券${product.couponInfoMoney}元',
                  style: context.textTheme.bodyMedium
                      ?.copyWith(color: Colors.white),
                ),
              )
            ],
          ),
          Row(
            children: [
              Text(
                product.size,
                style: context.textTheme.bodyLarge?.copyWith(
                    decoration: TextDecoration.lineThrough,
                    color: Colors.grey.shade400),
              ),
              const SizedBox(
                width: 6,
              ),
              Text(product.quanhouJiage,
                  style:
                      context.textTheme.bodyLarge?.copyWith(color: Colors.red))
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 6),
            width: double.infinity,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 3),
            decoration:
                BoxDecoration(border: Border.all(color: Colors.pink, width: 2)),
            child: Text('领券',
                style:
                    context.textTheme.bodyMedium?.copyWith(color: Colors.pink)),
          )
        ],
      );
    });
  }
}

class ZheCarouselRepository extends MyLoadingModel<ZheProduct> {
  final String url;

  ZheCarouselRepository({required this.url}) {
    Logger().d(url);
  }

  var page = 1;
  var hasMoreProduct = true;

  @override
  Future<bool> loadData([bool isLoadMoreAction = false]) async {
    final api = NewApiByCarouselProductsApi.instance;
    // api.params['page'] = page;
    final list = await api
        .request(RequestParams(showDefaultLoading: false, fullUrl: url));
    addAll(list);
    hasMoreProduct = list.isNotEmpty;
    page++;
    return true;
  }

  @override
  bool get hasError => hasMoreProduct;
}
