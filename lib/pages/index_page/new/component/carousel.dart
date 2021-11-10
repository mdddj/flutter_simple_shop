// Flutter imports:
// Package imports:
import 'package:dd_taoke_sdk/dd_taoke_sdk.dart';
import 'package:dd_taoke_sdk/model/carousel_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../widgets/component/custom_loading.dart';
// Project imports:
import '../../component/topic_carousel.dart';

final carouselRiverpod = FutureProvider<List<Carousel>>((ref) async {

  final result = await DdTaokeSdk.instance.getCarousel();
  return result;
});

class IndexCarousel extends HookWidget {
  const IndexCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final carousel = useProvider(carouselRiverpod);
    return carousel.when(
        data: (data) => IndexTopicComponentCarousel(
          list: data,
        ),
        loading: () => Container(
          margin: const EdgeInsets.symmetric(horizontal: 12),
          child: const AspectRatio(
            aspectRatio: 2.53,
            child: Skeleton(
              width: double.infinity,
              height: double.infinity,
            ),
          ),
        ),
        error: (_, __) => const Text('加载轮播图失败'));
  }
}
