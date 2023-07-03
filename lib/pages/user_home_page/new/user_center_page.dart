part of pages;

final _verticalOffsetZero = StateProvider((ref) => false);

class UserCenterPage extends ConsumerStatefulWidget {
  const UserCenterPage({Key? key}) : super(key: key);

  @override
  ConsumerState<UserCenterPage> createState() => _UserCenterPageState();
}

class _UserCenterPageState extends ConsumerState<UserCenterPage>
    with SingleTickerProviderStateMixin , AutomaticKeepAliveClientMixin{
  late final TabController _tabController =
      TabController(length: 3, vsync: this);

  double get paddingTop => MediaQuery.of(context).padding.top;

  Size get size => MediaQuery.of(context).size;
  final AppBarStateChangeController _appBarStateChangeController =
      AppBarStateChangeController();

  @override
  void initState() {
    super.initState();
    Future.microtask(_listenAppbarAvatarChange);
  }

  bool get offsetZeroIs => ref.watch(_verticalOffsetZero);

//监听导航头像的展示和隐藏
  void _listenAppbarAvatarChange() {
    _appBarStateChangeController.addListener(() {
      var verticalOffsetZero = _appBarStateChangeController.verticalOffsetZero;
      if (offsetZeroIs != verticalOffsetZero) {
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          ref.read(_verticalOffsetZero.notifier).state = verticalOffsetZero;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (a, b) {
            return [
              MySliverAppBar(
                appBarStateChangeController: _appBarStateChangeController,
                pinned: true,
                backgroundColor: Colors.transparent,
                expandedHeight: context.isDesktop ? 200 : size.width * 0.5,
                flexibleSpace: Stack(
                  children: [
                    const _Bg(),
                    _Userinfo(
                      showInfo: offsetZeroIs,
                    )
                  ],
                ),
                title: offsetZeroIs ? const Hero(
                  tag: 'user-page-ava',
                  child: LoginUserAvatar(
                    size: 42,
                  ),
                ) : null,
                bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(48),
                    child: _Tabs(_tabController)),
              ),
            ];
          },
          body: MyTabbarView(
            controller: _tabController,
          )),
    );
  }





  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
    _appBarStateChangeController.dispose();
  }

  @override
  bool get wantKeepAlive => true;
}

enum TabItem {
  one("瞬间"),
  two("媒体"),
  three("评论");

  const TabItem(this.text);

  final String text;
}

class MyTabbarView extends StatelessWidget {
  final TabController controller;

  const MyTabbarView({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(
        controller: controller,
        children: TabItem.values.map(TabViewContainer.new).toList());
  }
}

class TabViewContainer extends ConsumerStatefulWidget {
  final TabItem item;
  const TabViewContainer(this.item,{super.key});

  @override
  ConsumerState<TabViewContainer> createState() => _TabViewContainerState();
}

class _TabViewContainerState extends ConsumerState<TabViewContainer> with AutomaticKeepAliveClientMixin {
  TabItem get item => widget.item;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    if (ref.isLogin.not) {
      return const LoginTipWidget();
    }
    if (item == TabItem.one) {
      return const MyLoadingMoreCustomScrollView(
        slivers: [UserResourceWidget()],
      );
    }
    if (item == TabItem.two) {
      return MyLoadingMoreCustomScrollView(
        slivers: [_Files()],
      );
    }
    return Container(
      alignment: Alignment.center,
      child: Text(item.text),
    );
  }

  @override
  bool get wantKeepAlive => true;
}



class _Tabs extends StatelessWidget {
  final TabController controller;

  const _Tabs(this.controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(8), topLeft: Radius.circular(8))),
      child: TabBar(
        isScrollable: true,
        tabs: TabItem.values
            .map((e) => Tab(
                  text: e.text,
                ))
            .toList(),
        controller: controller,
        indicatorColor: Colors.blue,
        labelColor: Colors.red,
        unselectedLabelColor: Colors.black,
      ),
    );
  }
}

///用户信息相关展示
class _Userinfo extends ConsumerWidget {
  final bool showInfo;

  const _Userinfo({Key? key, required this.showInfo}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).padding.top + 12,
            left: 12,
            child: const Icon(
              Icons.menu,
              color: Colors.white,
            ).desktopLayout(child: (_) => const SizedBox()),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top + 12,
            right: 12,
            child: const Icon(
              Icons.settings,
              color: Colors.white,
            ).click(() {
              context.push(pagerUtil.setting.routername);
            }).desktopLayout(child: (_) => const SizedBox()),
          ),
          if (!showInfo)
            Container(
              height: double.infinity,
              width: double.infinity,
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top + 50,
                  left: 12,
                  right: 12,
                  bottom: 12),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                            onTap: () async {
                              await showDialog(
                                  context: context,
                                  builder: (_) {
                                    return const UpdateUserAvatarWidget();
                                  });
                            },
                            child: const Hero(
                                tag: 'user-page-ava',
                                child: LoginUserAvatar(size: 80))),
                        const SizedBox(
                          width: 12,
                        ),
                        Expanded(
                            child: ConstrainedBox(
                          constraints: const BoxConstraints(minHeight: 80),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                ref.user?.getShowUserName ?? '未登录',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            context.colorScheme.inversePrimary),
                              ),
                              if (ref.isLogin)
                                Text(
                                  '你的ID:${ref.user?.id ?? '-'}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                          color: context
                                              .colorScheme.inversePrimary),
                                ),
                              Text(
                                '点击编辑你的自我介绍',
                                style: TextStyle(
                                    color: context.colorScheme.inversePrimary),
                              ).marginOnly(top: 12),
                            ],
                          ),
                        )),
                        if (ref.isLogin) const _HeaderSetting()
                      ],
                    ),
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }
}

class _HeaderSetting extends StatelessWidget {
  const _HeaderSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ImageWrapper(
                child: IconButton(
                    onPressed: () {
                      context.push(pagerUtil.setting.routername);
                    },
                    icon: const Icon(Icons.edit)))
            .desktopLayout(
          child: (context) {
            return FilledButton.tonal(
                onPressed: () {
                  context.push(pagerUtil.setting.routername);
                },
                child: const Text("编辑资料"));
          },
        )
      ],
    );
  }
}

class _Bg extends StatelessWidget {
  const _Bg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.white,
    );
  }
}

class _Files extends JpaListWidget<FileInfo, MyUserFilesApi> {
  @override
  Widget buildLayout(BuildContext context, FileInfo item, int index) {
    return Stack(
      children: [
        ImageView(
          image: MyImage.network(
              url: item.url,
              params: ImageParams(
                  borderRadius: BorderRadius.circular(12),
                  shape: BoxShape.rectangle,
                  fit: BoxFit.cover)),
        )
      ],
    );
  }

  @override
  JpaPageLoadingMore<FileInfo, MyUserFilesApi> get sourceList => _FilesRepo();
}

class _FilesRepo extends JpaPageLoadingMore<FileInfo, MyUserFilesApi> {
  @override
  FileInfo covertData(Map<String, dynamic> json) => FileInfo.fromJson(json);
}
