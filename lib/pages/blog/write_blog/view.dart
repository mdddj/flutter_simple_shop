import 'package:flutter/material.dart';
import '../../../widgets/simple_appbar.dart';

// 发布博客页面
class WriteBlogPage extends StatefulWidget {
  const WriteBlogPage({Key? key}) : super(key: key);

  @override
  WriteBlogPageState createState() => WriteBlogPageState();
}

class WriteBlogPageState extends State<WriteBlogPage> {
  final TextEditingController tagController = TextEditingController();
  final FocusNode tagFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(title: '发布博客'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            renderComponent(
              title: '请输入标题',
              child: const TextField(
              ),
            ),
            renderComponent(
              title: '请选择分类',
            ),
            renderComponent(
                title: '请输入正文内容',
                child: const TextField(
                  minLines: 6,
                  maxLines: 12,
                )),
            renderComponent(
                title: '添加文章标签',
                child: TextField(
                  controller: tagController,
                  focusNode: tagFocusNode,
                  onSubmitted: (v) {
                    tagController.clear();
                    tagFocusNode.requestFocus();
                  },
                )),
            renderComponent(
                title: '操作',
                child: const Row(
                  children: [
                  ],
                ))
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    tagController.dispose();
    tagFocusNode.dispose();
    super.dispose();
  }

  Widget renderComponent({String? title, Widget? child}) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) Container(margin: const EdgeInsets.only(bottom: 6), child: Text(title)),
          if (child != null) child,
        ],
      ),
    );
  }
}
