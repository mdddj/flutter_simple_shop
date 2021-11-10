// Flutter imports:
// Package imports:
import 'package:black_hole_flutter/black_hole_flutter.dart';
import 'package:flutter/material.dart';

// Project imports:
import '../../../common/widgets/loading_mixin.dart';
import '../../../constant/style.dart';
import '../../../service/api_service.dart';
import '../../../widgets/edit_page_handle.dart';
import '../../../widgets/simple_appbar.dart';

/// 上传新版本页面
class NewVersionPage extends StatefulWidget {
  const NewVersionPage({Key? key}) : super(key: key);

  @override
  _NewVersionPageState createState() => _NewVersionPageState();
}

class _NewVersionPageState extends State<NewVersionPage> with LoadingMixin {
  final TextEditingController textEditingController = TextEditingController();
  final TextEditingController descController = TextEditingController();
  final TextEditingController downUrlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return EditePageHandle(
      child: Scaffold(
        appBar: const SimpleAppBar(title: '上传新版本'),
        body: Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  controller: textEditingController,
                  decoration: const InputDecoration(hintText: '输入版本号'),
                ),
                TextField(controller: descController, decoration: const InputDecoration(hintText: '输入版本更新内容')),
                TextField(controller: downUrlController, decoration: const InputDecoration(hintText: '版本下载网址')),
                FancyElevatedButton(
                  onPressed: () async {
                    final text = textEditingController.text;
                    final desc = descController.text;
                    final url = downUrlController.text;
                    setLoading(true);
                    await tkApi.setNewVersionNumber(text, desc, url);
                    setLoading(false);
                  },
                  isLoading: loadingState,
                  child: const Text('提交'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
