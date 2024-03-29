part of 'index.dart';

class TitleWidget extends StatelessWidget {
  final String? title; //  文本值

  const TitleWidget({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      textAlign: TextAlign.left,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
