part of '../../../index.dart';
// Package imports:

/// 预览markdown
class MarkDownPreview extends StatelessWidget {
  final String data;

  const MarkDownPreview({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('预览'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [MarkdownBody(data: data)],
        ),
      ),
    );
  }
}
