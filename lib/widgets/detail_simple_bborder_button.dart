part of 'index.dart';

class DetailSimpleBorderButton extends StatelessWidget {
  final String text; // 文字
  final bool isCurrent; // 是否选中样式

  const DetailSimpleBorderButton({required this.text, required this.isCurrent, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10.0),
      decoration: BoxDecoration(border: isCurrent ? const Border(bottom: BorderSide(color: Colors.pinkAccent, width: 2.0)) : null),
      child: Text(text, style: TextStyle(color: isCurrent ? Colors.pinkAccent : Colors.black, fontWeight: isCurrent ? FontWeight.w600 : null)),
    );
  }
}
