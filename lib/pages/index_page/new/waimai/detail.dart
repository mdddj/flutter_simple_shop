// Flutter imports:
// Package imports:
import 'package:dataoke_sdk/dataoke_sdk.dart';
import 'package:dd_js_util/api/request_params.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'package:fbutton_nullsafety/fbutton_nullsafety.dart';
import 'package:fcontrol_nullsafety/fdefine.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

// Project imports:
import '../../../../common/utils.dart';
import '../../../../widgets/simple_appbar.dart';

///
/// @Author 梁典典
/// @Github 开源地址 https://github.com/mdddj/flutter_simple_shop
/// @Description 功能描述 外卖领取页面
/// @Date 创建时间  2021年7月2日 12:32:16
///
class WaimaiDetail extends StatefulWidget {
  final String type; // 类型 1 - 外卖红包  2 - 商超红包
  const WaimaiDetail({Key? key, required this.type}) : super(key: key);

  @override
  WaimaiDetailState createState() => WaimaiDetailState();
}

class WaimaiDetailState extends State<WaimaiDetail>  {
  ActivityLinkResult? model;

  @override
  void initState() {
    super.initState();
    delayFunction(() async  {
      SmartDialog.showLoading(msg: '加载中');
      try{
        final result = await kApi.getActivityLink(
            ActivityLinkParam(
                promotionSceneId:
                widget.type == '1' ? '20150318019998877' : '1585018034441'), requestParamsBuilder: (RequestParams requestParams) {
              return requestParams;
        });
        SmartDialog.dismiss();
        if (mounted && result != null) {
          setState(() {
            model = result;
          });
        }
      }catch(e,s){
        kLogErr(e);
        kLogErr(s);
        SmartDialog.dismiss();
        showIosDialog(e.toString());
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
        if (model != null)
          Positioned(
              left: 20,
              right: 20,
              top: 30,
              child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    model!.longTpwd,
                    style: const TextStyle(color: Colors.black, fontSize: 12),
                    textAlign: TextAlign.center,
                  ))),
        Positioned(
          left: 30,
          right: 30,
          bottom: 40,
          child: FButton(
            height: 40,
            text: '复制饿了么口令',
            style: const TextStyle(color: Colors.pink),
            onPressed: () {
              if (model != null) {
                utils.copy(model!.longTpwd, message: '复制口令成功,打开淘宝即可领取优惠券');
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
              bottom: 35,
              left: 30,
              right: 30,
              child: FButton(
                height: 40,
                alignment: Alignment.center,
                text: '领红包点外卖',
                style: const TextStyle(color: Colors.white),
                color: Colors.red,
                onPressed: () {
                  if (model != null) {
                    utils.navToBrowser(model!.clickUrl);
                  }
                },
                highlightColor: Colors.pink,
                corner: FCorner.all(50),
              ))
        ],
      ),
    );
  }

}
