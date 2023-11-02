part of 'index.dart';

class AdTag extends StatelessWidget {
  const AdTag({super.key});

  @override
  Widget build(BuildContext context) {
    return const MiniTag(
      title: 'AD',
    );
  }
}

class MiniTag extends StatelessWidget {
  final String title;

  const MiniTag({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 1),
      decoration: BoxDecoration(color: context.colorScheme.primaryContainer),
      child: Text(title, style: context.textTheme.labelSmall?.copyWith(color: context.colorScheme.primary)),
    );
  }
}
