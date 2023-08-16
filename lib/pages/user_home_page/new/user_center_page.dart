part of pages;




extension UserCenterPageEx on BuildContext {
  Color get userCenterPageNavBg => cardColor;
}

class UserCenterPage extends ConsumerStatefulWidget {
  const UserCenterPage({Key? key}) : super(key: key);

  @override
  ConsumerState<UserCenterPage> createState() => _UserCenterPageState();
}

class _UserCenterPageState extends ConsumerState<UserCenterPage>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  late final TabController _tabController =
      TabController(length: TabItem.values.length, vsync: this);

  double get paddingTop => MediaQuery.of(context).padding.top;

  Size get size => MediaQuery.of(context).size;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (a, b) {
            return [
              MySliverAppBar(
                pinned: true,
                centerTitle: true,
                backgroundColor: context.primaryColor,
                expandedHeight: context.isDesktop ? 200 : size.width * 0.5,
                flexibleSpace: (v) {
                  return Stack(
                    children: [
                      const _Bg(),
                      _Userinfo(
                        showInfo: v,
                      )
                    ],
                  );
                },
                title: (v) {
                  if (v.not) {
                    return null;
                  }
                  return const Hero(
                    tag: 'user-page-ava',
                    child: LoginUserAvatar(
                      size: 42,
                    ),
                  );
                },
                bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(48),
                    child: _Tabs(_tabController)),
              ),
            ];
          },
          body: TabBarView(
              controller: _tabController,
              children: TabItem.values.map(TabViewContainer.new).toList())),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  bool get wantKeepAlive => true;
}

enum TabItem {
  moment("瞬间"),
  media("媒体"),
  comment("评论"),
  report("举报");

  const TabItem(this.text);

  final String text;
}

class TabViewContainer extends ConsumerStatefulWidget {
  final TabItem item;

  const TabViewContainer(this.item, {super.key});

  @override
  ConsumerState<TabViewContainer> createState() => _TabViewContainerState();
}

class _TabViewContainerState extends ConsumerState<TabViewContainer>
    with AutomaticKeepAliveClientMixin {
  TabItem get item => widget.item;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    if (ref.isLogin.not) {
      return const LoginTipWidget();
    }
    switch (item) {
      case TabItem.moment:
        return const MyLoadingMoreCustomScrollView(
          slivers: [UserResourceWidget()],
        );
      case TabItem.media:
        return MyLoadingMoreCustomScrollView(
          slivers: [_Files()],
        );
      case TabItem.comment:
        return Container(
          alignment: Alignment.center,
          child: Text(item.text),
        );
      case TabItem.report:
        return MyLoadingMoreCustomScrollView(
          slivers: [_Reports()],
        );
    }
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
      decoration: BoxDecoration(
          color: context.userCenterPageNavBg,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(8), topLeft: Radius.circular(8))),
      child: TabBar(
        isScrollable: true,
        tabs: TabItem.values.map((e) => Tab(text: e.text)).toList(),
        controller: controller,
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
              Icons.light_mode,
            ).desktopLayout(child: (_) => const SizedBox()).click(() {
              showModalBottomSheet(context: context, builder: (_)=>const _PhoneThemeSetting());
            }),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top + 12,
            right: 12,
            child: const Icon(
              Icons.settings,
            ).click(() {
              context.push(pagerUtil.setting.routername);
            }).desktopLayout(child: (_) => const SizedBox()).hideInVisitor(),
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
                                ),
                              ),
                              if (ref.isLogin)
                                Text(
                                  '你的ID:${ref.user?.id ?? '-'}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(),
                                ),
                              Text(
                                ref.user?.intro ?? '点击编辑你的自我介绍',
                              )
                                  .marginOnly(top: 12)
                                  .click(() => _updateDesc(context, ref)),
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

  ///修改自我介绍
  Future<void> _updateDesc(BuildContext context, WidgetRef ref) async {
    final result = await showDialog<String>(
        context: context,
        builder: (_) {
          return  StringInputDialog(title: '编辑介绍',hintText: ref.user?.intro);
        });
    if (result != null) {
      final response =
          await SApi('/api/user/update-desc', {"intro": result}).request();
      if (response.isSuccess) {
        ref.read(userRiverpod.notifier).updateIntro(result);
      }
    }
  }
}

//

class _HeaderSetting extends StatelessWidget {
  const _HeaderSetting();

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
      color: context.userCenterPageNavBg,
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

class _ReportsRepo extends JpaPageLoadingMore<Report, MyApiWithReportList> {
  @override
  Report covertData(Map<String, dynamic> json) => Report.fromJson(json);
}

///举报列表
class _Reports extends JpaListWidget<Report, MyApiWithReportList> {
  @override
  Widget buildLayout(BuildContext context, Report item, int index) {
    return Container();
  }

  @override
  JpaPageLoadingMore<Report, MyApiWithReportList> get sourceList =>
      _ReportsRepo();
}

class _PhoneThemeSetting extends StatelessWidget {
  const _PhoneThemeSetting();

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      width: context.screenWidth,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const MiniThemeSetting(),
            const DarkAndLightSetting(),
            SizedBox(height: context.bottomPadding)
          ],
        ),
      ),
    );
  }
}
