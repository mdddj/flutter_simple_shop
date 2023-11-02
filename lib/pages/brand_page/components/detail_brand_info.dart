part of '../../index.dart';

/// 品牌信息卡片
class BrandDetailView extends StatelessWidget {
  final BrandDetail? brandDetailModel;

  const BrandDetailView({super.key, this.brandDetailModel});

  @override
  Widget build(BuildContext context) {
    if (brandDetailModel == null) {
      return const SizedBox();
    }
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("关于品牌"),
            const SizedBox(height: 12),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  CircleAvatar(child: _biuldLogo(context)),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(brandDetailModel!.brandName!, style: context.textTheme.titleLarge),
                  Text(brandDetailModel!.brandDesc!).defaultPadding12
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _biuldLogo(BuildContext context) {
    return ImageView(
        image: MyImage.network(url: MImageUtils.magesProcessor(brandDetailModel!.brandLogo!), params: ImageParams(size: 50, shape: BoxShape.rectangle, borderRadius: BorderRadius.circular(25))));
  }

  void showInfo(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('关于品牌'),
            content: Text(brandDetailModel!.brandDesc!),
          );
        });
  }
}
