import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_more_list/loading_more_list.dart';
import 'package:provider/provider.dart';
import './left_widget.dart';
import './right_widget.dart';
import '../../constant/style.dart';
import '../../provider/riverpod/category_riverpod.dart';
import '../../widgets/edit_page_handle.dart';

class CategoryIndexPage extends StatefulWidget {
  const CategoryIndexPage({Key? key}) : super(key: key);

  @override
  CategoryIndexPageState createState() => CategoryIndexPageState();
}

class CategoryIndexPageState extends State<CategoryIndexPage> {
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          '分类',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(42),
          child: Container(
              margin: const EdgeInsets.only(bottom: 12, left: 12, right: 12),
              child: const Center(
                  child: CupertinoSearchTextField(
                    placeholder: '关键字搜索',
                    placeholderStyle: TextStyle(fontSize: 13, color: Colors.grey),
                  ))),
        ),
      ),
      body: EditePageHandle(
        child: Consumer<CategoryState>(
          builder: (BuildContext context, value, Widget? child) {
            final categorys = value.categorys;
            final current = value.current;
            if (categorys.isEmpty) {
              return const Text('没有数据');
            }
            return Container(
                margin: const EdgeInsets.only(top: 12),
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: context.screenHeight - kToolbarHeight - context.paddingTop,
                child: Row(
                  children: <Widget>[
                    //左侧
                    Container(
                      width: 80,
                      color: const Color.fromRGBO(248, 248, 248, 1.0),
                      child: ListView.builder(
                          itemCount: categorys.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () => context.read<CategoryState>().setCurrent(categorys[index]),
                              child: LeftWidgetItem(item: categorys[index], isCurrent: current.cid == categorys[index].cid),
                            );
                          }),
                    ),

                    //右侧
                    Expanded(
                      child: Container(
                          color: Colors.white,
                          child: WaterfallFlow.builder(
                            padding: const EdgeInsets.all(kDefaultPadding),
                            gridDelegate: const SliverWaterfallFlowDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 12, crossAxisSpacing: 20),
                            itemBuilder: (context, sIndex) {
                              return RightWidgetItme(category: current, item: current.subcategories![sIndex]);
                            },
                            itemCount: (current.subcategories ?? []).length,
                          )),
                    )
                  ],
                ));
          },
        ),
      ),
    );
  }
}
