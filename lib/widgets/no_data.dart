part of widgets;

class NoDataWidget extends StatelessWidget {
  final String? title;
  const NoDataWidget({this.title, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/images/no_data.png', width: 250),
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: Text(title ?? '商品已下架或者删除'),
          )
        ],
      ),
    );
  }
}
