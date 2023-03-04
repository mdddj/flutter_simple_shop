import 'package:dataoke_sdk/dataoke_sdk.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../provider/index_provider.dart';

// 品牌特卖
class StoreItemCard extends ConsumerWidget {
  final ListElement storeInfo;

  const StoreItemCard({Key? key, required this.storeInfo}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return _buildInfo(context,ref).marginOnly(top: 6);
  }

  Widget _buildInfo(BuildContext context,WidgetRef ref) {
    final bgColor = ref.read(indexProviderRiverpod).brandBgColorMap[storeInfo.brandId] ?? Colors.grey[200];
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: bgColor!.withOpacity(.05),
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: _buildLogo(),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    storeInfo.brandName!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontSize: 14,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Text('近期销量${storeInfo.sales}件',
                  style: const TextStyle(color: Colors.black, fontSize: 11))
            ],
          ),
        ],
      ),
    );
  }

  Image _buildLogo() {
    return Image.network(
      storeInfo.brandLogo!,
      width: 36,
      height: 36,
    );
  }
}
