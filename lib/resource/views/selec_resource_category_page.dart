part of '../view.dart';

///选择群组分类页面
class SelectResourceCategoryPage extends StatefulWidget {
  const SelectResourceCategoryPage({super.key});

  @override
  State<SelectResourceCategoryPage> createState() => _SelectResourceCategoryPageState();
}

class _SelectResourceCategoryPageState extends State<SelectResourceCategoryPage> {
  List<ResourceCategory> _list = [];
  bool _loading = true;

  //加载列表
  Future<void> _fetchList() async {
    try {
      setState(() {
        _loading = true;
      });
      final result = await MyResourceCategoryAllApi().request(const R(showDefaultLoading: false));
      _list = result;
      _loading = false;
      setState(() {});
    } catch (e) {
      _loading = false;
      toast(e.toString());
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    Future.microtask(_fetchList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('群组分类'),
        actions: [const CupertinoActivityIndicator().marginOnly(right: 12).visible(_loading)],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: context.paddingBottom, top: 12),
        child: Column(children: _list.map(_renderItem).toList()),
      ),
    );
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  Widget _renderItem(ResourceCategory e) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        title: Row(
          children: [
            Text(e.name).expanded,
            MiniTag(
              title: e.type,
            ).marginOnly(left: 4)
          ],
        ),
        subtitle: e.description.isEmpty
            ? null
            : Text(
                e.description,
                style: context.textTheme.labelMedium?.copyWith(color: context.colorScheme.secondary),
              ),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {
          Navigator.pop(context, e);
        },
      ),
    );
  }
}
