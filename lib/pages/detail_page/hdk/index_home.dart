import 'dart:ui';
import 'package:common_utils/common_utils.dart';
import 'package:dataoke_sdk/dd_taoke_sdk.dart';
import 'package:dataoke_sdk/model/coupon_link_result.dart';
import 'package:dataoke_sdk/model/product.dart';
import 'package:dd_js_util/api/base.dart';
import 'package:dd_js_util/ext/bool.dart';
import 'package:fbutton_nullsafety/fbutton_nullsafety.dart';
import 'package:fcontrol_nullsafety/fdefine.dart' as controller;
import 'package:fcontrol_nullsafety/fdefine.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_swiper_null_safety_flutter3/flutter_swiper_null_safety_flutter3.dart';
import 'package:fsuper_nullsafety/fsuper_nullsafety.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_more_list/loading_more_list.dart';
import '../../../common/utils.dart';
import '../../../modals/shop_info.dart';
import '../../../util/image_util.dart';
import '../../../widgets/extended_image.dart';
import '../../../widgets/loading_widget.dart';
import '../../../widgets/my_drawable_start_text.dart';
import '../../../widgets/no_data.dart';
import '../../../widgets/round_underline_tab_indicator.dart';
import '../../../widgets/simple_price.dart';
import '../detail_imgs_widget.dart';

//是否展示轮播图上面的返回箭头
final satteShowBackButton = StateProvider((ref) => true);

//是否在顶部展示导航条
final stateShowAppbar = StateProvider((ref) => false);

//详情页面
class HaoDanKuDetailItem extends ConsumerStatefulWidget {
  final String goodsId;

  const HaoDanKuDetailItem({required this.goodsId, Key? key}) : super(key: key);

  @override
  HaoDanKuDetailItemState createState() => HaoDanKuDetailItemState();
}

