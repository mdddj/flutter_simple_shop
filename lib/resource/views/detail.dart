part of resource;

class ResourceDetailPage extends StatefulWidget {
  final int resourceId;
  const ResourceDetailPage({super.key, required this.resourceId});

  @override
  State<ResourceDetailPage> createState() => _ResourceDetailPageState();
}

class _ResourceDetailPageState extends State<ResourceDetailPage> {
  Resource? _resource;
  bool _loading = true;

  Future<void> _getInfo() async {
    try {
      final result = await getIt
          .get<MyFindResourceByIdApi>()
          .request(R(data: {"id": widget.resourceId}));
      _resource = result;
    } on AppException catch (e) {
      showIosDialog(e.getMessage);
    }
    _loading = false;
    setState(() {});
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  void initState() {
    super.initState();
    Future.microtask(_getInfo);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.cardColor,
      appBar: AppBar(
        title: const Text("动态"),
        actions: [
          if (_resource != null)
            IconButton(
                onPressed: _showAction, icon: const Icon(Icons.more_horiz))
        ],
      ),
      body: Card(
        elevation: 0,
        child: IfWidget(
            expression: () => _resource != null,
            trueBuild: () {
              return MyLoadingMoreCustomScrollView(
                slivers: [
                  //用户信息展示
                  Row(
                    children: [
                      DefaultAvatarWidget(
                        _resource!.user.picture,
                        size: 58,
                      ),
                      const SizedBox(width: 12),
                      ConstrainedBox(
                        constraints: const BoxConstraints(minHeight: 58),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [Text(_resource!.user.getShowUserName)],
                        ),
                      ).expanded,
                      FilledButton(onPressed: () {}, child: const Text("添加关注"))
                    ],
                  ).defaultPadding12.toSliverWidget,

                  //内容展示
                  Text(_resource!.content, style: context.textTheme.bodyLarge)
                      .defaultPadding12
                      .toSliverWidget,

                  const SizedBox(
                    height: 12,
                  ).toSliverWidget,

                  //发布时间展示
                  Text(_resource!.createdate,
                          style: context.textTheme.labelSmall)
                      .defaultPadding12
                      .toSliverWidget,
                  _CommentsWidget(_resource!.id.toString())
                ],
              );
            },
            elseBuild: () {
              if (_loading) {
                return const LoadingWidget();
              }
              return const Center(
                child: Text("获取资源失败"),
              );
            }),
      ),
      floatingActionButton: Row(
        children: [
          const SizedBox(
            width: 12,
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "友善评论,文明发言",
                border: UnderlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(50)),
                isDense: true,
                filled: true,
                fillColor: Colors.grey.shade200),
          ).expanded,
          const SizedBox(
            width: 12,
          ),
        ],
      ),
    );
  }

  void _showAction() {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return _ActionMenus(resource: _resource!);
        });
  }
}

///评论组件
class _CommentsWidget extends JpaListWidget<Comment, MyResourceFindCommenApi> {
  final String resourceId;

  const _CommentsWidget(this.resourceId);
  @override
  Widget buildLayout(BuildContext context, Comment item, int index) {
    return const Text('text');
  }

  @override
  JpaPageLoadingMore<Comment, MyResourceFindCommenApi> get sourceList =>
      _CommentRepo(resourceId);
}

class _CommentRepo
    extends JpaPageLoadingMore<Comment, MyResourceFindCommenApi> {
  final String resourceId;

  _CommentRepo(this.resourceId);
  @override
  Comment covertData(Map<String, dynamic> json) {
    return Comment.fromJson(json);
  }

  @override
  Map<String, dynamic> get params => {"resourceId": resourceId};
}

class _ActionMenus extends ConsumerWidget {
  final Resource resource;
  const _ActionMenus({required this.resource});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref.user;
    final isAuthor = currentUser != null && currentUser.id == resource.user.id;
    return SingleChildScrollView(
      padding: EdgeInsets.only(bottom: context.bottomPadding),
      child: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.report),
            title: const Text('举报瞬间'),
            onTap: () {
              Navigator.pop(context);
              context.navToWidget(to: ReportPage(resource: resource));
            },
          ),
          if (isAuthor)
            ListTile(
              leading: Icon(Icons.delete, color: context.colorScheme.error),
              title: const Text("删除"),
              onTap: () async {
                final nav = Navigator.of(context);
                nav.pop(); //关闭菜单
                final isOk = await context.askOk(const AskOkDialogParams(
                    title: Text("删除"),
                    content: Text("确定删除吗?"),
                    okText: '删除',
                    cancelText: '取消'));
                if (isOk) {
                  try {
                    getIt
                        .get<MyDeleteUserResourceApi>()
                        .request(R(
                            data: {"id": resource.id},
                            contentType: ContentType.json.value))
                        .then((value) {
                      value.simpleToast(ifOk: nav.pop);
                      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                        GetIt.instance
                            .get<UserResourceListRepository>()
                            .refresh(true);
                      });
                    });
                  } on AppException catch (e) {
                    showIosDialog(e.getMessage);
                  }
                }
              },
            )
        ],
      ),
    );
  }
}
