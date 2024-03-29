part of '../../index.dart';

class JdCategoryMiniWidget extends StatelessWidget {
  final String? selectId;
  final ValueChanged<JdTypeModel>? onSelect;

  const JdCategoryMiniWidget({super.key, this.onSelect, this.selectId});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: jdTypes.map(renderItem).toList(),
      ),
    ).marginOnly(right: 12);
  }

  Widget renderItem(JdTypeModel item) {
    final isSelect = selectId != null && selectId == item.id;
    return GestureDetector(
      onTap: () {
        onSelect?.call(item);
      },
      child: Container(
        margin: const EdgeInsets.only(left: 12),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: isSelect ? Colors.black : Colors.grey.shade200,
          borderRadius: const BorderRadius.all(Radius.circular(5)),
        ),
        child: Text(
          item.name,
          style: TextStyle(color: isSelect ? Colors.white : Colors.grey),
        ),
      ),
    );
  }
}
