part of '../../../index.dart';

class AppTitle extends StatelessWidget {
  final String text;

  const AppTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Text(
        text,
        style: context.textTheme.titleLarge?.copyWith(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
      ),
    );
  }
}
