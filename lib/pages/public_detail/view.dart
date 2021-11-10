// Dart imports:

// Package imports:
import 'package:extended_image/extended_image.dart';
import 'package:fcontrol_nullsafety/fdefine.dart';
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fsuper_nullsafety/fsuper_nullsafety.dart';
import 'package:get/get.dart';

// Project imports:
import '../../common/no_shadow_croll_ehavior.dart';
import '../../common/utils.dart';
import '../../service/api_service.dart';
import '../../util/image_util.dart';
import '../../widgets/extended_image.dart';
import '../../widgets/loading_widget.dart';
import 'abs.dart';
import 'model.dart';

/// 通用详情页面
class PublicDetailView extends StatefulWidget {
  final String goodsId;
  final String type;

  const PublicDetailView({Key? key, required this.goodsId, required this.type}) : super(key: key);

  @override
  _PublicDetailViewState createState() => _PublicDetailViewState();
}

class _PublicDetailViewState extends State<PublicDetailView> implements PublicDetailViewAbs {
  PublicDetailModel? info;

  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      final _info = await fetchData();
      if (mounted) {
        setState(() {
          info = _info;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: BlurHash(hash: 'LgJQ[]~o%0V?tixvNHM}R-xaaeWU'),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: info != null
              ? ScrollConfiguration(
                  behavior: NoShadowScrollBehavior(),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [renderNav(), renderHeader(), renderDetail()],
                    ),
                  ),
                )
              : const LoadingWidget(),
        ),
      ],
    );
  }

  /// 导航区域
  Widget renderNav() {
    return Container(
      margin: EdgeInsets.only(top: Get.mediaQuery.padding.top + 12, left: 12, right: 12),
      child: Column(
        children: [
          Row(
            children: [
              // 返回按钮
              IconButton(
                  onPressed: Get.back,
                  icon: FaIcon(
                    FontAwesomeIcons.arrowLeft,
                    color: Colors.grey.shade200,
                    size: 18,
                  ))
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              SizedBox(
                width: 50,
                height: 50,
                child: Image.asset('assets/images/dd.png'),
              ),
              const SizedBox(
                width: 12,
              ),
              const Text(
                '典典为你推荐',
                style: TextStyle(color: Colors.white, fontSize: 15),
              )
            ],
          )
        ],
      ),
    );
  }

  /// 商品信息
  Widget renderDetail() {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Column(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('商品信息'),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          '销量${info!.sales}件',
                          style: const TextStyle(color: Colors.grey, fontSize: 15),
                        )
                      ],
                    )
                  ],
                ),
              ),
              ...renderImages(constraints.maxWidth)
            ],
          );
        },
      ),
    );
  }

  /// 图片
  List<Widget> renderImages(double width) {
    return info!.detailImages
        .map((e) => SizedBox(
              width: width,
              child: ExtendedImage.network(
                MImageUtils.magesProcessor(e),
                width: double.infinity,
                cache: true,
                fit: BoxFit.cover,
                shape: BoxShape.rectangle,
              ),
            ))
        .toList();
  }

  /// 头部容器
  Widget renderHeader() {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                  decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    getTypeLabel(),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  info!.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      constraints: const BoxConstraints(minHeight: 120),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '券后价',
                            style: TextStyle(color: Colors.red, fontSize: 12),
                          ),
                          FSuper(
                              text: '¥ ',
                              style: const TextStyle(color: Colors.red, fontSize: 16),
                              spans: [TextSpan(text: '${info!.price}', style: const TextStyle(color: Colors.red, fontSize: 25, fontWeight: FontWeight.bold))],
                              lightOrientation: FLightOrientation.RightTop)
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 120,
                      height: 120,
                      child: SimpleImage(url: info!.goodsImage),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: onGetCoupon,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              height: 50,
              decoration: const BoxDecoration(color: Colors.red, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (info!.coupon.isNotEmpty)
                    Text(
                      '${info!.coupon.replaceAll('.00', '')}元隐藏券',
                      style: const TextStyle(color: Colors.white),
                    ),
                  Text(
                    info!.coupon.isNotEmpty ? '去领券 >' : '去购买 >',
                    style: const TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Future<PublicDetailModel?> fetchData() async {
    switch (widget.type) {
      case 'pdd':
        return await getPxxDetail();
      case 'wph':
        return await getWphDetail();
      default:
        break;
    }
  }

  /// 加载唯品会详情
  Future<PublicDetailModel?> getWphDetail() async {
    final result = await tkApi.getWphProductInfo(widget.goodsId);
    if (result != null) {
      return PublicDetailModel.fromWph(result);
    }
  }

  /// 加载拼夕夕商品详情
  Future<PublicDetailModel?> getPxxDetail() async {
    final result = await tkApi.ppdDetail(widget.goodsId);
    if (result != null) {
      return PublicDetailModel.fromPdd(result);
    }
  }

  @override
  Future<void> onGetCoupon() async {
    if (info != null) {
      switch (info!.type) {
        case '拼多多':
          await pxxGet();
          break;
        default:
          break;
      }
    }
  }

  /// 平夕夕领券
  Future<void> pxxGet({bool onShare = false}) async {
    final urls = await tkApi.pddCovert(widget.goodsId); // 获取转换成功的链接对象
    if (urls != null) {
      if (onShare) {
        utils.copy(urls['mobile_short_url'], message: '链接已复制');
        return;
      }

      if(utils.weChatBro){
        await utils.openLink(urls['mobile_short_url'].toString().replaceAll('https://', ''));
      }

      await utils.openLink(urls['mobile_short_url'], urlYs: 'pinduoduo://');
    }
  }

  @override
  Future<void> onShare() async {}

  @override
  String getTypeLabel() {
    if (info != null) {
      switch (info!.type) {
        case 'pdd':
          return '拼多多';
      }
    }
    return info!.type;
  }
}
