part of pages;

class IndexCarousel extends ConsumerWidget {
  const IndexCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data =
        ref.watch(indexStateRiverpod.select((value) => value.carousel));
    if (data.isEmpty) {
      return const ZhetaokeCarouselWidget();
    }
    return WaterfallFlow.count(
      padding: const EdgeInsets.all(8),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 1,
      children: [
        IndexTopicComponentCarousel(list: data),
        LayoutBuilder(builder: _builder)
      ],
    );
  }

  Widget _builder(BuildContext context, BoxConstraints constraints) {
    return Container();
  }
}

final kRivCarouseApiFuture = FutureProvider<WrapJson>((ref) async {
  try {
    return await (KZheTaokeApiWithCarousel())
        .request(const RequestParams(showDefaultLoading: false));
  } on AppException catch (_) {
    rethrow;
  }
});

///折淘客的轮播图
class ZhetaokeCarouselWidget extends ConsumerWidget {
  const ZhetaokeCarouselWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(kRivCarouseApiFuture).when(
        data: (model) {
          final data = model.getValue('data');
          final carousels = _getCarouselList(jsonDecode(data));
          return Swiper(
            itemBuilder: (BuildContext context, int index) {
              final item = carousels[index];
              final pic = item['pic'];
              return ExtendedImage.network(
                pic,
                fit: BoxFit.cover,
              );
            },
            itemCount: carousels.length,
            autoplay: carousels.isNotEmpty,
          ).aspectRatio(2.53);
        },
        error: (e, s) => const Text('error'),
        loading: () =>
            const CupertinoActivityIndicator().center.aspectRatio(2.53));
  }

  List<dynamic> _getCarouselList(final Map<String, dynamic> map) {
    return map['content'] as List<dynamic>;
  }
}
