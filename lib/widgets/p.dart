part of 'index.dart';

class P extends StatelessWidget {
  const P({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.all(50.0),
        child: Center(
          child: RichText(
            text: TextSpan(children: [
              WidgetSpan(
                child: Image.network(
                  'https://www.baidu.com/img/PCtm_d9c8750bed0b3c7d089fa7d55720d6cf.png',
                  width: 30.0,
                  height: 30.0,
                ),
              ),
              const TextSpan(
                text: '乔布斯就曾经说过：创造力就是把不同的事物融合在一起的能力。很多被公认创造力很强的人，就是注意到了一些别人都没发现的新组合。比如，古登堡发明的印刷机，就是把葡萄榨汁机和硬币冲压器，这两种看起来完全没有关联的机器，融合在了一起。',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
