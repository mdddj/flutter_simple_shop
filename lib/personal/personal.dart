import 'package:flutter/material.dart';

import '../common/index.dart';

// 我的页面
class Personal extends StatelessWidget {
  const Personal({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: <Widget>[
          //头像部分实现
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            height: 80.0,
            child: TouchCallBack(
              onParessed: () {},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  //添加头像
                  Container(
                    margin: const EdgeInsets.only(left: 12.0, right: 15.0),
                    child: Image.asset(
                      'assets/images/ava.png',
                      width: 70.0,
                      height: 70.0,
                    ),
                  ),
                  //用户名和账号显示
                  const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '典典',
                          style: TextStyle(fontSize: 18.0, color: Color(0xFF353535)),
                        ),
                        Text(
                          '账号 liangdiandian',
                          style: TextStyle(fontSize: 14.0, color: Color(0xFFa9a9a9)),
                        )
                      ],
                    ),
                  ),
                  //二维码图片显示
                  Container(
                    margin: const EdgeInsets.only(left: 12.0, right: 15.0),
                    child: Image.asset(
                      'assets/images/ewm.png',
                      width: 24.0,
                      height: 24.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          //列表项,使用ImItem渲染
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: const ImItem(
              title: '好友动态',
              imagePath: '',
            ),
          )
        ],
      ),
    );
  }
}
