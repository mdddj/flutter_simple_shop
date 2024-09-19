part of '../../index.dart';

/// 首頁輪播圖
class IndexTopicComponentCarousel extends ConsumerWidget {
  final ZheCarouselResult zheModel;

  const IndexTopicComponentCarousel(this.zheModel, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ZheCarouselResult(:content) = zheModel;
    return Swiper(
      itemBuilder: (BuildContext context, int index) {
        final item = content[index];
        return ImageView(
            image: MyImage.network(
                url: item.pic,
                params: ImageParams(
                    customLoadingWidget: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                    enableMemoryCache: true,
                    cache: true,
                    cacheRawData: true,
                    clearMemoryCacheIfFailed: true,
                    borderRadius: BorderRadius.circular(12),
                    shape: BoxShape.rectangle)));
      },
      itemCount: content.length,
      pagination: const SwiperPagination(),
      onTap: (int index) async {
        final ZheCarousel(:getUrl, :name) = content[index];
        final zheAppKey = ref.zheAppKey;
        final url = getUrl.replaceAll("{替换appkey}", zheAppKey);
        context.navToWidget(
            to: ZheCarouselProductsPage(apiUrl: url, name: name));
      },
    );
  }
}
