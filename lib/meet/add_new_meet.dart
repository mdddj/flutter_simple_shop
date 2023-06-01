import 'package:dd_js_util/dd_js_util.dart';
import 'package:dd_js_util/model/picture_selection_item.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart' hide View;
import 'package:flutter/material.dart' hide View;
import 'package:keyboard_actions/keyboard_actions.dart';

import '../api/apis.dart';
import '../common/view.dart';
import 'model/params.dart';

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


  var params = const AddMeetParams();
  final fileContrller = PictureSelectionController();

  ///提交数据
  Future<void> submitData() async {
    final api = MeetRequestAdd();

var files = <MultipartFile>[];
    await Future.forEach(fileContrller.getFiles, (element) async{
      final mf = await MultipartFile.fromFile(element.localFilePath?.path??'');
      files.add(mf);
    });
    api.formData = FormData.fromMap({
      "files": files
    }..addAll(params.toJson()));
    wtfLog(api.formData.fields);
    final response = await api.request( const R(contentType: 'multipart/form-data'));
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
              onChange: (value) {
                params = params.copyWith(name: value);
              },
            ),
            MyTextField(
              placeholder: '(选填)年龄',
              controller: ctrlAge,
              focusNode: fAgeFocusNode,
              onChange: (value) {
                params = params.copyWith(age: int.tryParse(value)??-1);
              },
            ),
            MyTextField(
              placeholder: '(选填)Soul用户名',
              controller: ctrlSoulName,
              focusNode: fSoulNameFocusNode,
              onChange: (value) {
                params = params.copyWith(soulname: value);
              },
            ),
            MyTextField(
              placeholder: '面基详情描述,比如:吃饭看电影爬山',
              controller: ctrlInfo,
              focusNode: fInfoFocusNode,
              onChange: (value) {
                params = params.copyWith(mianjiinfo: value);
              },
            ),
            MyTextField(
              placeholder: '你所在的区域',
              controller: ctrlAddressYour,
              focusNode: fAddressYourFocusNode,
              icon: const Icon(CupertinoIcons.location),
              onChange: (value) {
                params = params.copyWith(location: value);
              },
            ),
            MyTextField(
              placeholder: '你想去的面基地点',
              controller: ctrlAddressTo,
              focusNode: fAddressToFocusNode,
              icon: const Icon(CupertinoIcons.map),
              onChange: (value) {
                params = params.copyWith(tolocation: value);
              },
            ),
            MyTextField(
              placeholder: '(选填)你和典典认识多久了',
              controller: ctrlTimeWithDD,
              focusNode: fTimeWithDDFocusNode,
              onChange: (value) {
                params = params.copyWith(aboutdiandian: value);
              },
            ),
             PhotoUploadWidget(fileContrller),
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
  final PictureSelectionController fileController;
  const PhotoUploadWidget(this.fileController, {super.key});

  @override
  Widget renderView(BuildContext context, ApplicationModel appCore) {
    return CupertinoListTile(
      backgroundColor: context.colorScheme.surfaceVariant,
      leading: const Icon(CupertinoIcons.photo),
      title: Text('添加自拍或者生活照', style: context.textTheme.titleMedium?.copyWith(color: context.primaryColor)),
      subtitle:  PictureSelection(multipleChoice: true,controller: fileController),
    ).defaultPadding12;
  }
}

///自定义表单
class MyTextField extends StatelessWidget {
  final String? placeholder;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final Widget? icon;
  final ValueChanged<String>? onChange;

  const MyTextField({Key? key, this.placeholder, this.controller, this.focusNode, this.icon, this.onChange}) : super(key: key);

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
        onChanged: onChange,
      ),
    );
  }
}
