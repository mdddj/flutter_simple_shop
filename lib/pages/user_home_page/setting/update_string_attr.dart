part of '../../index.dart';

class UpdateStringAttrWidget<T extends BaseApi> extends ConsumerStatefulWidget {
  final String paramsName;
  final String title;
  final String initHintValue;
  final ValueChanged<String> successCallback;

  const UpdateStringAttrWidget({super.key, required this.paramsName, required this.title, required this.initHintValue, required this.successCallback});

  @override
  ConsumerState<UpdateStringAttrWidget<T>> createState() => _UpdateStringAttrWidgetState<T>();
}

class _UpdateStringAttrWidgetState<T extends BaseApi> extends ConsumerState<UpdateStringAttrWidget<T>> {
  final controller = TextEditingController();
  var hasValue = false;

  ///api接口
  T get api => getIt.get<T>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          FilledButton(onPressed: hasValue ? _submit : null, child: const Text("保存")),
          const SizedBox(
            width: 12,
          )
        ],
      ),
      body: ListView(
        children: [
          SettingInput(
            controller: controller,
            initHintText: widget.initHintValue,
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
    api.request(R(data: {widget.paramsName: controller.text})).then((value) {
      value.simpleToast(ifOk: () {
        widget.successCallback.call(controller.text);
      });
    });
  }
}
