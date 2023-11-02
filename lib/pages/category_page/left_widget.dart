part of '../index.dart';

class LeftWidgetItem extends StatelessWidget {
  final Category item;
  final bool isCurrent;

  const LeftWidgetItem({required this.item, required this.isCurrent, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(color: isCurrent ? context.primaryColor : null),
      child: Text(
        item.cname,
        style: TextStyle(color: isCurrent ? context.colorScheme.inversePrimary : null),
      ),
    );
  }
}
