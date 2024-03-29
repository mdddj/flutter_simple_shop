part of '../../../../index.dart';

///
/// @Author 梁典典
/// @Github 开源地址 https://github.com/mdddj/flutter_simple_shop
/// @Description 功能描述 首页网格菜单布局
/// @Date 创建时间  2021年7月2日 10:59:41
///
class GridMenuItem extends StatelessWidget {
  /// 网格模型
  final GridMenuModel item;

  const GridMenuItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return GestureDetector(
          onTap: item.onTap,
          onLongPress: item.onLongTap,
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [renderImage(constraints), utils.widgetUtils.marginTop(), renderTitle()],
            ),
          ),
        );
      },
    );
  }

  // 标题
  Widget renderTitle() {
    return DefaultTextStyle.merge(child: Text(item.title), maxLines: 1, overflow: TextOverflow.ellipsis);
  }

  // 图片
  Widget renderImage(BoxConstraints constraints) {
    final size = constraints.maxWidth * 0.5;
    if (item.icon != null) {
      return SizedBox(width: size, height: size, child: item.icon!);
    }

    final svgComp = SvgPicture.asset(item.image);
    final imageComp = SimpleImage(url: item.image);
    final show = item.isAssets ? svgComp : imageComp;
    return SizedBox(
      width: size,
      height: size,
      child: show,
    );
  }
}
