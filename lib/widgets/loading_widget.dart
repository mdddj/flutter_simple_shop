part of 'index.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: context.kBodyHeight,
      width: context.screenWidth,
      child: const Center(
        child: MyLoading(),
      ),
    );
  }
}

class MyLoading extends StatelessWidget {
  const MyLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return LoadingAnimationWidget.flickr(leftDotColor: Colors.red, rightDotColor: Colors.blue, size: 38);
  }
}

class MyCustomLoadingWidget extends StatelessWidget {
  final String msg;

  const MyCustomLoadingWidget(this.msg, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(padding: const EdgeInsets.only(top: 12, bottom: 12), alignment: Alignment.center, child: const MyLoading());
  }
}
