import 'package:dataoke_sdk/dataoke_sdk.dart';
import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';

import '../../../widgets/index.dart';

//发布动态页面
class AddDynamicPage extends StatefulWidget {
  const AddDynamicPage({super.key});

  @override
  State<AddDynamicPage> createState() => _AddDynamicPageState();
}

class _AddDynamicPageState extends State<AddDynamicPage> {
  final TextEditingController _textEditingController = TextEditingController();
  final PictureSelectionController _pictureSelectionController = PictureSelectionController();
  final List<ResCategory> _list = [];
  ResCategory? _selectCategory;

  @override
  void initState() {
    super.initState();

    /// 获取分类
    Future.microtask(getCategorys);
  }

  /// 加载所有的频道
  Future<void> getCategorys() async {
    // final api = ResourceCategoryListAllApi();
    // final result = await api.request();
    // result?.printDataJson();
    // if (result.requestIsSuccess) {
    //   final list = result!.dataCovertToList<ResCategory>((originMap) => ResCategory.fromMap(originMap as Map<String, dynamic>));
    //   _list = list;
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: SimpleAppBar(
          title: '发布动态',
          actions: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('发布'),
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            //编写内容区域
            Container(
              margin: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
              ),
              child: TextField(controller: _textEditingController, minLines: 3, maxLines: 6),
            ),

            //选择分类
            ListTile(
              title: Text(_selectCategory == null ? '选择分类' : _selectCategory!.name),
              onTap: () async {
                final select = await context.navToWidget<ResCategory?>(
                    to: CategoryListSelect(
                  list: _list,
                ));

                _selectCategory = select;
                setState(() {});
              },
            ),

            //  选择图片组件
            PictureSelection(
              controller: _pictureSelectionController,
            )
          ],
        )));
  }
}

//分类选择的小部件
class CategoryListSelect extends StatelessWidget {
  final List<ResCategory> list;

  const CategoryListSelect({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(title: '选择分类'),
      body: ListView.builder(
        itemBuilder: (_, index) {
          final item = list[index];
          return ListTile(
            title: Text(item.name),
            onTap: () {
              Navigator.pop(context, item);
            },
          );
        },
        itemCount: list.length,
      ),
    );
  }
}
