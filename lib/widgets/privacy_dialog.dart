part of 'index.dart';

class PrivacyDialog extends StatefulWidget {
  const PrivacyDialog({super.key});

  @override
  State<PrivacyDialog> createState() => _PrivacyDialogState();
}

class _PrivacyDialogState extends State<PrivacyDialog> {
  final url = "https://itbug.shop/single/privacy";

  @override
  void initState() {
    super.initState();
    Logger().d(url);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      title: const Text('典典小卖部隐私政策'),
      content: Container(
        width: context.dialogWidth,
        height: context.screenHeight * 0.9,
        margin: const EdgeInsets.only(bottom: 12, top: 12),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        child: kIsWeb
            ? HtmlTextWidget()
            : (Platform.isAndroid || Platform.isIOS
            ? WebViewWidget(
            controller: WebViewController()
              ..loadRequest(Uri.parse(url))
              ..setBackgroundColor(
                  context.theme.dialogTheme.backgroundColor ??
                      Colors.white))
            : HtmlTextWidget()),
      ),
      actions: [
        if (!kIsWeb)
          TextButton(onPressed: () => exit(0), child: const Text('退出程序'))
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

class HtmlTextWidget extends ConsumerStatefulWidget {
  const HtmlTextWidget({super.key});

  @override
  ConsumerState<HtmlTextWidget> createState() => _HtmlTextWidgetState();
}

class _HtmlTextWidgetState extends ConsumerState<HtmlTextWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ref.watch(textListAllProvider).whenOrNull(
      data: (data) {
        final item = data.find((element) => element.name == "privacy");
        final html = item?.context ?? '服务端没有配置隐私协议';
        return HtmlWidget(html);
      },
    ) ??
        SizedBox();
  }
}

class StringRequest extends MyBaseApi<String> {
  StringRequest(super.url);

  @override
  String covertToModel(DartTypeModel data, RequestParams param) {
    return data
        .whenOrNull(string: (value) => value)
        .ifNullThrowBizException("获取数据失败");
  }
}
