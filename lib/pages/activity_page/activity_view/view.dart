import 'package:dataoke_sdk/dataoke_sdk.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:loading_more_list/loading_more_list.dart';

import '../../../common/utils.dart';
import '../../../widgets/simple_appbar.dart';

class ActivityViewPage extends StatefulWidget {
  const ActivityViewPage({required this.id, required this.title, Key? key})
      : super(key: key);

  final String title;
  final String id;

  @override
  ActivityViewPageState createState() => ActivityViewPageState();
}

class ActivityViewPageState extends State<ActivityViewPage> {

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
    super.dispose();
  }
}
