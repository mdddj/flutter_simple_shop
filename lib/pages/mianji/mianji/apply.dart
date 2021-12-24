import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

/// 申请面基页面
///
class ApplyPage extends StatefulWidget {
  const ApplyPage({Key? key}) : super(key: key);

  @override
  _ApplyPageState createState() => _ApplyPageState();
}

class _ApplyPageState extends State<ApplyPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MorphingAppBar(
        title: const Text('典典面基助手'),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Form(
                key: formKey,
                child: CupertinoFormSection.insetGrouped(
                  margin: EdgeInsets.zero,
                  header: const Text('请填写面基信息'),
                  backgroundColor: Colors.transparent,
                  children: [
                    CupertinoTextFormFieldRow(
                      prefix: const Text(
                        '姓名',
                      ),
                      placeholder: '请输入姓名',
                      validator: (String? text) {
                        if (text == null || text.isEmpty) {
                          return '请输入姓名';
                        }
                      },
                    ),
                    CupertinoTextFormFieldRow(
                      prefix: const Text(
                        'Soul',
                      ),
                      placeholder: '请填写你的Soul用户名，方便典典找到你',
                    ),
                    CupertinoTextFormFieldRow(
                      prefix: const Text(
                        '年龄',
                      ),
                      placeholder: '请输入您的年龄',
                    ),
                    CupertinoTextFormFieldRow(
                      prefix: const Text(
                        '面基事项',
                      ),
                      placeholder: '你想和典典面基去干嘛?',
                    ),
                    CupertinoTextFormFieldRow(
                      prefix: const Text(
                        '你的住址',
                      ),
                      placeholder: '单纯想看看你住在哪里呢',
                    ),
                    CupertinoTextFormFieldRow(
                      prefix: const Text(
                        '面基地点',
                      ),
                      placeholder: '你想和典典在哪里面基呢？',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              CupertinoButton.filled(
                  child: const Text(
                    '填写完毕，进入面基队列。\n(您当前排在第189位)',
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
