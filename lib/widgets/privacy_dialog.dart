part of widgets;

class PrivacyDialog extends StatelessWidget {
  const PrivacyDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      title: const Text('典典小卖部隐私政策'),
      content: Container(
        height: context.screenHeight * 0.9,
        margin: const EdgeInsets.only(bottom: 12,top: 12),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        child: WebViewWidget(
            controller: WebViewController()
              ..loadRequest(Uri.parse("${useEnv.host}:${useEnv.port}/privacy"))
              ..setBackgroundColor(context.theme.dialogBackgroundColor)),
      ),
      actions: [
         TextButton(onPressed: ()=>exit(0), child: const Text('退出程序'))
            .marginOnly(right: 12),
        FilledButton(
            onPressed: () async {
              final nav = context.nav;
              await getIt.get<PrivacyCache>().changePrivacyState(true);
              nav.pop(true);
            },
            child: const Text('我已阅读并同意该隐私政策'))
      ],
    );
  }
}
