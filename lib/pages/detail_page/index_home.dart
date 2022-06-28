// Flutter imports:
// Package imports:
import 'package:common_utils/common_utils.dart';
import 'package:fcontrol_nullsafety/fdefine.dart';
import 'package:flutter/material.dart';
import 'package:fsuper_nullsafety/fsuper_nullsafety.dart';

import './action_buttons.dart';
import './detail_imgs_widget.dart';
import './swiper_widget.dart';
// Project imports:
import '../../constant/color.dart';
import '../../service/api_service.dart';
import '../../widgets/coupon_price.dart';
import '../../widgets/icon_block_widget.dart';
import '../../widgets/no_data.dart';
import '../../widgets/title_widget.dart';
import '../dynamic/model/wph_detail_resul.dart';

//小部件

class DetailIndex extends StatefulWidget {
  final String weipinhuiId;

  const DetailIndex({required this.weipinhuiId,Key? key}):super(key: key);

  @override
  DetailIndexState createState() => DetailIndexState();
}

class DetailIndexState extends State<DetailIndex> {
  bool loadIng = true;

  // 唯品会商品数据
  WeipinhuiDetail? weipinhuiDetail;

  @override
  Widget build(BuildContext context) {
    if (loadIng) {
      return Scaffold(
        appBar: _appBarWidget(),
        body: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    if (weipinhuiDetail == null) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: _appBarWidget(),
        body: const NoDataWidget(),
      );
    }
    return WillPopScope(
        onWillPop: () async {
          return true;
        },
        child: Scaffold(
            appBar: null,
            body: Stack(
              children: <Widget>[
                Container(
                    color: Colors.white,
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          // 轮播图
                          _imgSwiper(),
                          const SizedBox(height: 12),
                          // 标题
                          TitleWidget(
                            title: detail.goodsName,
                            size: 60,
                            color: Colors.black,
                          ),
                          const SizedBox(height: 5),
                          // 价钱行
                          Container(
                            padding: const EdgeInsets.only(left: 20, top: 5, bottom: 5),
                            child: CouponPriceWidget(
                              actualPrice: detail.vipPrice,
                              originalPrice: double.parse(detail.marketPrice),
                              couponPriceFontSize: 100,
                              originalPriceFontSize: 55,
                              interval: 15.0,
                              showDiscount: true,
                            ),
                          ),

                          //信息展示
                          Container(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const <Widget>[
                                Text('月销:', style: TextStyle(color: Colors.grey)),
                                Text('两小时销量:', style: TextStyle(color: Colors.grey)),
                                Text('当天销量:', style: TextStyle(color: Colors.grey)),
                              ],
                            ),
                          ),

                          const SizedBox(height: 12),
                          // 返利说明
                          Container(
                            padding: const EdgeInsets.only(left: 20),
                            color: const Color.fromRGBO(251, 242, 245, 1.0),
                            height: 120,
                            child: Row(
                              children: <Widget>[
                                // 左边文字
                                Expanded(
                                  child: Row(
                                    children: <Widget>[
                                      Image.asset('assets/icons/youhuiquan.png', width: 30, height: 30),
                                      const Text('该商品可领取满'
                                          '减红包'),
                                      const Icon(Icons.help_outline, color: Colors.black26, size: 12)
                                    ],
                                  ),
                                ),
                                //右边
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Text(
                                    '券金额:${NumUtil.getNumByValueDouble(double.parse(detail.vipPrice), 0).toString()}',
                                    style: const TextStyle(color: primaryColor),
                                  ),
                                )
                              ],
                            ),
                          ),
                          // 返利说明END--------------------

                          //有效期
                          Container(
                            padding: const EdgeInsets.only(left: 20),
                            height: 75,
                            decoration: const BoxDecoration(border: Border(bottom: BorderSide(width: 0.5, color: Colors.black12))),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  width: 150,
                                  alignment: Alignment.centerLeft,
                                  padding: const EdgeInsets.only(right: 10),
                                  child: const Text(
                                    '活动剩余',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(_calcHowLong()),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //有效期END-------------------

                          //领券
                          Container(
                            padding: const EdgeInsets.only(left: 20),
                            height: 75,
                            decoration: const BoxDecoration(border: Border(bottom: BorderSide(width: 0.5, color: Colors.black12))),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  width:150,
                                  alignment: Alignment.centerLeft,
                                  padding: const EdgeInsets.only(right: 10),
                                  child: const Text(
                                    '优惠券',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: const Text(
                                      '立即领取',
                                      style: TextStyle(color: primaryColor, fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 20),
                                  child: Icon(
                                    Icons.keyboard_arrow_right,
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            ),
                          ),
                          //领券END--------------------

                          // 促销活动
                          Container(
                            padding: const EdgeInsets.only(left: 20),
                            height: 75,
                            decoration: const BoxDecoration(border: Border(bottom: BorderSide(width: 0.5, color: Colors.black12))),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  width: 150,
                                  alignment: Alignment.centerLeft,
                                  padding: const EdgeInsets.only(right: 10),
                                  child: const Text(
                                    '促销活动',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      _activityTypeStr(),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          // 促销活动END----------------------

                          // 服务
                          Container(
                            padding: const EdgeInsets.only(left: 20),
                            height: 75,
                            decoration: const BoxDecoration(border: Border(bottom: BorderSide(width: 0.5, color: Colors.black12))),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  width: 150,
                                  alignment: Alignment.centerLeft,
                                  padding: const EdgeInsets.only(right: 10),
                                  child: const Text(
                                    '服务',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        children: <Widget>[
                                          _isFreeshipRemoteDistrict(),
                                          // 是否包邮
                                          _haveYunfeixian()
                                          // 是否赠送运费险
                                        ],
                                      )),
                                )
                              ],
                            ),
                          ),
                          // 服务END----------------------

                          // 推荐理由
                          IconBlockWidget(
                            desc: detail.categoryName,
                          ),
                          Container(
                            height: 10.0,
                            color: const Color.fromRGBO(245, 245, 249, 1.0),
                          ),
                          // 商铺信息
                          // ShopInfoWidget(goodsInfo: detail.info!),
                          Container(
                            height: 10.0,
                            color: const Color.fromRGBO(245, 245, 249, 1.0),
                          ),

                          // 详情图
                          const DetailImagesWidget(images: ''),
                        ],
                      ),
                    )),
                //底部操作按钮
                ActionButtons(
                  goodsId: detail.goodsId,
                  getCallBack: () {
                    _gotoGetCouperLink();
                  },
                )
              ],
            )));
  }

  void _gotoGetCouperLink() async {}

  //商品是否包邮
  Widget _isFreeshipRemoteDistrict() {
    return const FSuper(
      lightOrientation: FLightOrientation.LeftBottom,
      text: '包邮',
      padding: EdgeInsets.all(2),
      margin: EdgeInsets.only(right: 5),
      strokeWidth: 1,
    );
  }

  //商品是否赠送运费险
  Widget _haveYunfeixian() {
    return const FSuper(
      lightOrientation: FLightOrientation.LeftBottom,
      text: '赠送运费险',
      padding: EdgeInsets.all(2),
      strokeWidth: 1,
    );
  }

  // 判断商品参加啥活动
  String _activityTypeStr() {
    var str = '该商品正在参加满减活动';
    return str;
  }

  // 计算有效期
  String _calcHowLong() {
    var now = DateTime.now();
    final endTime = detail.schemeEndTime;
    var difference = DateUtil.getDateTime(DateUtil.formatDateMs(endTime))!.difference(now);
    var str = '${difference.inDays}天${difference.inHours % 24}小时${difference.inMinutes % 60}分';
    return str;
  }

  WeipinhuiDetail get detail => weipinhuiDetail!;

  Widget _imgSwiper() {
    if (weipinhuiDetail != null) {
      return SwiperWidget(images: weipinhuiDetail!.goodsMainPicture);
    }
    return Container();
  }

  // appBar
  AppBar _appBarWidget() {
    return AppBar(
      title: const Text('详情'),
      leading: BackButton(
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      final result = await tkApi.getWphProductInfo(widget.weipinhuiId);
      setState(() {
        weipinhuiDetail = result;
        loadIng = false;
      });
    });
  }
}
