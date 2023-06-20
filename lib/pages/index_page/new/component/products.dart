part of pages;

class IndexProductss extends ConsumerWidget {
  const IndexProductss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list =
        ref.watch(indexStateRiverpod.select((value) => value.products));
    if (list.isEmpty) return const SliverToBoxAdapter();
    return ProductsList(list);
  }
}
