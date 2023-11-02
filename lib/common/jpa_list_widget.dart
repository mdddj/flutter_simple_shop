part of 'index.dart';

abstract class JpaListWidget<T, A extends BaseApi> extends StatelessWidget {
  const JpaListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MyLoadingMoreSliverList(MySliverListConfig(
        itemBuilder: buildLayout, sourceList: sourceList, padding: const EdgeInsets.all(8), lock: false, extendedListDelegate: extendedListDelegate(context), indicatorBuilder: _indicatorBuilder));
  }

  Widget buildLayout(BuildContext context, T item, int index);

  JpaPageLoadingMore<T, A> get sourceList;

  ExtendedListDelegate? extendedListDelegate(BuildContext context) {
    return SliverWaterfallFlowDelegateWithFixedCrossAxisCount(crossAxisCount: context.waterfallFlowCrossAxisCountResource, mainAxisSpacing: 8, crossAxisSpacing: 8);
  }

  Widget? _indicatorBuilder(BuildContext context, status) {
    return CustomLoadingMoreWidgetWithSliver(context, status, retry: () {
      sourceList.refresh(true);
    }, emptyChild: const SizedBox());
  }
}
