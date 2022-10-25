import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_actions/keyboard_actions.dart';

import '../constant/style.dart';

///线下面基申请页面
class AddNewMeet extends StatefulWidget {
  const AddNewMeet({Key? key}) : super(key: key);

  @override
  State<AddNewMeet> createState() => _AddNewMeetState();
}

class _AddNewMeetState extends State<AddNewMeet> {
  final ctrlName = TextEditingController(); //姓名
  final ctrlAge = TextEditingController(); //年龄
  final ctrlSoulName = TextEditingController(); //soul昵称
  final ctrlInfo = TextEditingController(); //面基详情,面基去干嘛
  final ctrlAddressYour = TextEditingController(); //你的居住地
  final ctrlAddressTo = TextEditingController(); // 你想去面基的地点
  final ctrlTimeWithDD = TextEditingController(); //你和典典认识多久了

  ///-----
  final fNameFocusNode = FocusNode(); //姓名
  final fAgeFocusNode = FocusNode(); //年龄
  final fSoulNameFocusNode = FocusNode(); //soul昵称
  final fInfoFocusNode = FocusNode(); //面基详情,面基去干嘛
  final fAddressYourFocusNode = FocusNode(); //你的居住地
  final fAddressToFocusNode = FocusNode(); // 你想去面基的地点
  final fTimeWithDDFocusNode = FocusNode(); //你和典典认识多久了

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: '申请面基'.appbar,
      body: KeyboardActions(
        config: _buildConfig,
        child: ListView(
          padding: const EdgeInsets.all(kDefaultPadding),
          children: [
            Column(
              children: [
                MyTextField(
                  placeholder: '姓名',
                  controller: ctrlName,
                  focusNode: fNameFocusNode,
                ),
                MyTextField(
                  placeholder: '年龄',
                  controller: ctrlAge,
                  focusNode: fAgeFocusNode,
                ),
                MyTextField(
                  placeholder: 'Soul用户名',
                  controller: ctrlSoulName,
                  focusNode: fSoulNameFocusNode,
                ),
                MyTextField(
                  placeholder: '面基详情描述',
                  controller: ctrlInfo,
                  focusNode: fInfoFocusNode,
                ),
              ],
            ),
            Column(
              children: [
                MyTextField(
                  placeholder: '你的居住地',
                  controller: ctrlAddressYour,
                  focusNode: fAddressYourFocusNode,
                ),
                MyTextField(
                  placeholder: '你想面基的地点',
                  controller: ctrlAddressTo,
                  focusNode: fAddressToFocusNode,
                ),
                MyTextField(
                  placeholder: '你和典典认识多久了',
                  controller: ctrlTimeWithDD,
                  focusNode: fTimeWithDDFocusNode,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  KeyboardActionsConfig get _buildConfig {
    return KeyboardActionsConfig(actions: [
      KeyboardActionsItem(focusNode: fNameFocusNode),
      KeyboardActionsItem(focusNode: fAgeFocusNode),
      KeyboardActionsItem(focusNode: fSoulNameFocusNode),
      KeyboardActionsItem(focusNode: fInfoFocusNode),
      KeyboardActionsItem(focusNode: fAddressYourFocusNode),
      KeyboardActionsItem(focusNode: fAddressToFocusNode),
      KeyboardActionsItem(focusNode: fTimeWithDDFocusNode),
    ]);
  }
}

///自定义表单
class MyTextField extends StatelessWidget {
  final String? placeholder;
  final TextEditingController? controller;
  final FocusNode? focusNode;

  const MyTextField({Key? key, this.placeholder, this.controller, this.focusNode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        maxLines: 5,
        minLines: 1,
        decoration: InputDecoration(hintText: placeholder, filled: true, fillColor: context.theme.highlightColor),
      ),
    );
  }
}