class HaoDanKuDetailItemState extends ConsumerState<HaoDanKuDetailItem>
    with TickerProviderStateMixin {
  late Product info;
  CouponLinkResult? couponLinkResult;
  ShopInfo? _shopInfo;
  late Future<String> futureBuildData = initDatas();
  double _appbarOpaction = 0;
  int curentSwaiperIndex = 0;
  double ztlHei = MediaQueryData.fromWindow(window).padding.top; // 转态栏高度
  double _topAppbarHei = 0; // 顶部显影工具条的高度
  double _initImagesTopHei = 0; // 图片详情距离顶部的高度 (包含转态栏)
  bool _showToTopButton = false; // 显示返回顶部按钮

  late TabController _tabController;
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _swaperGlogbalKey = GlobalKey();
  final GlobalKey _appbarGlogbalKey = GlobalKey();
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
      setState(() {
        _appbarOpaction = t;
      });


      //计算详情widget到顶部距离
      var topHei = getY(_detailImagesGlogbalKey.currentContext!);
      if (topHei <= _topAppbarHei + ztlHei) {
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
          _initImagesTopHei - ztlHei - _topAppbarHei + 5,
          duration: const Duration(milliseconds: 600),
          curve: Curves.ease);
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _scrollController.addListener(() {
      var scrollHeight = _scrollController.offset;
      if(scrollHeight >= 2){
        ref.read(satteShowBackButton.notifier).state = false;
        ref.read(stateShowAppbar.notifier).state = true;
      }else{
        ref.read(satteShowBackButton.notifier).state = true;
        ref.read(stateShowAppbar.notifier).state = false;
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
      setState(() {
        _appbarOpaction = t;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.grey,
        statusBarIconBrightness: Brightness.light));
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: null,
          body: FutureBuilder(
            future: futureBuildData,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              return AnimatedSwitcher(
                duration: const Duration(milliseconds: 800),
                switchInCurve: Curves.fastOutSlowIn,
                child: snapshot.hasData
                    ? buildCustomScrollViewShop()
                    : snapshot.hasError
                        ? NoDataWidget(
                            title: snapshot.error.toString(),
                          )
                        : const LoadingWidget(),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget buildCustomScrollViewShop() {
    return NotificationListener<LayoutChangedNotification>(
      onNotification: (notification) {
        if (_topAppbarHei == 0) {
          setState(() {
            _topAppbarHei = (_appbarGlogbalKey.currentContext?.size?.height??0) +
                MediaQueryData.fromWindow(window).padding.top;
            _initImagesTopHei = getY(_detailImagesGlogbalKey.currentContext!);
          });
          addScrollListener();
        }
        return true;
      },
      child: Stack(
        children: <Widget>[
          NestedScrollView(
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
          buildOpacityAppbar(),
          // 返回顶部按钮
          _showToTopButton
              ? Positioned(
                  bottom: 80 + MediaQuery.of(context).padding.bottom,
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
                          borderRadius:
                              const BorderRadius.all(Radius.circular(35)),
                          border: Border.all(
                              width: .5,
                              color: Colors.black26.withOpacity(.2))),
                      child: const Icon(
                        Icons.vertical_align_top,
                        color: Colors.black,
                      ),
                    ),
                  ),
                )
              : Container(),

          //底部操作栏
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              decoration: const BoxDecoration(color: Colors.white),
              padding: EdgeInsets.only(
                  bottom:
                      GetPlatform.isIOS ? Get.mediaQuery.padding.bottom : 0),
              width: Get.width,
              height:
                  60 + (GetPlatform.isIOS ? Get.mediaQuery.padding.bottom : 0),
              child:  Row(
                children: [
                  const SizedBox(width: 12,),
                  _renderBottomItem('帮助',Icons.help),
                  Expanded(child: buildImageButton1(context)),
                  const SizedBox(width: 12,),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  ///底部操作区域菜单图标+文字
  Widget _renderBottomItem(String key,IconData icon){
    return Container(
      height: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(icon),
          Text(key)
        ],
      ),
    );
  }

  Widget buildBottomRow() {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(onPressed: Get.back, icon: const Icon(Icons.home)),
                Expanded(
                  child: WaterfallFlow.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    children: <Widget>[
                      OutlinedButton(
                          onPressed: () async {
                            if (couponLinkResult != null) {
                              utils.copy(couponLinkResult!.longTpwd ?? '无优惠券',
                                  message: '复制成功,打开淘宝APP领取优惠券');
                            }
                          },
                          child: const Text('复制口令')),
                      ElevatedButton(
                          onPressed: () async {
                            if (couponLinkResult != null) {
                              await utils.openTaobao(
                                  couponLinkResult!.couponClickUrl ??
                                      'https://itbug.shop');
                            }
                          },
                          child: const Text('立即领券')),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 12,
                )
              ],
            );
  }

  // 详情图
  Widget buildGoodsDetailImaegs() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            alignment: Alignment.topLeft,
            child: const Text(
              '宝贝详情',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          buildImagesWidget()
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
                              _shopInfo!.pictUrl != null
                          ? NetworkImage(
                              MImageUtils.magesProcessor(_shopInfo!.pictUrl!))
                          : const AssetImage('assets/images/ava.png'))
                      as ImageProvider<Object>?,
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  _shopInfo != null ? _shopInfo!.sellerNick! : '店铺名初始化',
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
      color: const Color.fromRGBO(246, 245, 245, 1.0),
      height: 12,
    );
    if (!isSliver) {
      return widget;
    }
    return SliverToBoxAdapter(
      child: Container(
        color: const Color.fromRGBO(246, 245, 245, 1.0),
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
            lightOrientation: controller.FLightOrientation.LeftBottom,
            textAlign: TextAlign.start,
            spans: [
              const TextSpan(
                  text: '推荐理由: ',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(
                  text: '${info.desc}',
                  style: const TextStyle(color: Colors.grey)),
              TextSpan(
                  text: '复制文案',
                  style: const TextStyle(color: Colors.pinkAccent),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      utils.copy(info.desc);
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
                              '${info.couponPrice}元优惠券'.replaceAll('.0', ''),
                              style: const TextStyle(
                                  color: Color.fromRGBO(145, 77, 9, 1.0),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Text(
                              '使用日期:${getTimeStr(info.couponStartTime ?? '')} - ${getTimeStr(info.couponEndTime ?? '已过期')}',
                              style: const TextStyle(
                                  color: Color.fromRGBO(145, 77, 9, 1.0),
                                  fontWeight: FontWeight.w400),
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
                  child: const Text(
                    '立即领券 >',
                    style: TextStyle(color: Colors.white, fontSize: 12),
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
                lightOrientation: controller.FLightOrientation.LeftBottom,
                text: '满${info.couponConditions}减${info.couponPrice}',
                backgroundColor: Colors.red,
                textAlign: TextAlign.center,
                textAlignment: Alignment.center,
                style: const TextStyle(color: Colors.white),
                corner: controller.FCorner.all(4),
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
          width: Get.width,
          child: DrawableStartText(
            lettersCountOfAfterImage: info.dtitle!.length,
            assetImage: info.shopType == 1
                ? 'assets/icons/tianmao2.png'
                : 'assets/icons/taobao2.png',
            text: ' ${info.title}',
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
          lightOrientation: controller.FLightOrientation.LeftBottom,
          spans: <TextSpan>[
            TextSpan(
                text: '原价 ¥ ${info.originalPrice}',
                style: const TextStyle(
                    color: Colors.grey, decoration: TextDecoration.lineThrough))
          ],
        ),
        FSuper(
          lightOrientation: controller.FLightOrientation.LeftBottom,
          text: '已售 ${info.monthSales}',
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
            price: '${info.actualPrice} ',
            zhe: '${info.discounts}',
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
        return ExtendedImageWidget(
          width: Get.width,
          height: Get.width,
          src: getImages()[index],
          fit: BoxFit.fill,
          knowSize: true,
        );
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
        AnimatedPositioned(
          duration: const Duration(milliseconds: 100),
          left: 12,
          top:ref.watch(satteShowBackButton) ?  12 : -12,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: CircleAvatar(
              backgroundColor: Colors.black26.withOpacity(.3),
              child: const Icon(
                Icons.chevron_left,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
          right: 12,
          bottom: 12,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.black26.withOpacity(.3),
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
  Widget buildOpacityAppbar() {
    final isShow = ref.watch(stateShowAppbar);
    if(isShow.not){
      return const SizedBox();
    }
    return Opacity(
      opacity: _appbarOpaction,
      child: Container(
        key: _appbarGlogbalKey,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        height: kToolbarHeight,
        width: Get.width,
        decoration: const BoxDecoration(
            color: Colors.white, boxShadow: [BoxShadow(color: Colors.black26)]),
        child: Row(
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.chevron_left),
              color: Colors.black,
              onPressed: Get.back,
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: TabBar(
                indicator: const RoundUnderlineTabIndicator(
                    insets: EdgeInsets.only(bottom: 3),
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.red,
                    )),
                labelColor: Colors.black,
                tabs: const [
                  Tab(text: '宝贝'),
                  Tab(text: '详情'),
                  Tab(text: '推荐'),
                ],
                controller: _tabController,
                onTap: tabOnChange,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Container(
              alignment: Alignment.centerRight,
              child: const Icon(
                Icons.more_horiz,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildContainer({Widget? swiper, double? width}) {
    return SizedBox(
      height: width ?? Get.width,
      child: swiper,
    );
  }

  // 商品详情图
  SingleChildScrollView buildImagesWidget() {
    return SingleChildScrollView(
      key: _detailImagesGlogbalKey,
      child: DetailImagesWidget(
        images: info.detailPics,
        hideTitle: true,
      ),
    );
  }

  String getTimeStr(String time) {
    return DateUtil.formatDateStr(time, format: DateFormats.y_mo_d);
  }

  List<String> getImages() {
    var str = info.imgs ?? '';
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




  Row buildImageButton1(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FButton(
          height: 38,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          text: "复制口令",
          style: const TextStyle(color: Colors.white),
          color: const Color(0xff9ccc65),
          alignment: Alignment.center,
          onPressed: () {
          },
          clickEffect: true,
          corner: const FCorner(leftTopCorner: 25, leftBottomCorner: 25),
          imageMargin: 8,
        ),
        const SizedBox(
            height: 38,
            child: VerticalDivider(width: 0.25, color: Colors.black)),
        FButton(
          height: 38,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          text: "立即领券",
          style: const TextStyle(color: Colors.white),
          color: const Color(0xffd4e157),
          alignment: Alignment.center,
          onPressed: () {
          },
          corner: const FCorner(rightTopCorner: 25, rightBottomCorner: 25),
          imageMargin: 8,
          imageAlignment: ImageAlignment.right,
        ),
      ],
    );
  }

  @Doc(message: '初始化页面数据')
  Future<String> initDatas() async {
    try{
      final result = await DdTaokeSdk.instance.getDetailBaseData(
        productId: widget.goodsId,
      );
      if (result != null) {
        if (mounted) {
          setState(() {
            info = result.info!;
            couponLinkResult = result.couponInfo;
          });
        }
      } else {
        throw Exception('商品优惠已过期');
      }
    }catch(e,s){
      debugPrintStack(stackTrace: s);
    }
    return 'success';
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  // 获取widget距离顶部的位置
  double getY(BuildContext buildContext) {
    final box = buildContext.findRenderObject() as RenderBox;
    //final size = box.size;
    final topLeftPosition = box.localToGlobal(Offset.zero);
    return topLeftPosition.dy;
  }
}
