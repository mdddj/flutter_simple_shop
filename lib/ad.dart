part of index;

const kLogoSize = 90.0;

///初始化启动小部件
class InitLoadingWidget extends StatelessWidget {
  final String? errorMessage;
  final VoidCallback? retry;
  const InitLoadingWidget({Key? key, this.errorMessage, this.retry})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.kBodyHeight,
      color: context.backgroundColor,
      child: Column(
        children: [
          SizedBox(height: context.paddingTop + 100),
          ExtendedImage.asset(
            'assets/images/logo.png',
            enableMemoryCache: true,
            width: kLogoSize,
            height: kLogoSize,
          ),
          const Spacer(),
          Center(
            child: Column(
              children: [
                Container(
                    alignment: Alignment.center,
                    width: context.screenWidth,
                    height: 30,
                    child: errorMessage != null
                        ? Text(errorMessage!)
                        : const SizedBox(
                            width: 30,
                            height: 30,
                            child: CircularProgressIndicator(),
                          )),
                FilledButton(
                        onPressed: () {
                          retry?.call();
                        },
                        child: const Text("重试"))
                    .marginOnly(top: 12 + context.paddingBottom)
                    .visible(errorMessage != null),
                SizedBox(height: context.bottomPadding)
              ],
            ),
          )
        ],
      ),
    );
  }
}
