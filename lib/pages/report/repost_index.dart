part of pages;

///举报页面
class ReportPage extends StatefulWidget {
  final Resource? resource;
  const ReportPage({super.key, this.resource});

  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  final textController = TextEditingController();
  Resource? get resource => widget.resource;
  bool showBanner = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("举报"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            if(showBanner)
             MaterialBanner(content: const Text("多次恶意举报可能会被系统封号"), actions: [
              TextButton(onPressed: (){
                setState(() {
                  showBanner = false;
                });
              }, child: const Text("我知道了"))
            ]),
            const SizedBox(height: 12),
            TextField(
              controller: textController,
              maxLines: 10,
              minLines: 5,
              decoration: const InputDecoration(
                hintText: "输入举报内容",
              ),
            ),
            if(resource!=null)
              ListTile(
                title: Text("举报动态:${resource!.content}"),
                subtitle: Text("用户:${resource!.user.nickName}"),
              ).bg(context.cardColor)
          ],
        ),
      ),
    );
  }
}
