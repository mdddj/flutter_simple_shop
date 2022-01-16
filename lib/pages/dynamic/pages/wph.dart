// Package imports:
import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:provider/provider.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

import '../../../widgets/extended_image.dart';
import '../../index_page/store/price_layout.dart';
import '../../public_detail/view.dart';
// Project imports:
import '../wph_riverpod.dart';

/// 唯品会精编商品列表
class WeipinhuiJinBianGoods extends StatefulWidget {
  const WeipinhuiJinBianGoods({Key? key}) : super(key: key);

  @override
  _WeipinhuiJinBianGoodsState createState() => _WeipinhuiJinBianGoodsState();
}

class _WeipinhuiJinBianGoodsState extends State<WeipinhuiJinBianGoods> {
  @override
  void initState() {
    super.initState();
    context.read<WphState>().init();
  }

  @override
  Widget build(BuildContext context) {
    return EasyRefresh.custom(
      slivers: [
        Consumer<WphState>(
          builder: (BuildContext context,value, Widget? child) {
            final list = value.products;
            return SliverList(delegate: SliverChildBuilderDelegate((_, index) => renderItem(list[index]), childCount: list.length));
          },
        )
      ],
      onLoad: context.read<WphState>().nextPage,
    );
  }

  /// 唯品会卡片布局
  Widget renderItem(dynamic item) {
    return GestureDetector(
      onTap: (){
         context.navigator.push(SwipeablePageRoute(builder: (_)=>PublicDetailView(goodsId: item['id'].toString(), type: 'wph')));
      },
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  renderSvg(),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    '梁典典',
                    style: TextStyle(color: Colors.black, fontSize: 13),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text('${item['content']}'),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                              decoration: BoxDecoration(color: Colors.pink, borderRadius: BorderRadius.circular(5)),
                              child: const Text(
                                '特卖价',
                                style: TextStyle(fontSize: 10, color: Colors.white),
                              ),
                            ),
                            PriceLayout(original: '${item['quanhou_price']}'.replaceAll('.00', ''), discounts: ''),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: SimpleImage(url: item['pic']),
                  )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget renderSvg() {
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Image.asset('assets/images/dd.png'),
        ),
      ],
    );
  }
}
