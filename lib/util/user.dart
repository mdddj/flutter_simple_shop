part of util;


extension UserHideWidgetEx on Widget {

  ///如果未登录,则隐藏这个组件
  Widget hideInVisitor() {
    return UserHideWidget(child: this);
  }
}

class UserHideWidget extends ConsumerWidget {
  final Widget child;
  const UserHideWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    if(!ref.isLogin) {
      return const SizedBox();
    }
    return child;
  }
}
