// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:provider/provider.dart';

// Project imports:
import '../../provider/nine_goods_provider.dart';
import '../../widgets/toast_postion.dart';

typedef HeaderMenuHanlde = void Function(int, int);

class HeaderMenu extends StatefulWidget {
  final HeaderMenuHanlde? onChangeCallBack;

  const HeaderMenu({this.onChangeCallBack,Key? key}): super(key: key);

  @override
  _HeaderMenuState createState() => _HeaderMenuState();
}

class _HeaderMenuState extends State<HeaderMenu> with SingleTickerProviderStateMixin {
  final tabs = ['精选', '居家百货', '美食', '服饰', '配饰', '美妆', '内衣', '母婴', '箱包', '数码配件', '文娱车品'];
  final ids = [-1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  int currentIndex = 0; // 当前选中id

  TabController? _tabController;

  bool ic = true; // 当前是否能点击

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: tabs.length);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<NineGoodsProvider>(
      builder: (context, nineGoodsProvider, _) => Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            // 菜单
            TabBar(
              onTap: ic
                  ? (index) async {
                      // 防止重复点击
                      _isClick(false);
                      widget.onChangeCallBack?.call(index, ids[index]);
                      _isClick(true);
                    }
                  : (d) {
                      Toast.toast(context, msg: '操作频繁', position: ToastPostion.bottom);
                    },
              controller: _tabController,
              isScrollable: true,
              labelColor: Colors.pinkAccent,
              labelStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              indicatorColor: Colors.pinkAccent,
              unselectedLabelColor: Colors.black,
              unselectedLabelStyle: const TextStyle(fontSize: 12),
              tabs: tabs.map((text) => Tab(text: text)).toList(),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

//  选项卡是否可以被点击
  void _isClick(bool isClick) {
    setState(() {
      ic = isClick;
    });
  }
}
