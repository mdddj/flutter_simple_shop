part of util;

extension ImageEx on BuildContext {
  Future<MultipartFile?> get getMultiparFile => getIt.get<MImageUtils>().getDioFormData(this);
}

class MImageUtils {
//  处理淘宝图片不带https头部问题
  static String magesProcessor(String url) {
    return url.contains('https:') || url.contains('http:') ? url : 'https:$url';
  }

  ///单个
  Future<MultipartFile?> getDioFormData(BuildContext context) async {
    final image = await showModalBottomSheet<XFile?>(
        context: context,
        builder: (_) {
          return const _SelectImage();
        });
    if (image != null) {
      MultipartFile file = await MultipartFile.fromFile(image.path);
      return file;
    }
    return null;
  }
}

class _SelectImage extends StatelessWidget {
  const _SelectImage();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            title: const Text("相册选择"),
            onTap: () async {
              final nav = context.nav;
              final result = await ImagePicker().pickImage(
                source: ImageSource.gallery,
              );
              if (result != null) {
                nav.pop(result);
              }
            },
          ),
          ListTile(
            title: const Text('拍摄'),
            onTap: () async {
              if (Platform.isMacOS) {
                toast('macos暂不支持拍摄上传');
                return;
              }
              final nav = context.nav;
              final result = await ImagePicker().pickImage(source: ImageSource.camera);
              if (result != null) {
                nav.pop(result);
              }
            },
          )
        ],
      ),
    );
  }
}
