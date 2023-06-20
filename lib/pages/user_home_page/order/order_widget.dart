part of pages;

class OrderIndex extends StatelessWidget {
  const OrderIndex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _actions(context);
  }

  Widget _actions(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('我的订单',
                      style: context.textTheme.headlineSmall?.copyWith(
                          fontSize: 17, fontWeight: FontWeight.bold)),
                  Text(
                    '查看全部 >',
                    style: context.textTheme.bodySmall,
                  )
                ],
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 4,
              padding: EdgeInsets.zero,
              children: [
                InkWell(
                  onTap: () {
                    NavigatorUtil.gotoOrderAllIndexPage(
                        context, '-1'); // -1表示全部显示
                  },
                  child: const SvgTitle(
                      title: '全部订单', svgPath: 'assets/svg/order.svg'),
                ),
                const SvgTitle(
                  title: '已通过',
                  svgPath: 'assets/svg/order2.svg',
                ),
                const SvgTitle(title: '等待审核', svgPath: 'assets/svg/order3.svg'),
                const SvgTitle(title: '无效订单', svgPath: 'assets/svg/order4.svg'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
