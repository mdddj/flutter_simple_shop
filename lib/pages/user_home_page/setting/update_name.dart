import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../api/apis.dart';
import '../../../common/api_ext.dart';
import '../../../index.dart';

///修改昵称页面
class UpdateUserNamePage extends ConsumerStatefulWidget {
  const UpdateUserNamePage({super.key});

  @override
  ConsumerState<UpdateUserNamePage> createState() => _UpdateUserNamePageState();
}

class _UpdateUserNamePageState extends ConsumerState<UpdateUserNamePage> {
  final controller = TextEditingController();
  var hasValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('修改昵称'),
        actions: [
          FilledButton(
              onPressed: hasValue ? _submit : null, child: const Text("保存")),
          const SizedBox(
            width: 12,
          )
        ],
      ),
      body: ListView(
        children: [
          SettingInput(
            controller: controller,
            initHintText: '${ref.user?.nickName}',
            onSubmit: (value) => _submit(),
            onChanged: (value) => setState(() {
              hasValue = value.isNotEmpty;
            }),
          ),
        ],
      ),
    );
  }

  void _submit() {
    MyUpdateUserNameApi()
        .request(R(data: {"name": controller.text}))
        .then((value) {
      value.simpleToast(ifOk: () {
        ref.read(userRiverpod.notifier).updateUser(
            (oldModel) => oldModel.copyWith(nickName: controller.text));
      });
    });
  }
}
