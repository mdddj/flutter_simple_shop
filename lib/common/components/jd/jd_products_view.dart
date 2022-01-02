import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_more_list/loading_more_list.dart';
import '../../../provider/jd_products_provider.dart';
import 'product_model.dart';

/// 首页的京东列表
class JdProductsView extends StatefulWidget {
  const JdProductsView({Key? key}) : super(key: key);

  @override
  _JdProductsViewState createState() => _JdProductsViewState();
}

class _JdProductsViewState extends State<JdProductsView> {
  @override
  Widget build(BuildContext context) {
    return renderListWidget();
  }

  Widget renderListWidget() {
    return Consumer(
      builder: (BuildContext context,
          T Function<T>(ProviderBase<Object?, T>) watch, Widget? child) {
        final products = watch(jdProductsProvider).products;

        return EasyRefresh.custom(slivers: [
          SliverWaterfallFlow.count(
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            crossAxisCount: 2,
            children: products.map(renderItem).toList(),
          )
        ]);
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
          ).marginSymmetric(horizontal: 6),
        ],
      ),
    );
  }
}
