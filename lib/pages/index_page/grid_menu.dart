part of '../index.dart';

/// 2020年11月17日 22:36:07
/// 首页的网格菜单
/// v2.0
class IndexGridViewMenu extends StatefulWidget {
  final IndexGridMenuItemModel model;

  const IndexGridViewMenu({super.key, required this.model});

  @override
  State<IndexGridViewMenu> createState() => _IndexGridViewMenuState();
}

class _IndexGridViewMenuState extends State<IndexGridViewMenu> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        switch (widget.model.clickType) {
          case IndexGridMenuItemModelClickModel.innerView:
            widget.model.onTap?.call();
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
                widget.model.iconUrl,
                width: constraints.maxWidth,
                height: constraints.maxWidth,
              )),
              Text(widget.model.title, style: const TextStyle(fontSize: 12))
            ],
          );
        },
      ),
    );
  }
}
