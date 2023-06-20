part of pages;

class SearchProduct extends StatelessWidget {
  const SearchProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('搜索产品'),
      ),
      body: SizedBox(
        height: context.kBodyHeight,
        child: const Column(
          children: [
            SizedBox(
              height: kToolbarHeight,
              child: CupertinoSearchTextField(),
            ),
            Expanded(child: ProductSearchMini(keyWorlds: ''))
          ],
        ),
      ),
    );
  }
}
