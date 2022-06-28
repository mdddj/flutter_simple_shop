// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import './common/touch_callback.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  SearchState createState() => SearchState();
}

class SearchState extends State<Search> {
  //定义焦点节点
  FocusNode focusNode = FocusNode();

  //请求获取焦点
  FocusNode _requestFocus() {
    FocusScope.of(context).requestFocus(focusNode);
    return focusNode;
  }

  //返回一个文本组件
  Widget _getText(String text) {
    return TouchCallBack(
      isfeed: false,
      onParessed: () {},
      child: Text(
        text,
        style: const TextStyle(fontSize: 14.0, color: Color(0xff1aad19)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //顶部留一定距离
        margin: const EdgeInsets.only(top: 25.0),
        child: Column(
          //水平方向居中
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //顶部导航栏包括返回按钮,搜索框及麦克风按钮
            Stack(
              children: <Widget>[
                //使用触摸回调组件
                TouchCallBack(
                  isfeed: false,
                  onParessed: () {
                    //使用导航器返回上一个页面
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 45.0,
                    margin: const EdgeInsets.only(left: 12.0, right: 10.0),
                    //添加返回按钮
                    child: const Icon(
                      Icons.chevron_left,
                      color: Colors.black,
                    ),
                  ),
                ),
                //搜索框容器
                Container(
                  alignment: Alignment.centerLeft,
                  height: 45.0,
                  margin: const EdgeInsets.only(left: 50.0, right: 10.0),
                  //搜索框底部边框
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 1.0, color: Colors.green))),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        //输入框
                        child: TextField(
                          //请求获取焦点
                          focusNode: _requestFocus(),
                          style: const TextStyle(color: Colors.black, fontSize: 16.0),
                          onChanged: (String text) {},
                          decoration: const InputDecoration(
                              hintText: '搜索', border: InputBorder.none),
                        ),
                      ),
                      //添加麦克风图标
                      Container(
                        margin: const EdgeInsets.only(right: 10.0),
                        child: const Icon(
                          Icons.mic,
                          color: Color(0xffaaaaaa),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Container(
              margin:const EdgeInsets.only(top: 50.0),
              child: const Text(
                '常用搜索',
                style: TextStyle(fontSize: 16.0,color: Color(0xffb5b5b5)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                //对其方式采用均匀对其
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                //第一行搜索项
                children: <Widget>[
                  _getText('朋友'),
                  _getText('聊天'),
                  _getText('群组'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                //对其方式采用均匀对其
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                //第一行搜索项
                children: <Widget>[
                  _getText('Flutter'),
                  _getText('Dart'),
                  _getText('C++'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
