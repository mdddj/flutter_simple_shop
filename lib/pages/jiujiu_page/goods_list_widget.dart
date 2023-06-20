part of pages;

class GoodsListWidget extends StatelessWidget {
  final List<ProductModel>? list;
  final bool? isInitLoading;
  const GoodsListWidget({required this.list, this.isInitLoading, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isInitLoading!
        ? SizedBox(
            height: 250,
            width: context.screenWidth,
            child: Center(
              child: Image.asset('assets/images/loading.gif'),
            ),
          )
        : ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: list!.length,
            itemBuilder: (context, index) {
              return GoodsItemWidget(goodsItem: list![index]);
            },
          );
  }
}
