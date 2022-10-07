import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
/// 申请面基页面
///
class ApplyPage extends StatefulWidget {
  const ApplyPage({Key? key}) : super(key: key);

  @override
  ApplyPageState createState() => ApplyPageState();
}

class ApplyPageState extends State<ApplyPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                  header: Text(
                    '请填写面基信息',
                    style: context.textTheme.headline6,
                  ),
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
                        return null;
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
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '上传你的生活照。(10张)',
                      style: context.textTheme.headline6?.copyWith(fontSize: 14),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 5,
                              mainAxisSpacing: 12,
                              crossAxisSpacing: 12),
                      itemBuilder: (context, index) {
                        return Container(
                          alignment: Alignment.center,
                          decoration:
                              BoxDecoration(color: Colors.grey.shade100),
                          child: const Icon(
                            Icons.add,
                            color: Colors.blue,
                          ),
                        );
                      },
                      itemCount: 10,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                width: double.infinity,
                child: CupertinoButton.filled(
                    child: const Text(
                      '加入和典典面基的队列',
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {}),
              ),
              Container(
                margin: const EdgeInsets.only(top: 9),
                alignment: Alignment.centerLeft,
                child: const Text(
                  '系统提示:你当前排在第78位',
                  style: TextStyle(color: Colors.grey),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
