part of '../index.dart';

class RightWidgetItme extends ConsumerWidget {
  final Subcategory item;
  final Category category;

  const RightWidgetItme({required this.item, required this.category, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        context.navToWidget(to: CategoryListPage(category: category));
      },
      child: Column(
        children: <Widget>[
          ExtendedImageWidget(
            src: item.scpic,
            width: 50,
            height: 50,
            radius: BorderRadius.circular(50),
          ),
          const SizedBox(height: 5),
          Text(item.subcname)
        ],
      ),
    );
  }
}
