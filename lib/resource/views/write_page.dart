part of resource;

///资源发布页面
class MyResourceWritePage extends StatefulWidget {
  final DynWriteParams params;

  const MyResourceWritePage({super.key, required this.params});

  @override
  State<MyResourceWritePage> createState() => _MyResourceWritePageState();
}

class _MyResourceWritePageState extends State<MyResourceWritePage> {
  late DynWriteParams params = widget.params;
  final PictureSelectionController _selectionController =
      PictureSelectionController();
  var content = "";
  var title = "";

  bool _showImageUploadComp = false; //是否显示图片上传组件

  ///分享的产品
  late ProductShare? share = params.mapOrNull((value) => null,
      dynWritePageParam: (value) => value.productShare);

  late String appbarTitle =
      params.mapOrNull((value) => "发布", dynWritePageParam: (value) => value.title) ??
          "发布";

  late bool selectOtherCategoryDisabled = params.mapOrNull(
        (value) => false,
        dynWritePageParam: (value) => value.disableSelectOtherCategory,
      ) ??
      false;

  late bool showProductShareCard = share != null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appbarTitle),
        centerTitle: true,
        leading: TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('取消'),
        ),
        actions: [
          IconButton(
              onPressed: () {
                context.hideKeyBoard();
                context.askOk(const AskOkDialogParams(
                    title: Text("提示"),
                    content: Text('请文明发言,不要发布违规内容'),
                    cancelText: '关闭',
                    okText: '我知道了'));
              },
              icon: const Icon(
                Icons.help,
                color: Colors.grey,
              )),
          FilledButton(
              onPressed: content.isEmpty ? null : _submit,
              child: const Text("发布")),
          const SizedBox(width: 12)
        ],
      ),
      body: BodyExpandedWidget(
        bottom: _builderActionButton(),
        child: Column(
          children: [
            TextField(
              decoration: _decoration("取个标题吧，非必须").copyWith(
                  prefixIcon: const LoginUserAvatar().padding(6),
                  prefixIconColor: Colors.transparent),
              onChanged: (v) => title = v,
            ),
            const Divider(
              indent: 12,
              endIndent: 12,
              color: Colors.transparent,
            ),
            Expanded(
              child: TextField(
                decoration: _decoration(params.hintText ?? "说点什么吧"),
                maxLines: 30,
                minLines: 8,
                onChanged: (v) {
                  setState(() {
                    content = v;
                  });
                },
              ),
            ),
            if (_showImageUploadComp)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '添加图片(最多9张)',
                      style: context.textTheme.titleMedium,
                    ),
                    const SizedBox(height: 6),
                    PictureSelection(
                      multipleChoice: true,
                      controller: _selectionController,
                      padding: EdgeInsets.zero,
                      columnCount: context.waterfallFlowCrossAxisCount,
                      customRender: (images, controller, showAddButton) {
                        return Container(
                          height: 100,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: context.colorScheme.surfaceTint,
                                  width: .2),
                              borderRadius: BorderRadius.circular(12)),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            padding: const EdgeInsets.all(12),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ...images.map((e) => ConstrainedBox(
                                      constraints:
                                          const BoxConstraints(maxWidth: 92),
                                      child: _ImageShow(
                                          image: e,
                                          onDelete: controller.remove),
                                    )),
                                if (showAddButton)
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                        onTap: controller.showMenu,
                                        child: const ImageWrapper(
                                            child: Icon(Icons.add))),
                                  )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            if (!_showImageUploadComp && showProductShareCard)
              _ShareProductWidget(model: share)
          ],
        ),
      ),
    );
  }

  UnderlineInputBorder get _inputBorder =>
      const UnderlineInputBorder(borderSide: BorderSide.none);

  InputDecoration _decoration(String hint) {
    return InputDecoration(
        hintText: hint,
        fillColor: context.theme.scaffoldBackgroundColor,
        filled: true,
        hintStyle: const TextStyle(color: Colors.grey),
        border: _inputBorder,
        enabledBorder: _inputBorder,
        focusedBorder: _inputBorder);
  }

  Future<void> _submit() async {
    context.hideKeyBoard();
    final api = getIt.get<MyResourceCreateApi>();
    final files = await _getFiles();
    final data = {
      "files": files,
      "content": content,
      "cateName": params.name,
      "title": title,
    };
    if (share != null) {
      data.addAll({"share": jsonEncode(share)});
    }
    kLog(data);
    api.formData = FormData.fromMap(data);
    final r = await api.request(const R());
    r.simpleToast(ifOk: () {
      GetIt.instance.get<UserResourceListRepository>().refresh(true); //刷新
    });
  }

  ///获取文件列表
  Future<List<MultipartFile>> _getFiles() async {
    var files = <MultipartFile>[];
    await Future.forEach(_selectionController.getFiles, (element) async {
      final mf =
          await MultipartFile.fromFile(element.localFilePath?.path ?? '');
      files.add(mf);
    });
    return files;
  }

  ///获取操作小部件
  Widget _builderActionButton() {
    return Container(
      padding: EdgeInsets.only(
          bottom: context.bottomPadding - 6, left: 12, right: 12, top: 12),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SelectResCategory(
                initCategoryName: widget.params.name,
                onChange: (value) => setState(() {
                  params = params.copyWith(name: value.name);
                }),
                selectOther: !selectOtherCategoryDisabled,
              ).expanded,
              if (share != null)
                ImageWrapper(
                        child: Badge.count(
                            count: 1,
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    showProductShareCard = !showProductShareCard;
                                  });
                                },
                                icon: const Icon(Icons.shopping_bag_rounded))))
                    .marginOnly(right: 6),
              ImageWrapper(
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        _showImageUploadComp = !_showImageUploadComp;
                      });
                    },
                    icon: const Icon(Icons.image)),
              ),
              const SizedBox(width: 6),
              ImageWrapper(
                child: IconButton(
                    onPressed: () {
                      context.hideKeyBoard();
                    },
                    icon: const Icon(Icons.keyboard_hide_outlined)),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }
}

