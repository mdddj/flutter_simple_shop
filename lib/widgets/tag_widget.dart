part of 'index.dart';

class TagWidget extends StatelessWidget {
  final String? title;
  final Color? bg;
  final Color? textColor;
  final bool? noBorder;

  const TagWidget({this.title, this.bg, this.textColor, this.noBorder, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(1.0),
      margin: const EdgeInsets.all(2.0),
      decoration:
          BoxDecoration(color: bg ?? Colors.white, border: !noBorder! ? Border.all(width: 1.0, color: textColor ?? Colors.black26) : null, borderRadius: const BorderRadius.all(Radius.circular(3))),
      child: Text(title!, style: TextStyle(color: textColor ?? Colors.black26), maxLines: 1, overflow: TextOverflow.ellipsis),
    );
  }
}

class TagWidget2 extends StatelessWidget {
  final String? tag;

  const TagWidget2({super.key, this.tag});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(12)), color: Colors.grey[100]),
      child: Text(
        tag!,
        style: const TextStyle(fontSize: 12),
      ),
    );
  }
}
