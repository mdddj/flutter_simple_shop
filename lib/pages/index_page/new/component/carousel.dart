part of '../../../index.dart';

final _carouselfuture = FutureProvider((ref) =>
    NewApiByCarousel().request(const RequestParams(showDefaultLoading: false)));

class IndexCarousel extends ConsumerWidget {
  const IndexCarousel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AspectRatio(
      aspectRatio: 2.53,
      child: ref.watch(_carouselfuture).when(
        data: (data) {
          return IndexTopicComponentCarousel(data);
        },
        error: (error, stackTrace) {
          return Center(
            child: Text(switch (error) {
              BaseApiException() => error.message,
              _ => "$error"
            }),
          );
        },
        loading: () {
          return Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12)),
              child: const Center(child: CupertinoActivityIndicator()));
        },
      ),
    );
  }
}

final kRivCarouseApiFuture = FutureProvider<WrapJson>((ref) async {
  try {
    return await (KZheTaokeApiWithCarousel())
        .request(const RequestParams(showDefaultLoading: false));
  } on BaseApiException catch (_) {
    rethrow;
  }
});

///折淘客的轮播图
class ZhetaokeCarouselWidget extends ConsumerWidget {
  const ZhetaokeCarouselWidget({super.key});

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
