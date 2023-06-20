part of pages;


///设置-修改城市
class UpdateUserCityPage extends ConsumerWidget {
  const UpdateUserCityPage({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return UpdateStringAttrWidget<MyUpdateUserCityApi>(paramsName: "city",title: "修改城市",initHintValue: "${ref.user?.city}",successCallback: (str){
      ref.read(userRiverpod.notifier).updateUser((oldModel) => oldModel.copyWith(city: str));
    },);
  }
}
