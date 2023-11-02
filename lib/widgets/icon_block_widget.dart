part of 'index.dart';

class IconBlockWidget extends StatelessWidget {
  final String? desc;

  const IconBlockWidget({this.desc, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 30),
      decoration: const BoxDecoration(color: Color.fromRGBO(247, 248, 255, 1.0), borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Stack(
        children: <Widget>[
          // 图标
          Positioned(
            right: -40,
            top: -25,
            child: Image.asset('assets/icons/dagou.png'),
          ),

          // 内容区
          Container(
            padding: const EdgeInsets.all(18),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/icons/tuijian.png',
                      width: 16,
                      height: 16,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 4.0),
                      child: const Text(
                        '推荐理由',
                        style: TextStyle(fontWeight: FontWeight.w700, fontStyle: FontStyle.italic),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    desc!,
                    style: const TextStyle(color: Colors.black38),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
