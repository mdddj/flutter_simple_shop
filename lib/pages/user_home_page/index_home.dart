// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// Package imports:
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../common/utils.dart';
import '../../provider/riverpod/user_riverpod.dart';
import '../../widgets/wrap.dart';
// Project imports:
import '../blog/write_blog/view.dart';
import '../index_page/new/component/gridmenu/menu_item.dart';
import '../index_page/new/component/gridmenu/model.dart';
import 'header/appbar.dart';
import 'header/index.dart';
import 'order/index.dart';
import 'pages/new_version_page.dart';

/// 用户主页布局
class UserIndexHome extends StatefulWidget {
  const UserIndexHome({Key? key}) : super(key: key);

  @override
  _IndexHomeState createState() => _IndexHomeState();
}

class _IndexHomeState extends State<UserIndexHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const UserHomeAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildHeaderWidget(),
            utils.widgetUtils.marginTop(),
            const OrderIndex(),
            utils.widgetUtils.marginTop(),
            Consumer(
              builder: (BuildContext context, T Function<T>(ProviderBase<Object?, T>) watch, Widget? child) {
                final hasAdminAuth = watch(userModel).hasAdminAuthority();
                if (!hasAdminAuth) return Container();
                return MyWrap(
                  title: '管理员功能',
                  children: [
                    GridMenuItem(
                        item: GridMenuModel(
                            title: '新版本',
                            image: 'assets/svg/new_version.svg',
                            onTap: () {
                              utils.widgetUtils.to(const NewVersionPage());
                            },
                            isAssets: true)),
                    GridMenuItem(
                        item: GridMenuModel(
                            title: '发布博客',
                            image: '',
                            onTap: () {
                              utils.widgetUtils.to(const WriteBlogPage());
                            },
                            isAssets: true,
                            icon: const CircleAvatar(child: FaIcon(FontAwesomeIcons.edit))))
                  ],
                );
              },
            )
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(
      //     Icons.edit,
      //     color: Colors.white,
      //     size: 30,
      //   ),
      //   onPressed: () {
      //     Get.dialog(AlertDialog(
      //       contentPadding: EdgeInsets.zero,
      //       content: SingleChildScrollView(
      //         child: Column(
      //           children: [
      //             ListTile(
      //               title: Text('发布博客'),
      //               leading: Icon(Icons.insert_drive_file_outlined),
      //               onTap: (){
      //                 Get.back();
      //                 NavigatorUtil.goetoWhitePage(context);
      //               },
      //             ),
      //             ListTile(
      //               title: Text('发布动态'),
      //               leading: Icon(Icons.app_registration),
      //               onTap: (){
      //
      //               },
      //             ),
      //           ],
      //         ),
      //       ),
      //     ));
      //   },
      //   backgroundColor: Colors.pinkAccent,
      // ),
    );
  }

  Widget _buildHeaderWidget() {
    return const HeaderIndex();
  }
}
