part of pages;

/// 2020年11月17日 22:36:07
/// 首页的网格菜单
/// v2.0
class IndexGridViewMenu extends StatelessWidget {
  final IndexGridMenuItemModel model;

  const IndexGridViewMenu({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        switch (model.clickType) {
          case IndexGridMenuItemModelClickModel.innerView:
            model.onTap?.call();
            break;
          default:
            break;
        }
      },
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Column(
            children: [
              Expanded(
                  child: ExtendedImage.network(
                model.iconUrl,
                width: constraints.maxWidth,
                height: constraints.maxWidth,
              )),
              Text(model.title, style: const TextStyle(fontSize: 12))
            ],
          );
        },
      ),
    );
  }
}
