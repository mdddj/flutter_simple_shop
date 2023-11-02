part of '../../index.dart';

///设置用户头像
class UpdateUserAvatarWidget extends ConsumerStatefulWidget {
  const UpdateUserAvatarWidget({super.key});

  @override
  ConsumerState<UpdateUserAvatarWidget> createState() => _UpdateUserAvatarWidgetState();
}

class _UpdateUserAvatarWidgetState extends ConsumerState<UpdateUserAvatarWidget> {
  dio.MultipartFile? file;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 37),
          decoration: BoxDecoration(color: context.theme.dialogBackgroundColor),
          child: Column(
            children: [
              Text(
                '设置你的头像',
                style: context.textTheme.titleMedium,
              ),
              const SizedBox(height: 22),
              SizedBox(
                width: 100,
                height: 100,
                child: const CircleAvatar(
                  child: Icon(Icons.image),
                ).click(() async {
                  final result = await context.getMultiparFile;
                  setState(() {
                    file = result;
                  });
                }),
              ),
              const SizedBox(
                height: 32,
              ),
              FilledButton(
                  onPressed: file != null
                      ? () async {
                          final nav = context.nav;
                          final data = dio.FormData.fromMap({"file": file});
                          final result = await getIt.get<MyUpdateUserAvatarApi>().request(R(data: data));
                          nav.pop(); //关掉弹窗
                          result.simpleToast(ifOk: () {
                            ///更新头像
                            final fileInfo = FileInfo.fromJson(result.getMap("data"));
                            ref.read(userRiverpod.notifier).updateUser((oldModel) => oldModel.copyWith(picture: fileInfo.url));
                          });
                        }
                      : null,
                  child: const Text('上传'))
            ],
          ),
        ),
      ),
    );
  }
}
