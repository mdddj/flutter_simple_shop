part of '../../../../index.dart';

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
    GridMenuItem(item: GridMenuModel(title: '饿了吗', image: elmImage, isAssets: true, onTap: () => applocationContext.context.navToWidget(to: const WaimaiIndex()))),

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
    GridMenuItem(item: GridMenuModel(title: '排行榜', image: phbImage, onTap: () => applocationContext.context.navToWidget(to: const PanicBuyingPage()), isAssets: true)),

    /// 折上折
    GridMenuItem(item: GridMenuModel(title: '折上折', image: zheImage, onTap: () => applocationContext.context.navToWidget(to: const ZheIndex()), isAssets: true)),

    GridMenuItem(item: GridMenuModel(title: '每日半价', image: banjiaImage, onTap: () => applocationContext.context.navToWidget(to: const BanjiaIndex()), isAssets: true)),

    GridMenuItem(item: GridMenuModel(title: '拼夕夕', image: 'assets/svg/pdd.svg', onTap: () => const SearchPage(), isAssets: true)),

    GridMenuItem(item: GridMenuModel(title: '精选品牌', image: pp, onTap: () => applocationContext.context.navToWidget(to: const BrandListPage()), isAssets: true)),

    GridMenuItem(item: GridMenuModel(title: '典の日常', image: jd, onTap: () => applocationContext.context.navToWidget(to: const RecommendPage()), isAssets: true)),

    /// 面基专区
    GridMenuItem(item: GridMenuModel(title: '典典面基', image: pyq, onTap: () => applocationContext.context.navToWidget(to: const MianjiPage()), isAssets: true)),
  ];
}

/// 首页的网格菜单
class GridMenuComponent extends View {
  const GridMenuComponent({super.key});

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
          children: indexMenus.map(HomeMenuLayout.new).toList(),
        ),
      ),
    );
  }
}

class HomeMenuLayout extends StatelessWidget {
  final HomeMenu homeMenu;

  const HomeMenuLayout(this.homeMenu, {super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return InkWell(
        onTap: () {
          if (homeMenu.onTap != null) {
            homeMenu.onTap?.call();
            return;
          }
          if (homeMenu.routerPath != null) {
            context.push(homeMenu.routerPath!, extra: homeMenu.extra);
          }
        },
        onLongPress: homeMenu.onLongTap,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              if (homeMenu.svgpath.isNotEmpty) ImageWrapper(child: SvgPicture.asset(homeMenu.svgpath, width: constraints.maxWidth * 0.5, height: constraints.maxWidth * 0.5)),
              if (homeMenu.icon != null) ImageWrapper(child: homeMenu.icon!),
              const SizedBox(height: 6),
              Text(homeMenu.title, maxLines: 1, style: context.textTheme.labelSmall?.copyWith(fontSize: homeMenu.title.length > 4 ? 9 : null))
            ],
          ),
        ),
      );
    });
  }
}
