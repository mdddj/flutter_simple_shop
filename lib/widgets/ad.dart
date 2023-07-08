part of widgets;

class AdTag extends StatelessWidget {
  const AdTag({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 2,vertical: 1),
      decoration: BoxDecoration(
        color: context.colorScheme.primaryContainer
      ),
      child: Text('AD',style:context.textTheme.labelSmall?.copyWith(
        color: context.colorScheme.primary
      )),
    );
  }
}
