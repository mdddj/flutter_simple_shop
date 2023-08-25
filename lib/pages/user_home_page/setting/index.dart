part of pages;

///设置页面
class SettingIndex extends ConsumerWidget {
  const SettingIndex({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('设置'),
      ),
      body: Container(
        decoration: BoxDecoration(color: context.cardColor),
        child: ListView(
          children: [
            ListTile(
              title: const Text('修改头像'),
              onTap: (){
                 showDialog(
                context: context,
                builder: (_) {
                  return const UpdateUserAvatarWidget();
                });
              },
              trailing: ref.isLogin ? ref.user!.getAvatar(size: 48) : null,
            ),
            ListTile(
              title: const Text('修改昵称'),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: () {
                context.navToWidget(to: const UpdateUserNamePage());
              },
            ),
            ListTile(
              title: const Text('修改城市'),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: () {
                context.navToWidget(to: const UpdateUserCityPage());
              },
            ),
            ListTile(
              title: const Text('修改工作'),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: () {
                context.navToWidget(to: const UpdateUserJobPage());
              },
            ),
            const SizedBox(height: 12),
            ListTile(
              title: const Text('关于典典的小卖部'),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
