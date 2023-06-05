import 'package:dd_js_util/dd_js_util.dart';
import 'package:dd_js_util/model/picture_selection_item.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../api/apis.dart';
import '../../common/api_ext.dart';
import '../../index.dart';
import '../../meet/add_new_meet.dart';
import '../../pages/user_home_page/header/index.dart';

///资源发布页面
class MyResourceWritePage extends StatefulWidget {
  final String categoryName;

  const MyResourceWritePage({super.key, required this.categoryName});

  @override
  State<MyResourceWritePage> createState() => _MyResourceWritePageState();
}

class _MyResourceWritePageState extends State<MyResourceWritePage> {
  final PictureSelectionController _selectionController = PictureSelectionController();
  var content = "";
  var title = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('发布'),
        centerTitle: true,
        leading: TextButton(
          onPressed: context.pop,
          child: const Text('取消'),
        ),
        actions: [FilledButton(onPressed: _submit, child: const Text("发布")), const SizedBox(width: 12)],
      ),
      body: BodyExpandedWidget(
        bottom: _builderActionButton(),
        child: Column(
          children: [
            TextField(
              decoration: _decoration("取个标题吧，非必须").copyWith(prefixIcon: const LoginUserAvatar().padding(6), prefixIconColor: Colors.transparent),
              onChanged: (v) => title = v,
            ),
            Divider(
              indent: 12,
              endIndent: 12,
              color: Colors.grey.shade200,
            ),
            TextField(
              decoration: _decoration("写一下你的面基经历吧,出发前准备，面基过程，结束面基后的感受"),
              maxLines: 20,
              minLines: 8,
              onChanged: (v) {
                content = v;
              },
            ),
            // const SizedBox(height: 22),
            // Padding(
            //   padding: const EdgeInsets.all(12.0),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Text(
            //         '上传一些照片',
            //         style: context.textTheme.titleMedium,
            //       ),
            //       const SizedBox(height: 12),
            //       PictureSelection(
            //         multipleChoice: true,
            //         controller: _selectionController,
            //         padding: EdgeInsets.zero,
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }

  UnderlineInputBorder get _inputBorder => const UnderlineInputBorder(borderSide: BorderSide.none);

  InputDecoration _decoration(String hint) {
    return InputDecoration(
        hintText: hint,
        fillColor: Colors.white,
        filled: true,
        hintStyle: const TextStyle(color: Colors.grey),
        border: _inputBorder,
        enabledBorder: _inputBorder,
        focusedBorder: _inputBorder);
  }

  Future<void> _submit() async {
    final api = getIt.get<MyResourceCreateApi>();
    final files = await _getFiles();
    api.formData = FormData.fromMap({"files": files, "content": content, "cateName": widget.categoryName});
    final r = await api.request(const R());
    r.print();
    r.simpleToast();
  }

  ///获取文件列表
  Future<List<MultipartFile>> _getFiles() async {
    var files = <MultipartFile>[];
    await Future.forEach(_selectionController.getFiles, (element) async {
      final mf = await MultipartFile.fromFile(element.localFilePath?.path ?? '');
      files.add(mf);
    });
    return files;
  }

  ///获取操作小部件
  Widget _builderActionButton() {
    return Container(
      padding: EdgeInsets.all(6),
      child: Column(
        children: [
          Row(
            children: [
              Icon(CupertinoIcons.photo)
            ],
          )
        ],
      ),
    );
  }
}
