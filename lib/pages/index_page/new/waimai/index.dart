part of pages;

///
/// @Author 梁典典
/// @Github 开源地址 https://github.com/mdddj/flutter_simple_shop
/// @Description 功能描述 领取外卖活动首页
/// @Date 创建时间 2021年7月2日 11:46:22
///
class WaimaiIndex extends StatelessWidget {
  const WaimaiIndex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(
        title: '外卖红包',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            renderWaimaihongbao(context),
            renderWaimaiShangChao(context)
          ],
        ),
      ),
    );
  }

  /// 商超红包
  Widget renderWaimaiShangChao(BuildContext context) {
    return GestureDetector(
        onTap: () => navTo('2', context),
        child: renderImage('assets/images/waimai2.png'));
  }

  /// 普通外卖红包
  Widget renderWaimaihongbao(BuildContext context) {
    return GestureDetector(
        onTap: () => navTo('1', context),
        child: renderImage('assets/images/waimai1.png'));
  }

  void navTo(String type, BuildContext context) {
    context.navToWidget(to: WaimaiDetail(type: type));
  }

  /// 渲染图片
  Widget renderImage(String image) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: AspectRatio(
        aspectRatio: 1.75,
        child: ExtendedImage.asset(
          image,
          loadStateChanged: loadingState,
        ),
      ),
    );
  }
}
