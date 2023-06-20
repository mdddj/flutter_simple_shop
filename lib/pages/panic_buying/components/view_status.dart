part of pages;

/// 页面状态显示
class ViewStatusWithPanicBuy extends ConsumerWidget {
  const ViewStatusWithPanicBuy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final changeLoading = ref
        .watch(panicBuyingModelRiverpod.select((value) => value.changeLoading));
    if (changeLoading) {
      return const LoadingWidget();
    }
    return const SizedBox();
  }
}
