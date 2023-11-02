part of '../../index.dart';

class IndexHomeBanner extends StatelessWidget {
  final info = 'A banner displays an important, succinct message, and provides actions for users to address. '
      'A user action is required for itto be dismissed.';

  const IndexHomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MaterialBanner(
          content: Text(
            info,
            style: const TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.purple,
          leading: const Icon(Icons.warning, color: Colors.yellow),
          padding: const EdgeInsetsDirectional.only(start: 16.0, top: 2.0, end: 2),
          leadingPadding: const EdgeInsetsDirectional.only(end: 16.0),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'I KNOW',
                style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold, fontSize: 14),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'I IGNORE',
                style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold, fontSize: 14),
              ),
            ),
          ],
        )
      ],
    );
  }
}
