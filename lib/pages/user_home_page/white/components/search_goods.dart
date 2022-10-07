import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../widgets/product_search_mini.dart';

class SearchProduct extends StatelessWidget {
  const SearchProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('搜索产品'),),
      body: SizedBox(
        height: context.kBodyHeight,
        child: Column(
          children: const [
            SizedBox(
              height: kToolbarHeight,
              child: CupertinoSearchTextField(),
            ),
            Expanded(child: ProductSearchMini(keyWorlds: ''))
          ],
        ),
      ),
    );
  }
}
