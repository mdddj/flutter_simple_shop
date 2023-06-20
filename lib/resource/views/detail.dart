part of resource;

class ResourceDetailPage extends StatefulWidget {
  final int resourceId;
  const ResourceDetailPage({super.key, required this.resourceId});

  @override
  State<ResourceDetailPage> createState() => _ResourceDetailPageState();
}

class _ResourceDetailPageState extends State<ResourceDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("详情"),
      ),
    );
  }
}
