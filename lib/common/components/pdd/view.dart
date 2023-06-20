part of common;

class PddRecommendListView extends StatefulWidget {
  const PddRecommendListView({Key? key}) : super(key: key);

  @override
  PddRecommendListViewState createState() => PddRecommendListViewState();
}

class PddRecommendListViewState extends State<PddRecommendListView> {
  PddRecommendListResp pddRecommendListResp = PddRecommendListResp();

  @override
  Widget build(BuildContext context) {
    return LoadingMoreList(
      ListConfig<PddGoods>(
        extendedListDelegate:
            const SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemBuilder: renderIten,
        sourceList: pddRecommendListResp,
        padding: const EdgeInsets.all(12),
        // shrinkWrap: true,
        // physics: NeverScrollableScrollPhysics()
      ),
    );
  }

  // 渲染item
  Widget renderIten(BuildContext context, PddGoods item, int index) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return GestureDetector(
          onTap: () {
            context.navToWidget(
                to: PublicDetailView(goodsId: item.goodsSign, type: 'pdd'));
          },
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Column(
                children: [
                  renderImage(constraints, item),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.goodsName,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontSize: 12),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        SimplePrice(
                            price: MoneyUtil.changeF2Y(item.minGroupPrice)),
                        const SizedBox(
                          height: 12,
                        ),
                        ShowUpAnimation(
                            animationDuration:
                                const Duration(milliseconds: 300),
                            child: CouponDiscountShow(
                                value: MoneyUtil.changeF2Y(item.couponDiscount)
                                    .replaceAll('.00', '')))
                      ],
                    ),
                  )
                ],
              )),
        );
      },
    );
  }

  SizedBox renderImage(BoxConstraints constraints, PddGoods item) {
    return SizedBox(
      width: constraints.maxWidth,
      height: constraints.maxWidth,
      child: SimpleImage(
        url: item.goodsImageUrl,
        radius: const BorderRadius.only(
            topRight: Radius.circular(5), topLeft: Radius.circular(5)),
      ),
    );
  }
}
