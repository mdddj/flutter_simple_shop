import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart'
    as my_carousel_comp;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dataoke_sdk/dataoke_sdk.dart';
import 'package:dd_js_util/api/request_params.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'package:dd_js_util/model/my_image.dart';
import 'package:dd_models/models/carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety_flutter3/flutter_swiper_null_safety_flutter3.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../common/utils.dart';
import '../../activity_page/activity_view/view.dart';
import '../new/index_riverpod.dart';

/// 首頁輪播圖 
class IndexTopicComponentCarousel extends ConsumerWidget {
  final List<Carousel> list;

  const IndexTopicComponentCarousel({Key? key, required this.list})
      : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return AspectRatio(
      aspectRatio: 2.53,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          final item = list[index];
          return renderItem(item);
        },
        itemCount: list.length,
        pagination: const SwiperPagination(),
        onTap: (int index) async {

          final stateProivder = ref.read(indexStateRiverpod);
          final item = list[index];
          if (item.sourceType == 1) {
            context.navToWidget(to: ActivityViewPage(
                id: '${item.topicId}', title: item.topicName));
          }
          if (item.sourceType == 2) {
            stateProivder.changeLoadingState(true);
            final result = await DdTaokeSdk.instance.getActivityLink(
                ActivityLinkParam(promotionSceneId: item.activityId), requestParamsBuilder: (RequestParams requestParams) {
                  return requestParams;
            });
            if (result != null) {
              await utils.openTaobao(result.clickUrl);
            }
            stateProivder.changeLoadingState(false);
          }
          if ((item.link).isNotEmpty) {
            await utils.openLink(item.link);
          }
        },
      ),
    );
  }

  Widget render() {
    return my_carousel_comp.Carousel(
      images: list.map(renderItem).toList(),
      defaultImage: utils.widgetUtils.loading(double.infinity, 200),
      overlayShadow: true,
      dotSpacing: 12,
      indicatorBgPadding: 1,
      overlayShadowColors: Colors.grey.shade200,
      animationCurve: Curves.easeOutQuart,
      radius: const Radius.circular(5),
      dotVerticalPadding: 5,
      dotSize: 5,
      onImageChange: (a, b) {},
      onImageTap: (index) {
        final clickItem = list[index];
        utils.openLink(clickItem.link);
      },
      autoplay: true,
    );
  }

  Widget renderItem(Carousel item) {
    return Builder(
      builder: (BuildContext context) {
        return ImageView( image: MyImage.network(url: item.topicImage,params: ImageParams(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(12)
        )),
        );
      },
    );
  }

  CarouselSlider buildCarouselSlider(
      List<Carousel> carousel, BuildContext context) {
    return CarouselSlider(
      options:
          CarouselOptions(height: 200, autoPlay: true, enlargeCenterPage: true),
      items: carousel.map(renderItem).toList(),
    );
  }
}
