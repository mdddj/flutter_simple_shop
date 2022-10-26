import 'package:dd_js_util/dd_js_util.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:provider/provider.dart' hide FutureProvider;

import 'api/apis.dart';
import 'index.dart';

const kLogoSize = 90.0;

///初始化请求
final initFuture = FutureProvider.family<dynamic, BuildContext>((ref, context) async {
  try {
    final categoryModel = context.read<CategoryState>();
    final indexModel = context.read<IndexState>();
    await categoryModel.init();//加载超级分类数据
    await indexModel.fetch();//加载双列产品数据
    await KZheTaokeApiWithAppkeyGet.doRequest(ref);//加载折淘客的APP Key
  } on AppException catch (_) {
    rethrow;
  }
  return {};
});

///APP小部件
class InitBuildWidget extends ConsumerWidget {
  final Widget home;

  const InitBuildWidget({Key? key, required this.home}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(initFuture(context)).when(data: (v) => home, error: (e, s) => buildInitError(context, e), loading: InitLoadingWidget.new);
  }

  Widget buildInitError(BuildContext context, e) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      color: context.appbarBackgroundColor,
      alignment: Alignment.center,
      child: Text("启动失败:$e"),
    );
  }
}

///初始化启动小部件
class InitLoadingWidget extends StatelessWidget {
  const InitLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: context.paddingTop + 100,
            child: ExtendedImage.asset(
              'assets/images/logo.png',
              enableMemoryCache: true,
              width: kLogoSize,
              height: kLogoSize,
            ),
          ),
          Positioned(
            bottom: context.paddingBottom + 12,
            left: 0,
            right: 0,
            child: const Center(
              child: SizedBox(width: 30, height: 30, child: CircularProgressIndicator()),
            ),
          )
        ],
      ),
    );
  }
}
