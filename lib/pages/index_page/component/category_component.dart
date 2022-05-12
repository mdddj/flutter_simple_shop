// Flutter imports:
// Package imports:
import 'package:dataoke_sdk/model/category.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Project imports:
import '../../../constant/style.dart';
import '../../../provider/riverpod/category_riverpod.dart';
import 'category_item_layout.dart';
import 'category_notification_stream.dart';

/// 通用分类插件
class CategoryComponent extends StatefulWidget {
  final List<InsetCustomItem>? extendItems;
  final SelectWithItem? onSelect;
  final TextStyle? textStyle;
  final TextStyle? currentStyle;
  final CategoryController? controller;

  const CategoryComponent(
      {Key? key, this.extendItems, this.onSelect, this.textStyle, this.controller, this.currentStyle})
      : super(key: key);

  @override
  _CategoryComponentState createState() => _CategoryComponentState();
}

class _CategoryComponentState extends State<CategoryComponent> {
  int _current = 0;
  CategoryChildPosition? _categoryChildPosition;
  final ValueNotifier<CategoryChildPosition?> _valueNotifier = ValueNotifier<CategoryChildPosition?>(
      CategoryChildPosition(count: 0, position: <int, Offset>{}, size: <int, Size>{}));

  @override
  void initState() {
    super.initState();
    _bindController();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        _categoryChildPosition = CategoryChildPosition(count: 0, position: <int, Offset>{}, size: <int, Size>{});
      });
    });
  }

  void _changePosition(int? index, Offset offset, Size? size) {
    _categoryChildPosition!.position![index!] = offset;
    _categoryChildPosition!.size![index] = size!;
    _valueNotifier.value = _categoryChildPosition;
  }

  @override
  void didUpdateWidget(covariant CategoryComponent oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.controller != widget.controller) _bindController();
  }

  /// 绑定控制器
  void _bindController() {
    if (widget.controller != null) widget.controller!.bindState(this);
  }

  @override
  Widget build(BuildContext context) {
    final categorys = context.read<CategoryState>().categorys;
    var extendItemsLength = widget.extendItems == null ? 0 : widget.extendItems!.length;
    return Stack(
      children: [
        Container(
          alignment: Alignment.topCenter,
          height: kHomeCateTabHeight,
          margin: const EdgeInsets.only(bottom: 5),
          child: NotificationListener(
            onNotification: (dynamic notification){
              CategoryNotificationStreamUtil().notifiy(notification);
              return true;
            },
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  var insetCustomItem = _indexIsExtendWidget(index);
                  if (insetCustomItem != null) {
                    return GestureDetector(onTap: insetCustomItem.onTap, child: insetCustomItem.child);
                  } else {
                    final mainCategory = categorys[index - _getCountWhereInCategoryIndex(index)];
                    return GestureDetector(
                      onTap: () {
                        _onTap(mainCategory.cname, categorys);
                      },
                      child: CategoryItemDefaultLayout(
                        name: mainCategory.cname,
                        index: index,
                        textStyle: widget.textStyle,
                        current: _current,
                        onRendeEnd: _changePosition,
                      ),
                    );
                  }
                },
                itemCount: categorys.length + extendItemsLength,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
              ),
            ),
          ),
        ),
        _buildPoint()
      ],
    );
  }

  Widget _buildPoint() {
    final offset = _valueNotifier.value!.position![_current];
    final size = _valueNotifier.value!.size![_current];
    if(offset!=null&&size!=null) {
      final widgetWidth = size.width-12;
      return AnimatedPositioned(
          bottom: 0,
          left: offset.dx,
          duration: const Duration(milliseconds: 700),
          child: Container(
            width: widgetWidth,
            height: 1.5,
            decoration: BoxDecoration(
              color: Theme
                  .of(context)
                  .primaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(15)),
            ),
          ));
    }
    return Positioned(child: Container());
  }

  @override
  void dispose() {
    _valueNotifier.dispose();
    super.dispose();
  }

  /// 高亮选择项目
  void selectLable(int index) {
    setState(() {
      _current = index;
    });
  }

  /// 获取index前面有几个扩展的index
  int _getCountWhereInCategoryIndex(int index) {
    var count = 0;
    if (widget.extendItems != null && widget.extendItems!.isNotEmpty) {
      for (var item in widget.extendItems!) {
        if (item.index! < index) {
          count++;
        } else {
          break;
        }
      }
    }
    return count;
  }

  /// 菜单被点击事件
  /// 不包含扩展项目
  void _onTap(String? name, List<Category> categorys) {
    var _index = -1;
    Category? _item;

    for (var i = 0; i < categorys.length; i++) {
      if (categorys[i].cname == name) {
        _index = i;
        _item = categorys[i];
        break;
      }
    }
    if(_item!=null){
      widget.onSelect?.call(_index, _item);
    }

  }

  /// 判断下标是否需要插入自定义布局
  InsetCustomItem? _indexIsExtendWidget(int index) {
    InsetCustomItem? insetCustomItem;
    if (widget.extendItems != null) {
      for (var i = 0; i < widget.extendItems!.length; i++) {
        if (index == widget.extendItems![i].index) {
          insetCustomItem = widget.extendItems![i];
          break;
        }
      }
    }
    return insetCustomItem;
  }
}

class InsetCustomItem {
  /// 插入组件
  Widget? child;

  /// 点击事件
  VoidCallback? onTap;

  /// 插入位置
  int? index;

  InsetCustomItem({this.index, this.onTap, this.child});
}

/// 菜单项被选择
/// [index] 选择的下标
/// [item] 选择的菜单信息
typedef SelectWithItem = void Function(int index, Category item);

class CategoryController {
  late _CategoryComponentState _state;

  final int? current;

  CategoryController({this.current});

  void toIndex(int index) {
    _state.selectLable(index);
  }

  // 绑定状态
  void bindState(_CategoryComponentState _categoryComponentState) {
    _state = _categoryComponentState;
  }

  _CategoryComponentState get state => _state;

}

class CategoryChildPosition {
  int? count;
  Map<int, Offset>? position;
  Map<int, Size>? size;

  CategoryChildPosition({this.count, this.position, this.size});
}
