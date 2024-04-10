part of '../../index.dart';

final _zheCarouselProductsPageProvider =
    FutureProvider.family<List<ZheProduct>, String>((ref, apiUrl) =>
        NewApiByCarouselProductsApi.instance.request(
            RequestParams(showDefaultLoading: false, fullUrl: apiUrl)));

class ZheCarouselProductsPage extends ConsumerWidget {
  final String apiUrl;
  final String name;

  const ZheCarouselProductsPage(
      {super.key, required this.apiUrl, required this.name});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: ref.watch(_zheCarouselProductsPageProvider(apiUrl)).when(
        data: (data) {
          return CustomScrollView(
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.all(12),
                sliver: SliverWaterfallFlow.count(
                    crossAxisCount: 2,
                    children: [...data.map(_RenderZheProduct.new)]),
              )
            ],
          );
        },
        error: (error, stackTrace) {
          return Center(
            child: Text(error.errorMessage),
          );
        },
        loading: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

class _RenderZheProduct extends StatelessWidget {
  final ZheProduct product;

  const _RenderZheProduct(this.product);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, size) {
      return Column(
        children: [
          ImageView(
              image: MyImage.network(
                  url: product.pictUrl,
                  params: ImageParams(
                      fit: BoxFit.cover,
                      width: size.maxWidth,
                      height: size.maxWidth)))
        ],
      );
    });
  }
}
