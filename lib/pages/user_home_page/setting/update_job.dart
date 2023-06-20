part of pages;

///设置-修改工作
class UpdateUserJobPage extends ConsumerWidget {
  const UpdateUserJobPage({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return UpdateStringAttrWidget<MyUpdateUserJobApi>(paramsName: "job",title: "修改工作",initHintValue: "${ref.user?.job}",successCallback: (str){
      ref.read(userRiverpod.notifier).updateUser((oldModel) => oldModel.copyWith(job: str));
    },);
  }
}
