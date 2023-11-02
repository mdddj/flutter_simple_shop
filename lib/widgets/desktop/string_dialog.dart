part of '../index.dart';

class StringInputDialog extends StatefulWidget {
  final String? title;
  final String? hintText;

  const StringInputDialog({super.key, this.title, this.hintText});

  @override
  State<StringInputDialog> createState() => _StringInputDialogState();
}

class _StringInputDialogState extends State<StringInputDialog> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.title ?? "输入内容"),
      content: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: widget.hintText ?? "输入点内容吧",
              ),
              minLines: 5,
              maxLines: 10,
            )
          ],
        ),
      ),
      actions: [
        FilledButton.icon(
            onPressed: () {
              if (controller.text.isNotEmpty) {
                Navigator.pop(context, controller.text);
              }
            },
            label: const Text('提交'),
            icon: const Icon(Icons.send))
      ],
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
