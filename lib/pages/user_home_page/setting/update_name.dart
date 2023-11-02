part of '../../index.dart';

class UpdateUserNamePage extends ConsumerWidget {
  const UpdateUserNamePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return UpdateStringAttrWidget<MyUpdateUserNameApi>(
        paramsName: "name",
        title: "修改昵称",
        initHintValue: "${ref.user?.nickName}",
        successCallback: (str) {
          ref.read(userRiverpod.notifier).updateUser((MyUser oldModel) => oldModel.copyWith(nickName: str));
        });
  }
}
