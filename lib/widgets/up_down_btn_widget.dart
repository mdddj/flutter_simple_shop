part of widgets;

class UpDownBtnWidget extends StatelessWidget {
  final bool? isCur;
  final String? upText;
  final String? downText;

  const UpDownBtnWidget({this.isCur, this.downText, this.upText, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCur!
            ? const Color.fromRGBO(254, 62, 59, 1.0)
            : const Color.fromRGBO(248, 248, 248, 1.0),
        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.only(right: 10.0, top: 8, bottom: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(upText!,
              style: TextStyle(
                  color: isCur! ? Colors.white : Colors.black38, fontSize: 12)),
          Text(downText!,
              style: TextStyle(
                  color: isCur! ? Colors.white : Colors.black38, fontSize: 12))
        ],
      ),
    );
  }
}
