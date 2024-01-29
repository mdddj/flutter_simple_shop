part of 'index.dart';

class MyWebviewPage extends StatelessWidget {
  final String title;
  final String url;

  const MyWebviewPage({super.key, required this.title, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: WebViewWidget(
          controller: WebViewController()
            ..setJavaScriptMode(JavaScriptMode.unrestricted)
            ..loadRequest(Uri.parse(url))),
    );
  }
}
