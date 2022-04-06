// Flutter imports:
import 'package:flutter/material.dart';

import '../../../util/navigator_util.dart';
// Project imports:
import '../widgets/svg_title.dart';

class OrderIndex extends StatelessWidget {
  const OrderIndex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _actions(context);
  }

  Widget _actions(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: GridView.count(shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 4,
        padding: EdgeInsets.zero,
        children: [
          InkWell(
            onTap: () {
              NavigatorUtil.gotoOrderAllIndexPage(context, '-1'); // -1表示全部显示
            },
            child: const SvgTitle(title: '全部订单', svgPath: 'assets/svg/order.svg'),
          ),
          const SvgTitle(title: '已通过', svgPath: 'assets/svg/order2.svg',),
          const SvgTitle(title: '等待审核', svgPath: 'assets/svg/order3.svg'),
          const SvgTitle(title: '无效订单', svgPath: 'assets/svg/order4.svg'),
        ],
      ),
    );
  }
}
