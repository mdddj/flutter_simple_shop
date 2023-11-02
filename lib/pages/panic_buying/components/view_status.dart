part of '../../index.dart';

/// 页面状态显示
class ViewStatusWithPanicBuy extends ConsumerWidget {
  const ViewStatusWithPanicBuy({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final changeLoading = ref.watch(panicBuyingModelRiverpod.select((value) => value.changeLoading));
    if (changeLoading) {
      return const LoadingWidget();
    }
    return const SizedBox();
  }
}
