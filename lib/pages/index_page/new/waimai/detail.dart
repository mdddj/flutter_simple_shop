part of pages;

///
/// @Author 梁典典
/// @Github 开源地址 https://github.com/mdddj/flutter_simple_shop
/// @Description 功能描述 外卖领取页面
/// @Date 创建时间  2021年7月2日 12:32:16
///
class WaimaiDetail extends ConsumerStatefulWidget {
  final String type; // 类型 1 - 外卖红包  2 - 商超红包
  const WaimaiDetail({Key? key, required this.type}) : super(key: key);

  @override
  WaimaiDetailState createState() => WaimaiDetailState();
}

class WaimaiDetailState extends ConsumerState<WaimaiDetail> {
  ZheElmResultModel? zheModel;

  @override
  void initState() {
    super.initState();
    delayFunction(() async {
      SmartDialog.showLoading(msg: '加载中');

      var activityId = '10144';
      if (widget.type == '2') {
        activityId = '10247';
      }
      try {
        final result = await getIt.get<ZheElmApi>().request(R(data: {
              "activityId": activityId,
              "customerId": '${ref.user?.id ?? 1}'
            }));
        zheModel = result;
        setState(() {});
      } on AppException catch (e) {
        showIosDialog(e.getMessage);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.type == '1'
          ? const Color.fromRGBO(255, 97, 97, 1)
          : const Color.fromRGBO(1, 171, 245, 1),
      appBar: const SimpleAppBar(title: '红包领取'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            renderHeaderImage(),
            renderNavLink(),
            utils.widgetUtils.marginTop(),
            renderKl(),
            utils.widgetUtils.marginTop(),
            rendenGuize()
          ],
        ),
      ),
    );
  }

  /// 领取规则
  Widget rendenGuize() {
    const style = TextStyle(color: Colors.white);
    return const Padding(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('规则说明:', style: style),
          Text('1.每天最高可领20元红包。', style: style),
          Text('2.使用红包时下单手机号码必须与收餐人手机号码、领取红包时输入的手机号码一致。', style: style),
          Text('3.具体红包使用有效期及红包金额以实际收到为准。', style: style),
        ],
      ),
    );
  }

  // 头部
  Widget renderHeaderImage() {
    return AspectRatio(
        aspectRatio: 1.87,
        child: Image.asset(
            'assets/images/waimai/hb/${widget.type == '1' ? '1' : 'sc_bg'}.png'));
  }

  /// 复制口令模块
  Widget renderKl() {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 2.33,
          child: Image.asset('assets/images/waimai/hb/4.png'),
        ),
        if (zheModel != null)
          Positioned(
              left: 20,
              right: 20,
              top: 5,
              child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      const Text('微信小程序领取').marginOnly(bottom: 6),
                      ImageView(
                              image: MyImage.network(
                                  url: zheModel!.links.miniqrcode,
                                  params: const ImageParams(size: 80)))
                          .wrapper(zheModel!.links.miniqrcode),
                    ],
                  ))),
        Positioned(
          left: 30,
          right: 30,
          bottom: 12,
          child: FButton(
            height: 40,
            text: '或者去支付宝领取',
            style: const TextStyle(
                color: Colors.pink, fontWeight: FontWeight.bold),
            onPressed: () {
              if (zheModel != null) {
                appLaunchUrl(zheModel!.links.alipayminiurl);
              }
            },
            clickEffect: true,
            strokeWidth: 1,
            strokeColor: Colors.red,
            alignment: Alignment.center,
            corner: FCorner.all(50),
            shadowColor: Colors.red,
            highlightColor: Colors.pink.shade50,
          ),
        )
      ],
    );
  }

  /// 跳转链接
  Widget renderNavLink() {
    return AspectRatio(
      aspectRatio: 2,
      child: Stack(
        children: [
          Image.asset('assets/images/waimai/hb/2.png'),
          Positioned(
              top: 12,
              left: 20,
              right: 20,
              child: AspectRatio(
                aspectRatio: 3.98,
                child: Image.asset('assets/images/waimai/hb/3.png'),
              )),
          Positioned(
              bottom: 15,
              left: 30,
              right: 30,
              child: FButton(
                height: 40,
                alignment: Alignment.center,
                text: '领红包点外卖(网页)',
                style: const TextStyle(color: Colors.white),
                color: Colors.red,
                onPressed: () {
                  if (zheModel != null) {
                    utils.navToBrowser(zheModel!.links.h5shortlink);
                  }
                },
                highlightColor: Colors.pink,
                corner: FCorner.all(50),
              )),
          if (zheModel != null && zheModel!.links.eleschemeurl.isNotEmpty)
            Positioned(
              left: 30,
              right: 30,
              bottom: 60,
              child: Text(
                '去饿了么APP领取',
                style: context.textTheme.bodyLarge
                    ?.copyWith(color: context.primaryColor),
              ).center.click(() {
                appLaunchUrl(zheModel?.links.eleschemeurl ?? '');
              }),
            )
        ],
      ),
    );
  }
}
