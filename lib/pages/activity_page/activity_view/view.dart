// Flutter imports:
import 'package:dataoke_sdk/dataoke_sdk.dart';
import 'package:dataoke_sdk/dd_dataoke_sdk.dart';
import 'package:dataoke_sdk/dd_taoke_sdk.dart';
import 'package:dataoke_sdk/model/product.dart';
import 'package:dataoke_sdk/params/activity_link_param.dart';
import 'package:demo1/common/utils.dart';
import 'package:demo1/widgets/simple_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:get/get.dart';
import 'package:loading_more_list/loading_more_list.dart';

// Project imports:
import 'logic.dart';

class ActivityViewPage extends StatefulWidget {
  const ActivityViewPage({required this.id, required this.title, Key? key})
      : super(key: key);

  final String title;
  final String id;

  @override
  _ActivityViewPageState createState() => _ActivityViewPageState();
}

class _ActivityViewPageState extends State<ActivityViewPage> {
  final ActivityViewLogic logic = Get.put(ActivityViewLogic());

  List<Product> _products = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async {
   final products = await DdTaokeSdk.instance.getTopicProducts(widget.id, 50, 1);
   if(mounted){
     setState(() {
       _products = products;
     });
   }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(title: widget.title),
      body: EasyRefresh.custom(slivers: [
        SliverPadding(
            padding: const EdgeInsets.all(12),
            sliver: SliverWaterfallFlow.count(crossAxisCount: 2,mainAxisSpacing: 12,crossAxisSpacing: 12,children: _products.map((e) => utils.widgetUtils.renderProductCard(e)).toList(),))
      ]),
    );
  }

  @override
  void dispose() {
    Get.delete<ActivityViewLogic>();
    super.dispose();
  }
}
