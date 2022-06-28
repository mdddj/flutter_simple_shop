// Flutter imports:
// Package imports:
import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';

// 自定义选择项目工具条
class CustomSelectToolbar extends StatefulWidget {
  final List<SelectMenu>? items;
  final int? select;
  final bool? hideSubTitle;

  const CustomSelectToolbar({this.items, this.select, this.hideSubTitle,Key? key}):super(key: key);

  @override
  CustomSelectToolbarState createState() => CustomSelectToolbarState();
}

class CustomSelectToolbarState extends State<CustomSelectToolbar>
    with AfterLayoutMixin<CustomSelectToolbar> {

  @override
  Widget build(BuildContext context) {
    var hide = widget.hideSubTitle;
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          child: getItemSize() > 4
              ? SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: widget.items!
                      .map((f) => _buildItemWidget(f, hide!, widget.select))
                      .toList(),
                ),
              )
              : Row(
                children: widget.items!
                    .map((f) => _buildItemWidget(f, hide!, widget.select))
                    .toList(),
              ),
        ),
      ],
    );
  }

  // 高亮选中项目
  Color _buildPrimaryColor(int index) {
    if (index == widget.select) {
      return Colors.redAccent;
    }
    return Colors.black;
  }

  Widget _buildItemWidget(
      SelectMenu selectMenu, bool hideSubTitle, int? select) {
    Widget widget = SizedBox(
      width: getItemWidgetWidth(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AnimatedPadding(
            duration: const Duration(milliseconds: 500),
            padding: EdgeInsets.only(top: hideSubTitle ? 0 : 0),
            child: Text(
              selectMenu.title!,
              style: TextStyle(
                  color: _buildPrimaryColor(getIndexNumber(selectMenu)),
                  fontSize: 15),
            ),
          ),
          AnimatedOpacity(
            duration: const Duration(milliseconds: 500),
            opacity: hideSubTitle ? 0.0 : 1.0,
            child: Visibility(
              visible: !hideSubTitle,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                    borderRadius: getIndexNumber(selectMenu) == select
                        ? const BorderRadius.all(Radius.circular(15.0))
                        : null,
                    color: getIndexNumber(selectMenu) == select
                        ? Colors.redAccent
                        : Colors.transparent),
                child: Text(
                  selectMenu.subTitle!,
                  style: TextStyle(
                      fontSize: 12,
                      color: getIndexNumber(selectMenu) == select
                          ? Colors.white
                          : Colors.grey),
                ),
              ),
            ),
          )
        ],
      ),
    );
    return Stack(
      children: [
        widget,
        Positioned(
          bottom: 0,
          left: 0,
          child: AnimatedOpacity(
            opacity: hideSubTitle ? 1 : 0,
            duration: const Duration(seconds: 1),
            child: Container(
                alignment: Alignment.center,
                width: getItemWidgetWidth(),
                child: Container(
                  width: 60,
                  height: 6,
                  decoration: BoxDecoration(
                    color:   getIndexNumber(selectMenu) == select ? Colors.redAccent : Colors.transparent,
                    borderRadius: const BorderRadius.all(Radius.circular(15.0))
                  ),
                ),
            ),
          ),
        )
      ],
    );
  }

  int getIndexNumber(SelectMenu selectMenu) {
    var index = 0;
    for (var i = 0; i <= widget.items!.length; i++) {
      var item = widget.items![i];
      if (item.subTitle == selectMenu.subTitle &&
          item.title == selectMenu.title) {
        index = i;
        break;
      }
    }
    return index;
  }

  int getItemSize() => widget.items!.length; // 获取item的长度

  // 计算每个item的宽度
  double getItemWidgetWidth() {
    var ww = MediaQuery.of(context).size.width - 50;
    if (widget.items!.isNotEmpty) {
      switch (getItemSize()) {
        case 1:
          return ww;
        case 2:
          return ww / 2;
        case 3:
          return ww / 3;
        case 4:
          return ww / 4;
        default:
          // 使用滑动组件
          return ww / 4;
      }
    }
    return 0;
  }

  @override
  void afterFirstLayout(BuildContext context) {}
}

class SelectMenu {
  String? title;
  String? subTitle;

  SelectMenu({this.title, this.subTitle});
}
