import 'package:dataoke_sdk/dataoke_sdk.dart';
import 'package:flutter/material.dart';
import 'package:loading_more_list_fast/loading_more_list_fast.dart';
import '../../../util/index.dart';
import '../../../widgets/index.dart';

class BanjiaList extends StatelessWidget {
  final List<HalfPriceListElement> products;

  const BanjiaList({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverWaterfallFlow.count(
      crossAxisCount: 1,
      children: products.map(renderItem).toList(),
    );
  }

  Widget renderItem(HalfPriceListElement item) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          SizedBox(
            width: 120,
            height: 120,
            child: SimpleImage(
              url: item.picUrl!,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
              child: ConstrainedBox(
            constraints: const BoxConstraints(minHeight: 120),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${item.name}'),
                    const SizedBox(
                      height: 5,
                    ),
                    Badge(
                      child: Text(
                        '${item.yijuhua}',
                        style: const TextStyle(color: Colors.pink),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SimplePrice(
                      price: '${item.price}',
                      hideText: '',
                    ),
                    Builder(builder: (context) {
                      return ElevatedButton(
                        onPressed: () {
                          NavigatorUtil.gotoGoodsDetailPage(
                              context, '${item.id}',
                              newViewPage: true);
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.pink)),
                        child: Text((item.itemSoldNum ?? 0) == 0
                            ? '去抢购'
                            : '已抢${item.itemSoldNum}'),
                      );
                    })
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
