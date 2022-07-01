// Flutter imports:
// Package imports:
import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

// Project imports:
import './pages/category_page/index_home.dart';
import './pages/index_page/index_home.dart';
import './pages/jiujiu_page/index_home.dart';
import './pages/user_home_page/index_home.dart';
import './personal/personal.dart';
import 'pages/dynamic_page/view.dart';
import 'pages/favorite_page/index_home.dart';
import 'pages/index_page/new/index.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  AppState createState() => AppState();
}

class AppState extends State<App> with AfterLayoutMixin {
  static ScrollController mController = ScrollController();
  static ScrollController jiujiuController = ScrollController(); // 9.9包邮页面滑动控制器

  bool showToTopBtn = false; //是否显示“返回到顶部”按钮

  var _currentIndex = 0; //当前选中页面索引

  IndexHome? indexHome; // 淘客首页

  CategoryIndexPage? categoryIndexPage; // 分类页面

  //我的页面
  Personal? me;

  //是否加载中
  bool isLoading = false;

  bool isShowAppBar = true;

  // 页面列表
  final List<Widget> _pages = [
    // const IndexHome(),
    // IndexHomeV2(),
    const IndexHomeNew(),
    JiujiuIndexHome(scrollController: jiujiuController),
    const CategoryIndexPage(),
    // FavoriteIndexHome(),
    const FavoriteIndexHome(),
    const UserIndexHome()
  ];

  Widget loadingWidget() {
    return const Center(
      child: SpinKitCircle(
        color: Colors.blue,
        size: 30.0,
      ),
    );
  }

  @override
  void initState() {
//监听滚动事件，打印滚动位置
    mController.addListener(() {
      if (mController.offset < 250 && showToTopBtn) {
        setState(() {
          showToTopBtn = false;
        });
      } else if (mController.offset >= 200 && showToTopBtn == false) {
        setState(() {
          showToTopBtn = true;
        });
      }
    });

    // 9.9滑动控制器操作
    jiujiuController.addListener(() {
      if (jiujiuController.offset < 250 && showToTopBtn) {
        setState(() {
          showToTopBtn = false;
        });
      } else if (jiujiuController.offset >= 200 && showToTopBtn == false) {
        setState(() {
          showToTopBtn = true;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const kNavIconSize = 23.0;
    return Scaffold(
      // 滚动到顶部按钮
      floatingActionButton: !showToTopBtn ||
              _currentIndex == 2 ||
              _currentIndex == 3 ||
              _currentIndex == 0 ||
              _currentIndex == 4
          ? null
          : FloatingActionButton(
              onPressed: () {
                //返回到顶部时执行动画
                if (_currentIndex == 0) {
                  mController.animateTo(.0,
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.ease);
                }
                if (_currentIndex == 1) {
                  jiujiuController.animateTo(.0,
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.ease);
                }
              },
              child: const Icon(Icons.arrow_upward, color: Colors.white)),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          //当前页面索引
          currentIndex: _currentIndex,
          //按下后设置当前页面索引
          onTap: ((index) {
            setState(() {
              _currentIndex = index;
            });
          }),
          items: [
            BottomNavigationBarItem(
                label: '首页',
                icon: _currentIndex == 0
                    ? Image.asset(
                        'assets/nav/home.png',
                        width: kNavIconSize,
                        height: kNavIconSize,
                      )
                    : Image.asset(
                        'assets/nav/home-n.png',
                        height: kNavIconSize,
                        width: kNavIconSize,
                      )),
            BottomNavigationBarItem(
                label: '9.9包邮',
                icon: _currentIndex == 1
                    ? Image.asset(
                        'assets/nav/jiujiu.png',
                        width: kNavIconSize,
                        height: kNavIconSize,
                      )
                    : Image.asset(
                        'assets/nav/jiujiu-n.png',
                        height: kNavIconSize,
                        width: kNavIconSize,
                      )),
            BottomNavigationBarItem(
                label: '分类',
                icon: _currentIndex == 2
                    ? Image.asset(
                        'assets/nav/fenlei.png',
                        width: kNavIconSize,
                        height: kNavIconSize,
                      )
                    : Image.asset(
                        'assets/nav/fenlei-n.png',
                        height: kNavIconSize,
                        width: kNavIconSize,
                      )),
            BottomNavigationBarItem(
                label: '动态',
                icon: _currentIndex == 3
                    ? Image.asset(
                        'assets/nav/shoucang.png',
                        width: kNavIconSize,
                        height: kNavIconSize,
                      )
                    : Image.asset(
                        'assets/nav/shoucang-n.png',
                        height: kNavIconSize,
                        width: kNavIconSize,
                      )),
            BottomNavigationBarItem(
                label: '我的',
                icon: _currentIndex == 4
                    ? Image.asset(
                        'assets/nav/my.png',
                        width: kNavIconSize,
                        height: kNavIconSize,
                      )
                    : Image.asset(
                        'assets/nav/my-n.png',
                        height: kNavIconSize,
                        width: kNavIconSize,
                      )),
          ]),
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    // if (GetPlatform.isWindows) {
    //   Get.dialog(const AlertDialog(
    //     title: Text('提示'),
    //     content: Text('windows版本:可以拖动窗口边缘拉伸到合适位置'),
    //   ));
    // }
  }
}
