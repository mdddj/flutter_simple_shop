part of widgets;

// 提醒工具
class ToolTip extends StatelessWidget {
  final VoidCallback? onClose;
  final String text; // 提示语
  const ToolTip({Key? key, this.onClose, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.cyan.shade50, borderRadius: BorderRadius.circular(5)),
      child: Row(
        children: [
          Expanded(child: Text(text)),
          IconButton(onPressed: onClose, icon: const Icon(Icons.clear))
        ],
      ),
    );
  }
}
