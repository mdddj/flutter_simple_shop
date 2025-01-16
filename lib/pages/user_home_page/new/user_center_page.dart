part of '../../index.dart';

extension UserCenterPageEx on BuildContext {
  Color get userCenterPageNavBg => cardColor;
}

class UserCenterPage extends ConsumerStatefulWidget {
  const UserCenterPage({super.key});

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
    final isLogin = ref.isLogin;
    if (isLogin.not) {
      return Card(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "请先登录查看更多内容",
                style: context.textTheme.titleMedium,
              ),
              const SizedBox(
                height: 12,
              ),
              FilledButton(
                  onPressed: () => context.push(pagerUtil.login.routername),
                  child: const Text('登录&注册'))
            ],
          ),
        ),
      );
    }
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (a, b) {
            return [
              MySliverAppBar(
                pinned: true,
                centerTitle: true,
                backgroundColor: context.primaryColor,
                expandedHeight:
                    context.isDesktop ? 200 : (size.width * 0.5) + 100,
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
                  return SlideInLeft(
                    duration: const Duration(milliseconds: 300),
                    child: SlideInUp(
                      duration: const Duration(milliseconds: 224),
                      child: const Hero(
                        tag: 'user-page-ava',
                        child: LoginUserAvatar(
                          size: 42,
                        ),
                      ),
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
  moment("动态"),
  media("媒体");
  // comment("评论"),
  // report("举报");

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
      // case TabItem.comment:
      //   return Container(
      //     alignment: Alignment.center,
      //     child: Text(item.text),
      //   );
      // case TabItem.report:
      //   return MyLoadingMoreCustomScrollView(
      //     slivers: [_Reports()],
      //   );
    }
  }

  @override
  bool get wantKeepAlive => true;
}

class _Tabs extends StatelessWidget {
  final TabController controller;

  const _Tabs(this.controller);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
          color: context.userCenterPageNavBg,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(8), topLeft: Radius.circular(8))),
      child: TabBar(
        isScrollable: true,
        tabs: TabItem.values.map((e) => Tab(text: e.text)).toList(),
        controller: controller,
        tabAlignment: TabAlignment.start,
      ),
    );
  }
}

///用户信息相关展示
class _Userinfo extends ConsumerWidget {
  final bool showInfo;

  const _Userinfo({required this.showInfo});

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
              showModalBottomSheet(
                  context: context, builder: (_) => const _PhoneThemeSetting());
            }),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top + 12,
            right: 12,
            child: const Icon(
              Icons.settings,
            )
                .click(() {
                  context.push(pagerUtil.setting.routername);
                })
                .desktopLayout(child: (_) => const SizedBox())
                .hideInVisitor(),
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
                        const Hero(
                            tag: 'user-page-ava',
                            child: LoginUserAvatar(size: 80)),
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
                              if (ref.isLogin)
                                Text(
                                  ref.user?.getIntro() ?? '点击编辑你的自我介绍',
                                  style: context.textTheme.bodySmall?.copyWith(
                                      color: context.colorScheme.secondary),
                                )
                                    .marginOnly(top: 12)
                                    .click(() => _updateDesc(context, ref)),
                            ],
                          ),
                        )),
                        // if (ref.isLogin) const _HeaderSetting()
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      constraints: const BoxConstraints(maxHeight: 80),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              context.push(pagerUtil.order.routername);
                            },
                            child: BlurryContainer(
                                height: double.infinity,
                                width: context.screenWidth * 0.3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ImageWrapper(
                                      child: SvgPicture.asset(
                                          'assets/svg/user/llls.svg',
                                          width: 32,
                                          height: 32,
                                          colorFilter: ColorFilter.mode(
                                              context.primaryColor,
                                              BlendMode.srcIn)),
                                    ),
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    Text("我的订单",
                                        style: context.textTheme.titleSmall)
                                  ],
                                )),
                          ),
                          BlurryContainer(
                              height: double.infinity,
                              width: context.screenWidth * 0.3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ImageWrapper(
                                    child: SvgPicture.asset(
                                        'assets/svg/user/qb.svg',
                                        width: 32,
                                        height: 32,
                                        colorFilter: ColorFilter.mode(
                                            context.primaryColor,
                                            BlendMode.srcIn)),
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    "钱包",
                                    style: context.textTheme.titleSmall,
                                  )
                                ],
                              )).marginOnly(left: 12)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }

  ///修改自我介绍
  Future<void> _updateDesc(BuildContext context, WidgetRef ref) async {
    if (ref.isLogin.not) {
      toast('请先登录');
      return;
    }
    final result = await showDialog<String>(
        context: context,
        builder: (_) {
          return StringInputDialog(title: '编辑介绍', hintText: ref.user?.intro);
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

class _Bg extends StatelessWidget {
  const _Bg();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          color: context.userCenterPageNavBg,
          image: DecorationImage(
              image: const AssetImage(
                'assets/images/u-bg.jpg',
              ),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  context.primaryColor.withValues(alpha: .2), BlendMode.hue))),
    );
  }
}

class _Files extends JpaListWidget<FileInfo, MyUserFilesApi> {
  @override
  Widget buildLayout(BuildContext context, FileInfo item, int index) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: item.width == 0 ? 1 : item.width / item.height,
          child: ImageView(
            image: MyImage.network(
                url: item.url,
                params: ImageParams(
                    borderRadius: BorderRadius.circular(12),
                    shape: BoxShape.rectangle,
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover)),
          ),
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

class _PhoneThemeSetting extends StatelessWidget {
  const _PhoneThemeSetting();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
