import 'package:dd_js_util/dd_js_util.dart';
import 'package:extended_image/extended_image.dart';
import 'package:fcontrol_nullsafety/fdefine.dart';
import 'package:flutter/material.dart';
import 'package:fsuper_nullsafety/fsuper_nullsafety.dart';
import 'package:logger/logger.dart';

import '../../util/index.dart';
import '../../widgets/index.dart';
import 'abs.dart';
import 'model.dart';

/// 通用详情页面
class PublicDetailView extends StatefulWidget {
  final String goodsId;
  final String type;

  const PublicDetailView({super.key, required this.goodsId, required this.type});

  @override
  PublicDetailViewState createState() => PublicDetailViewState();
}

class PublicDetailViewState extends State<PublicDetailView> implements PublicDetailViewAbs {
  PublicDetailModel? info;

  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      final myInfo = await fetchData();
      if (mounted) {
        setState(() {
          info = myInfo;
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
      margin: EdgeInsets.only(top: context.paddingTop + 12, left: 12, right: 12),
      child: Column(
        children: [
          Row(
            children: [
              // 返回按钮
              IconButton(onPressed: context.pop, icon: const Icon(Icons.chevron_left))
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
      case 'wph':
      default:
        return null;
    }
  }

  @override
  Future<void> onGetCoupon() async {
    Logger().d('领取优惠券${info?.type}');
    if (info != null) {
      switch (info!.type) {
        case '拼多多':
          break;
        default:
          break;
      }
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
