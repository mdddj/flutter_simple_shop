part of widgets;

class PrivacyDialog extends StatefulWidget {
  const PrivacyDialog({super.key});

  @override
  State<PrivacyDialog> createState() => _PrivacyDialogState();
}

class _PrivacyDialogState extends State<PrivacyDialog> {
  final url = "${useEnv.host}:${useEnv.port}/privacy";
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
        child:kIsWeb ?  HtmlTextWidget(
          url: url,
        ) : ( Platform.isAndroid || Platform.isIOS
            ? WebViewWidget(
            controller: WebViewController()
              ..loadRequest(Uri.parse(url))
              ..setBackgroundColor(context.theme.dialogBackgroundColor))
            : HtmlTextWidget(
          url: url,
        )),
      ),
      actions: [
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

class HtmlTextWidget extends StatefulWidget {
  final String url;
  const HtmlTextWidget({super.key, required this.url});

  @override
  State<HtmlTextWidget> createState() => _HtmlTextWidgetState();
}

class _HtmlTextWidgetState extends State<HtmlTextWidget> {
  String get url => widget.url;
  String _html = "";

  //加载html
  Future<void> _loadHtml() async {
    try {
      final response = await StringRequest(Uri.parse(url).path)
          .request(const R(showDefaultLoading: false, returnIsString: true));
      setState(() {
        _html = response;
      });
    } on AppException catch (e) {
      toast(e.getMessage);
    }
  }

  @override
  void initState() {
    super.initState();
    Future.microtask(_loadHtml);
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(12),
      child: HtmlWidget(_html),
    );
  }
}

class StringRequest extends BaseApi {
  StringRequest(super.url);
}
