import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart' hide View;
import 'package:loading_more_list_fast/loading_more_list_fast.dart';
import '../../../../../common/utils.dart';
import '../../../../../common/view.dart';
import '../../../../../config/app_config.dart';
import '../../../../banjia/view.dart';
import '../../../../brand_page/index.dart';
import '../../../../jd/recommend/view.dart';
import '../../../../mianji/mianji/view.dart';
import '../../../../panic_buying/view.dart';
import '../../../../pinduoduo/search/view.dart';
import '../../../../zhe/view.dart';
import '../../index_card_wrapper.dart';
import '../../waimai/index.dart';
import 'menu_item.dart';
import 'model.dart';

const elmImage = 'assets/svg/elm_logo.svg';
const phbImage = 'assets/svg/phb.svg';
const zheImage = 'assets/svg/zhe.svg';
const banjiaImage = 'assets/svg/banjia.svg';
const mtwmImage = 'assets/svg/mt.svg';
const chf = 'assets/svg/chf.svg'; // 充话费
const pp = 'assets/svg/pp.svg'; // 品牌
const jd = 'assets/svg/jd.svg'; // 京东
const pyq = 'assets/svg/pyq.svg'; // 朋友圈

List<Widget> buildIndexGridMenuItems(ApplocationContext applocationContext) {
  return [
    /// 领券
    GridMenuItem(
        item: GridMenuModel(
            title: '饿了吗',
            image: elmImage,
            isAssets: true,
            onTap: () => applocationContext.context
                .navToWidget(to: const WaimaiIndex()))),

    GridMenuItem(
        item: GridMenuModel(
      title: '美团领券',
      image: mtwmImage,
      onTap: () async {
        final url = await applocationContext.meituanWaimai;
        utils.navToBrowser(url);
      },
      isAssets: true,
    )),

    /// 排行榜
    GridMenuItem(
        item: GridMenuModel(
            title: '排行榜',
            image: phbImage,
            onTap: () => applocationContext.context
                .navToWidget(to: const PanicBuyingPage()),
            isAssets: true)),

    /// 折上折
    GridMenuItem(
        item: GridMenuModel(
            title: '折上折',
            image: zheImage,
            onTap: () =>
                applocationContext.context.navToWidget(to: const ZheIndex()),
            isAssets: true)),

    GridMenuItem(
        item: GridMenuModel(
            title: '每日半价',
            image: banjiaImage,
            onTap: () =>
                applocationContext.context.navToWidget(to: const BanjiaIndex()),
            isAssets: true)),

    GridMenuItem(
        item: GridMenuModel(
            title: '拼夕夕',
            image: 'assets/svg/pdd.svg',
            onTap: () => const SearchPage(),
            isAssets: true)),
    GridMenuItem(
        item: GridMenuModel(
            title: '8折话费',
            image: chf,
            onTap: () => utils.openLink(appConfig['huafeiUrl'].toString()),
            isAssets: true)),

    GridMenuItem(
        item: GridMenuModel(
            title: '精选品牌',
            image: pp,
            onTap: () => applocationContext.context
                .navToWidget(to: const BrandListPage()),
            isAssets: true)),

    GridMenuItem(
        item: GridMenuModel(
            title: '京东好货',
            image: jd,
            onTap: () => applocationContext.context
                .navToWidget(to: const RecommendPage()),
            isAssets: true)),

    /// 面基专区
    GridMenuItem(
        item: GridMenuModel(
            title: '典典面基',
            image: pyq,
            onTap: () =>
                applocationContext.context.navToWidget(to: const MianjiPage()),
            isAssets: true)),
  ];
}

/// 首页的网格菜单
class GridMenuComponent extends View {
  const GridMenuComponent({Key? key}) : super(key: key);

  @override
  Widget renderView(BuildContext context, ApplicationModel appCore) {
    return IndexCardWrapper(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: WaterfallFlow.count(
          padding: EdgeInsets.zero,
          crossAxisCount: 5,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: buildIndexGridMenuItems(appCore.applocationContext),
        ),
      ),
    );
  }
}
