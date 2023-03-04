// Dart imports:

// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import './index_layout.dart';
// Project imports:
import '../../provider/ddq_provider.dart';
import '../../util/navigator_util.dart';
import '../../widgets/extended_image.dart';
import 'component/component_title.dart';

// 钉钉抢
class DDQWidget extends ConsumerStatefulWidget {
  const DDQWidget({Key? key}) : super(key: key);

  @override
  DDQWidgetState createState() => DDQWidgetState();
}

class DDQWidgetState extends ConsumerState<DDQWidget> {
  final GlobalKey globalKey = GlobalKey();
  DdqProvider? ddqProvider;
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    final loading = ref.watch(ddqRiverpod.select((value) => value.initLoading));
    return IndexPublicLayout(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        child: Column(
          children: <Widget>[
            ComponentTitle(
              title: '限时抢购',
              height: 24,
              onTap: ()=>NavigatorUtil.goTODdqPage(context),
            ),
            const SizedBox(
              height: 12,
            ),
            AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                child: loading ? Container(
                  height: 200,
                  alignment: Alignment.center,
                  child: const CupertinoActivityIndicator(),
                ) : _buildWidgetGoosList()),
            const SizedBox(height: 12,)
          ],
        ),
      ),
    );
  }

  /// 商品列表version2
  Widget _buildWidgetGoosList() {
    var list = ddqProvider!.goodsList;
    if (list.length >= 3) {
      return Flex(
        direction: Axis.horizontal,
        children: <Widget>[
          _mimiGoodsCard(
              list[0].mainPic,
              list[0].actualPrice.toString(),
              list[0].originalPrice.toString(),
              list[0].monthSales.toString(),
              list[0].dtitle),
          const SizedBox(width: 12),
          _mimiGoodsCard(
              list[1].mainPic,
              list[1].actualPrice.toString(),
              list[1].originalPrice.toString(),
              list[1].monthSales.toString(),
              list[1].dtitle),
          const SizedBox(width: 12),
          _mimiGoodsCard(
              list[2].mainPic,
              list[2].actualPrice.toString(),
              list[2].originalPrice.toString(),
              list[2].monthSales.toString(),
              list[2].dtitle),
        ],
      );
    }
    return Row(
      children: const <Widget>[],
    );
  }

  // 商品卡片布局
  Widget _mimiGoodsCard(
      String? src, String price, String orginPrice, String xl, String title) {
    return Flexible(
      flex: 1,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SizedBox(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                SizedBox(
                    width: constraints.maxWidth,
                    height: constraints.maxWidth,
                    child: SimpleImage(url: src!)),
                const SizedBox(height: 12),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    title,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(height: 6),
                Row(
                  verticalDirection: VerticalDirection.up,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '￥$price',
                        style: const TextStyle(
                            color: Colors.red,
                            fontSize:12),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        '￥$orginPrice',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            color: Colors.black38,
                            fontSize:12,
                            decoration: TextDecoration.lineThrough),
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

}
