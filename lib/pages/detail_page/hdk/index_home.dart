part of '../../index.dart';

//是否展示轮播图上面的返回箭头
final satteShowBackButton = StateProvider((ref) => true);

extension ProductModelEx on ProductModel {
  ProductShare get shareModel {
    return ProductShare(
      productId: goodsId,
      title: dtitle,
      price: '$actualPrice',
      image: mainPic,
    );
  }
}

//详情页面
class HaoDanKuDetailItem extends ConsumerStatefulWidget {
  final String goodsId;

  const HaoDanKuDetailItem({required this.goodsId, super.key});

  @override
  HaoDanKuDetailItemState createState() => HaoDanKuDetailItemState();
}

class HaoDanKuDetailItemState extends ConsumerState<HaoDanKuDetailItem>
    with TickerProviderStateMixin {
  ProductModel? info;
  CouponLinkResult? couponLinkResult;
  ShopInfo? _shopInfo;
  late Future<String> futureBuildData = initDatas();
  int curentSwaiperIndex = 0;
  final double _topAppbarHei = 0; // 顶部显影工具条的高度
  double _initImagesTopHei = 0; // 图片详情距离顶部的高度 (包含转态栏)
  bool _showToTopButton = false; // 显示返回顶部按钮

  late TabController _tabController;
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _swaperGlogbalKey = GlobalKey();
  final GlobalKey _detailImagesGlogbalKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  void addScrollListener() {
    _scrollController.addListener(() {
      // 控制顶部导航显影
      var scrollHeight = _scrollController.offset;
      var t = scrollHeight / (MediaQuery.of(context).size.width * 0.85);
      if (scrollHeight == 0) {
        t = 0;
      } else if (t > 1.0) {
        t = 1.0;
      }

      //计算详情widget到顶部距离
      var topHei = getY(_detailImagesGlogbalKey.currentContext!);
      if (topHei <= _topAppbarHei + context.paddingTop) {
        _tabController.animateTo(1);
      } else {
        if (_tabController.index != 0) {
          _tabController.animateTo(0);
        }
      }
    });
  }

  // 顶部选项卡被切换
  void tabOnChange(int index) {
    if (index == 0) {
      _scrollController.animateTo(0,
          duration: const Duration(milliseconds: 600), curve: Curves.ease);
    } else if (index == 1) {
      _scrollController.animateTo(
          _initImagesTopHei - context.paddingTop - _topAppbarHei + 5,
          duration: const Duration(milliseconds: 600),
          curve: Curves.ease);
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _scrollController.addListener(() {
      var scrollHeight = _scrollController.offset;
      if (scrollHeight >= 2) {
        ref.read(satteShowBackButton.notifier).state = false;
      } else {
        ref.read(satteShowBackButton.notifier).state = true;
      }
      var t = scrollHeight / (MediaQuery.of(context).size.width * 0.85);
      if (scrollHeight == 0) {
        t = 0;
      } else if (t > 1.0) {
        t = 1.0;
        _showToTopButton = true;
      } else if (scrollHeight < 200) {
        _showToTopButton = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.grey,
        statusBarIconBrightness: Brightness.light));
    return Scaffold(
      body: FutureBuilder(
        future: AsyncMemoizer<String>().runOnce(() => futureBuildData),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            switchInCurve: Curves.fastOutSlowIn,
            child: snapshot.hasData
                ? buildCustomScrollViewShop()
                : snapshot.hasError
                    ? Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            NoDataWidget(
                              title: snapshot.error?.errorMessage ?? '-',
                            ),
                            const BackButton()
                          ],
                        ),
                      )
                    : const LoadingWidget(),
          );
        },
      ),
    );
  }

  Widget buildCustomScrollViewShop() {
    return Scaffold(
      appBar: buildOpacityAppbar(),
      body: NotificationListener<LayoutChangedNotification>(
        onNotification: (notification) {
          if (_topAppbarHei == 0) {
            setState(() {
              _initImagesTopHei = getY(_detailImagesGlogbalKey.currentContext!);
            });
            addScrollListener();
          }
          return true;
        },
        child: Stack(
          children: <Widget>[
            ExtendedNestedScrollView(
                controller: _scrollController,
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverToBoxAdapter(
                      child: buildGoodsSwiper(),
                    ),
                    buildSliverToBoxAdapterOne(),
                    buildSliverToBoxAdapterTwo(),
                    buildSliverToBoxAdapterThree(),
                    buildSliverToBoxAdapterFour(),
                    buildSliverToBoxAdapterFive(),
                    buildSliverToBoxAdapterSix(),
                    buildSliverToBoxAdapterPlaceholder(),
                    buildSliverToBoxAdapterShop(),
                    buildSliverToBoxAdapterPlaceholder(),
                  ];
                },
                body: buildGoodsDetailImaegs()),

            // 返回顶部按钮

            Positioned(
              bottom: MediaQuery.of(context).padding.bottom,
              right: 12,
              child: InkWell(
                onTap: () {
                  _scrollController.animateTo(0,
                      duration: const Duration(milliseconds: 600),
                      curve: Curves.ease);
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(35)),
                      border: Border.all(
                          width: .5,
                          color: Colors.black26.withValues(alpha: .2))),
                  child: const Icon(
                    Icons.vertical_align_top,
                    color: Colors.black,
                  ),
                ),
              ),
            ).visible(_showToTopButton),
          ],
        ),
      ),
      bottomNavigationBar: Container(
          padding: EdgeInsets.only(
              left: 12, right: 12, bottom: context.paddingBottom, top: 12),
          decoration: BoxDecoration(color: context.cardColor),
          child: SingleChildScrollView(
            child: Column(
              children: [
                if ((ref.user?.relationId ?? '').isEmpty)
                  const Text('提示: 加入渠道会员后购买可以获得扶持资金'),
                buildBottomRow(context),
              ],
            ),
          )),
    );
  }

  AddFavoritesParams get _addFavoritesParams {
    return AddFavoritesParams(
        productid: info!.goodsId,
        type: "淘宝",
        endtime: info!.couponEndTime,
        imageurl: info!.mainPic,
        title: info!.dtitle,
        amount: '${info!.originalPrice}',
        arrivalprice: '${info!.actualPrice}');
  }

  Widget _writeButton() {
    return ImageWrapper(
        child: IconButton(
      icon: const Icon(Icons.edit_document),
      onPressed: () {
        context.push(pagerUtil.resourceWrite.routername,
            extra: PagerParams.dynWritePageParam(
                name: "买家秀社区",
                productShare: info?.shareModel,
                title: "分享买家秀",
                disableSelectOtherCategory: true,
                hintText: "快去分享你的使用体验吧~${info?.dtitle}"));
      },
    ));
  }

  Widget buildBottomRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        FavoriteAddBtn(_addFavoritesParams),
        const SizedBox(width: 6),
        _writeButton(),
        const SizedBox(
          width: 12,
        ),
        FilledButton(
                onPressed: () async {
                  if (couponLinkResult != null) {
                    await utils.openTaobao(couponLinkResult!.couponClickUrl ??
                        'https://itbug.shop');
                  }
                },
                child: const Text('立即领券'))
            .expanded,
        const SizedBox(
          width: 12,
        ),
        OutlinedButton(
            onPressed: () async {
              if (couponLinkResult != null) {
                utils.copy(couponLinkResult!.longTpwd ?? '无优惠券',
                    message: '复制成功,打开淘宝APP领取优惠券');
              }
            },
            child: const Text('复制口令')),
        const SizedBox(
          width: 12,
        )
      ],
    );
  }

  // 详情图
  Widget buildGoodsDetailImaegs() {
    return SingleChildScrollView(
      key: _detailImagesGlogbalKey,
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            alignment: Alignment.topLeft,
            child: const Text(
              '宝贝详情',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          DetailImagesWidget(
            images: info!.detailPics,
            hideTitle: true,
          )
        ],
      ),
    );
  }

  // 店铺信息
  Widget buildSliverToBoxAdapterShop({bool isSliver = true}) {
    var widget = containerWarp(Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 500,
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: (_shopInfo != null &&
                              _shopInfo!.pictUrl.isNotEmpty
                          ? NetworkImage(
                              MImageUtils.magesProcessor(_shopInfo!.pictUrl))
                          : const AssetImage('assets/images/ava.png'))
                      as ImageProvider<Object>?,
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  _shopInfo != null ? _shopInfo!.sellerNick : '店铺名初始化',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          ),
          SizedBox(
            width: 500,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FButton(
                  text: '进店逛逛',
                  color: Colors.white,
                  padding: const EdgeInsets.all(12),
                  onPressed: () {},
                  clickEffect: true,
                  strokeColor: const Color.fromRGBO(254, 55, 56, 1),
                  strokeWidth: 1,
                  highlightColor: Colors.grey.shade100,
                ),
                const SizedBox(
                  width: 12,
                ),
                FButton(
                  text: '全部商品',
                  color: const Color.fromRGBO(254, 55, 56, 1),
                  padding: const EdgeInsets.all(12),
                  onPressed: () {},
                  clickEffect: true,
                  strokeWidth: 1,
                  highlightColor: Colors.grey.shade100,
                ),
              ],
            ),
          )
        ],
      ),
    ));
    if (!isSliver) {
      return widget;
    }
    return SliverToBoxAdapter(
      child: _shopInfo != null ? widget : Container(),
    );
  }

  // 占位
  Widget buildSliverToBoxAdapterPlaceholder({bool isSliver = true}) {
    Widget widget = Container(
      height: 12,
    );
    if (!isSliver) {
      return widget;
    }
    return SliverToBoxAdapter(
      child: Container(
        height: 12,
      ),
    );
  }

  // 第六行,推荐语
  Widget buildSliverToBoxAdapterSix({bool isSliver = true}) {
    var widget = containerWarp(
        Container(
          alignment: Alignment.topLeft,
          child: FSuper(
            lightOrientation: FLightOrientation.LeftBottom,
            textAlign: TextAlign.start,
            spans: [
              const TextSpan(
                  text: '推荐理由: ',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(
                  text: info!.desc, style: const TextStyle(color: Colors.grey)),
              TextSpan(
                  text: '复制文案',
                  style: const TextStyle(color: Colors.pinkAccent),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      utils.copy(info!.desc);
                    })
            ],
          ),
        ),
        height: 12);
    if (!isSliver) {
      return widget;
    }
    return SliverToBoxAdapter(
      child: widget,
    );
  }

  // 第五行,领券
  Widget buildSliverToBoxAdapterFive({bool isSliver = true}) {
    var widget = containerWarp(
        InkWell(
          onTap: () async {
            if (couponLinkResult != null) {
              await utils.openTaobao(
                  couponLinkResult!.couponClickUrl ?? 'https://itbug.shop');
            }
          },
          child: Container(
            height: 100,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            decoration: const BoxDecoration(
                color: Color.fromRGBO(252, 54, 74, 1.0),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 12),
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(255, 237, 199, 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              '${info!.couponPrice}元优惠券'.replaceAll('.0', ''),
                              style: const TextStyle(
                                  color: Color.fromRGBO(145, 77, 9, 1.0),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Text(
                              '使用日期:${getTimeStr(info!.couponStartTime)} - ${getTimeStr(info!.couponEndTime)}',
                              style: context.textTheme.bodySmall,
                            )
                          ],
                        ),
                      ),
                      // 圆
                      Positioned(
                        left: -6,
                        top: 38,
                        child: Container(
                          height: 12,
                          width: 12,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(252, 54, 74, 1.0)),
                        ),
                      ),
                      Positioned(
                        right: -6,
                        top: 38,
                        child: Container(
                          height: 12,
                          width: 12,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(252, 54, 74, 1.0)),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    '立即领券 >',
                    style: context.textTheme.titleSmall,
                  ),
                )
              ],
            ),
          ),
        ),
        height: 12);
    if (!isSliver) {
      return widget;
    }
    return SliverToBoxAdapter(
      child: widget,
    );
  }

  // 第四行,满减
  Widget buildSliverToBoxAdapterFour({bool isSliver = true}) {
    var widget = containerWarp(Row(
      children: <Widget>[
        const SizedBox(
          width: 120,
          child: Text(
            '满减',
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              FSuper(
                lightOrientation: FLightOrientation.LeftBottom,
                text: '满${info!.couponConditions}减${info!.couponPrice}',
                backgroundColor: Colors.red,
                textAlign: TextAlign.center,
                textAlignment: Alignment.center,
                style: const TextStyle(color: Colors.white),
                corner: FCorner.all(4),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
              ),
              // Text(
              //   ' 活动已过期',
              //   style: TextStyle(
              //       color: Colors.red,
              //       fontSize: ScreenUtil().setSp(45),
              //       fontWeight: FontWeight.bold),
              // )
            ],
          ),
        )
      ],
    ));
    if (!isSliver) {
      return widget;
    }
    return SliverToBoxAdapter(child: widget);
  }

  // 第三行,标题
  Widget buildSliverToBoxAdapterThree({bool isSliver = true}) {
    var widget = containerWarp(
        SizedBox(
          width: context.screenWidth,
          child: DrawableStartText(
            lettersCountOfAfterImage: info!.dtitle.length,
            assetImage: info!.shopType == 1
                ? 'assets/icons/tianmao2.png'
                : 'assets/icons/taobao2.png',
            text: ' ${info!.title}',
            textStyle:
                const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
          ),
        ),
        height: 20);
    if (!isSliver) {
      return widget;
    }
    return SliverToBoxAdapter(
      child: widget,
    );
  }

  // 第二行,原价+销量
  Widget buildSliverToBoxAdapterTwo({bool isSliver = true}) {
    var widget = containerWarp(Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        FSuper(
          lightOrientation: FLightOrientation.LeftBottom,
          spans: <TextSpan>[
            TextSpan(
                text: '原价 ¥ ${info!.originalPrice}',
                style: const TextStyle(
                    color: Colors.grey, decoration: TextDecoration.lineThrough))
          ],
        ),
        FSuper(
          lightOrientation: FLightOrientation.LeftBottom,
          text: '已售 ${info!.monthSales}',
        )
      ],
    ));
    if (!isSliver) {
      return widget;
    }
    return SliverToBoxAdapter(
      child: widget,
    );
  }

  // 第一行,券后价+返佣
  Widget buildSliverToBoxAdapterOne({bool isSliver = true}) {
    var widget = containerWarp(
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SimplePrice(
            price: '${info!.actualPrice} ',
            zhe: '${info!.discounts}',
          ),
        ],
      ),
      height: 10,
    );
    if (!isSliver) {
      return widget;
    }
    return SliverToBoxAdapter(
      child: widget,
    );
  }

  Widget containerWarp(Widget child, {double height = 0}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: height),
      child: child,
    );
  }

  // 轮播
  Widget buildGoodsSwiper() {
    var swiper = Swiper(
      key: _swaperGlogbalKey,
      autoplay: getImages().isNotEmpty,
      duration: 1000,
      loop: true,
      itemBuilder: (BuildContext context, int index) {
        return ImageView(
            image: MyImage.network(
                url: getImages().get(index),
                params: ImageParams(
                    width: double.infinity,
                    height: context.screenWidth,
                    fit: BoxFit.cover)));
      },
      onIndexChanged: (index) {
        setState(() {
          curentSwaiperIndex = index;
        });
      },
      itemCount: getImages().length,
    );

    return Stack(
      children: <Widget>[
        buildContainer(swiper: swiper),
        Positioned(
          right: 12,
          bottom: 12,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.black26.withValues(alpha: .3),
                borderRadius: const BorderRadius.all(Radius.circular(5))),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
            child: Text(
              '${curentSwaiperIndex + 1} / ${getImages().length}',
              style: const TextStyle(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }

  // 顶部显影appbar
  AppBar buildOpacityAppbar() {
    return AppBar(
      elevation: 0,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: TabBar(
                tabs: const [
                  Tab(text: '宝贝'),
                  Tab(text: '详情'),
                  Tab(text: '推荐'),
                ],
                controller: _tabController,
                onTap: tabOnChange,
                dividerColor: Colors.transparent),
          ),
          const SizedBox(
            width: 12,
          ),
          Container(
            alignment: Alignment.centerRight,
            child: const Icon(
              Icons.more_horiz,
            ),
          ).click(() {
            final url = couponLinkResult?.kuaiZhanUrl;
            if (url != null) {
              Share.share(url);
            }
          }),
        ],
      ),
    );
  }

  Widget buildContainer({Widget? swiper, double? width}) {
    return SizedBox(
      height: width ?? context.screenWidth,
      child: swiper,
    );
  }

  String getTimeStr(String time) {
    return DateUtil.formatDateStr(time, format: DateFormats.y_mo_d);
  }

  List<String> getImages() {
    var str = info!.imgs;
    return str.split(',');
  }

  String getCatName(String fqcat) {
    var cats = <String>[
      '女装',
      '男装',
      '内衣',
      '美妆',
      '配饰',
      '鞋品',
      '箱包',
      '儿童',
      '母婴',
      '居家',
      '美食',
      '数码',
      '家电',
      '其他',
      '车品',
      '文体',
      '宠物'
    ];
    return cats[int.parse(fqcat) - 1];
  }

  @Doc(message: '初始化页面数据')
  Future<String> initDatas() async {
    kLog('加载产品信息:${widget.goodsId}');
    try {
      final relationId = ref.user?.relationId ?? '';
      final result = await MyNewApiDetailInfo().request(RequestParams(
          showDefaultLoading: false,
          urlParseFormat: (uri, queryParameters) => '$uri${widget.goodsId}',
          data: <String, dynamic>{
            "relationId": relationId.isEmpty ? null : relationId
          }));
      if (mounted) {
        setState(() {
          info = result.info;
          couponLinkResult = result.couponInfo;
        });
      }
      return 'success';
    } catch (e) {
      rethrow;
    }
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  // 获取widget距离顶部的位置
  double getY(BuildContext buildContext) {
    final box = buildContext.findRenderObject() as RenderBox;
    final topLeftPosition = box.localToGlobal(Offset.zero);
    return topLeftPosition.dy;
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }
}