//图片展示组件
class _ImageShow extends StatelessWidget {
  final PictureSelectionItemModel image;
  final ValueChanged<PictureSelectionItemModel>? onDelete;

  const _ImageShow({required this.image, this.onDelete});

  @override
  Widget build(BuildContext context) {
    final param = ImageParams(
        size: double.infinity,
        borderRadius: BorderRadius.circular(12),
        shape: BoxShape.rectangle,
        fit: BoxFit.cover);
    return Container(
      margin: const EdgeInsets.only(right: 12),
      child: Stack(
        children: [
          image.when(
            file: (file) {
              return ImageView(
                  image: MyImage.filePath(filePath: file.path, params: param));
            },
            network: (url) {
              return ImageView(
                image: MyImage.network(url: url, params: param),
              );
            },
          ),
          Positioned(
              right: 0,
              top: 0,
              child: SizedBox(
                width: 22,
                height: 22,
                child: IconButton(
                    onPressed: () => onDelete?.call(image),
                    icon: const Icon(
                      Icons.delete,
                      size: 12,
                      color: Colors.grey,
                    )),
              ))
        ],
      ),
    );
  }
}

///选择分类的小部件
class SelectResCategory extends StatefulWidget {
  final String initCategoryName;
  final ValueChanged<ResourceCategory>? onChange;
  final bool selectOther;

  const SelectResCategory(
      {super.key,
      required this.initCategoryName,
      this.onChange,
      required this.selectOther});

  @override
  State<SelectResCategory> createState() => _SelectResCategoryState();
}

class _SelectResCategoryState extends State<SelectResCategory> {
  ResourceCategory? selectResCategory;

  @override
  void initState() {
    super.initState();
    Future.microtask(() => _getCategoryInfo(widget.initCategoryName));
  }

  ///加载对象
  Future<void> _getCategoryInfo(String name) async {
    try {
      if (name.isEmpty) {
        selectResCategory = null;
        setState(() {});
        return;
      }
      final result =
          await getIt.get<MyFindResourceCategoryApi>().doRequest(name);
      selectResCategory = result;
      widget.onChange?.call(result);
      setState(() {});
    } catch (e, s) {
      wtfLog('${e.runtimeType}\n获取失败:$e\n$s');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth * 0.5,
      height: 50,
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Chip(
                  label:
                      Text(selectResCategory?.name ?? widget.initCategoryName)),
              //后面放一些推荐的
              if (widget.selectOther)
                TextButton(onPressed: _selectMore, child: const Text('选择其他'))
                    .marginOnly(left: 12)
            ],
          )),
    );
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  ///选择其他群组
  void _selectMore() {
    context
        .navToWidget<ResourceCategory>(to: const SelectResourceCategoryPage())
        .then((value) {
      if (value != null) {
        setState(() {
          selectResCategory = value;
        });
        widget.onChange?.call(value);
      }
    });
  }
}

///产品分享
class _ShareProductWidget extends StatelessWidget {
  final ProductShare? model;

  const _ShareProductWidget({this.model});

  @override
  Widget build(BuildContext context) {
    if (model == null) {
      return const SizedBox();
    }
    const size = 60.0;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          children: [
            ImageView(
                image: MyImage.network(
                    url: model!.image,
                    params: ImageParams(
                        size: size,
                        borderRadius: BorderRadius.circular(12),
                        shape: BoxShape.rectangle,
                        fit: BoxFit.cover))),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: ConstrainedBox(
                constraints: const BoxConstraints(minHeight: size),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(model!.title, style: context.textTheme.titleMedium),
                    Text(
                      "售价:${model!.price}",
                      style: context.textTheme.bodyMedium
                          ?.copyWith(color: context.primaryColor),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//
