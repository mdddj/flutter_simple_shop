import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import '../../component/topic_carousel.dart';
import '../index_riverpod.dart';


class IndexCarousel extends HookWidget {
  const IndexCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<IndexState>(builder: (c,v,ch){
      final data = v.carousel;
      return IndexTopicComponentCarousel(
                list: data,
              );
    });
  }
}
