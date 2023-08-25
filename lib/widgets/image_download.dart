part of widgets;

extension ImageDownloadWrapperEx on ImageView {
  Widget wrapper(String url) {
    return ImageDownloadWrapper(imageUrl: url, child: this);
  }
}

///图片下载器
class ImageDownloadWrapper extends StatelessWidget {
  final Widget child;
  final String imageUrl;

  const ImageDownloadWrapper(
      {super.key, required this.child, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return CupertinoContextMenu(actions: [
      CupertinoContextMenuAction(
        child: const Text('保存到本地'),
        onPressed: () async {
          final nav = context.nav;
          try {
            await imageUrl.downloadImage(
                isAsset: false, checkPermission: true, quality: 100);
            toast('已保存到相册');
          } catch (e) {
            toast('保存失败:$e');
          }
          nav.pop();
        },
      )
    ], child: child);
  }
}
