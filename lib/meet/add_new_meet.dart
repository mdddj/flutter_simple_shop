import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:keyboard_actions/keyboard_actions.dart';

import '../api/apis.dart';
import '../assets.dart';
import '../common/view.dart';

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

  ///提交数据
  Future<void> submitData() async {
    final api = MeetRequestAdd();
    api.params.addAll({});
    final response = await api.request();
    response.handle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: '申请面基'.appbar,
      body: KeyboardActions(
        config: _buildConfig,
        child: CupertinoListSection(
          margin: const EdgeInsets.all(12),
          header: const Text('填写基本信息'),
          footer: CupertinoButton.filled(onPressed: submitData, child: const Text('提交申请')).center,
          children: [
            MyTextField(
              placeholder: '怎么称呼您',
              controller: ctrlName,
              focusNode: fNameFocusNode,
              icon: const Icon(CupertinoIcons.profile_circled),
            ),
            MyTextField(
              placeholder: '(选填)年龄',
              controller: ctrlAge,
              focusNode: fAgeFocusNode,
            ),
            MyTextField(
              placeholder: '(选填)Soul用户名',
              controller: ctrlSoulName,
              focusNode: fSoulNameFocusNode,
            ),
            MyTextField(
              placeholder: '面基详情描述,比如:吃饭看电影爬山',
              controller: ctrlInfo,
              focusNode: fInfoFocusNode,
            ),
            MyTextField(
              placeholder: '你所在的区域',
              controller: ctrlAddressYour,
              focusNode: fAddressYourFocusNode,
              icon: const Icon(CupertinoIcons.location),
            ),
            MyTextField(
              placeholder: '你想去的面基地点',
              controller: ctrlAddressTo,
              focusNode: fAddressToFocusNode,
              icon: const Icon(CupertinoIcons.map),
            ),
            MyTextField(
              placeholder: '(选填)你和典典认识多久了',
              controller: ctrlTimeWithDD,
              focusNode: fTimeWithDDFocusNode,
            ),
            CupertinoListTile(title:  Text('需支付50元不鸽保证金,结束后原路退回',style: context.textTheme.titleMedium,), leading: SvgPicture.asset(Assets.assetsSvgWepaySvg)),
            const PhotoUploadWidget(),
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

///上传自拍表单
class PhotoUploadWidget extends View {
  const PhotoUploadWidget({super.key});

  @override
  Widget renderView(BuildContext context, ApplicationModel appCore) {
    return CupertinoListTile(
      backgroundColor: context.colorScheme.surfaceVariant,
      leading: const Icon(CupertinoIcons.photo),
      title: Text('添加自拍或者生活照', style: context.textTheme.titleMedium?.copyWith(color: context.primaryColor)),
      subtitle: const PictureSelection(multipleChoice: true),
    );
  }
}

///自定义表单
class MyTextField extends StatelessWidget {
  final String? placeholder;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final Widget? icon;

  const MyTextField({Key? key, this.placeholder, this.controller, this.focusNode, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoListTile(
      leading: icon ?? const Text(''),
      title: CupertinoTextField(
        controller: controller,
        focusNode: focusNode,
        maxLines: 5,
        minLines: 1,
        placeholder: placeholder,
        decoration: const BoxDecoration(border: Border.fromBorderSide(BorderSide.none)),
      ),
    );
  }
}
