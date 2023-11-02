part of '../index.dart';

/// 新版本弹窗
class NewVersionDialog extends StatefulWidget {
  final Map<String, dynamic> map;

  const NewVersionDialog({super.key, required this.map});

  @override
  NewVersionDialogState createState() => NewVersionDialogState();
}

class NewVersionDialogState extends State<NewVersionDialog> {
  @override
  Widget build(BuildContext context) {
    final desc = widget.map['desc'].toString();
    final url = widget.map['downUrl'].toString();
    return AlertDialog(
      title: const Text('新版本发布!'),
      content: Text(desc),
      actions: [
        TextButton(onPressed: context.pop, child: const Text('忽略')),
        ElevatedButton(
            onPressed: () async {
              final nav = context.nav;
              if (url.isNotEmpty) {
                await utils.openLink(url);
                nav.pop();
              } else {
                showIosDialog('未配置下载页面url');
                nav.pop();
              }
            },
            child: const Text('前往下载'))
      ],
    );
  }
}
