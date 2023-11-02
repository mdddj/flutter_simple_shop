part of '../../index.dart';

class ActivityViewPage extends StatefulWidget {
  const ActivityViewPage({required this.id, required this.title, super.key});

  final String title;
  final String id;

  @override
  ActivityViewPageState createState() => ActivityViewPageState();
}

class ActivityViewPageState extends State<ActivityViewPage> {
  List<ProductModel> _products = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async {
    final products = await DdTaokeSdk.instance.getTopicProducts(widget.id, 50, 1, requestParamsBuilder: (RequestParams requestParams) {
      return requestParams;
    });
    if (mounted) {
      setState(() {
        _products = products;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(title: widget.title),
      body: MyLoadingMoreCustomScrollView(slivers: [
        SliverPadding(
            padding: const EdgeInsets.all(12),
            sliver: SliverWaterfallFlow.count(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              children: _products.map((e) => utils.widgetUtils.renderProductCard(e)).toList(),
            ))
      ]),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
