part of '../../../index.dart';

class IndexProductss extends ConsumerWidget {
  const IndexProductss({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list = ref.watch(indexStateRiverpod.select((value) => value.products));
    if (list.isEmpty) return const SliverToBoxAdapter();
    return ProductsList(list);
  }
}
