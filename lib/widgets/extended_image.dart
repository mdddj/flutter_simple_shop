part of 'index.dart';

// 图像扩展组件
class ExtendedImageWidget extends StatelessWidget {
  final String src;
  final double height;
  final double width;
  final BorderRadius radius;
  final BoxFit fit;
  final bool knowSize;

  const ExtendedImageWidget({required this.src, required this.height, required this.width, this.radius = BorderRadius.zero, this.fit = BoxFit.fill, this.knowSize = true, super.key});

  @override
  Widget build(BuildContext context) {
    return buildExtendedImage(w: width, h: height);
  }

  Widget buildExtendedImage({double? w, double? h}) {
    Widget image = Stack(
      children: <Widget>[
        ExtendedImage.network(
          MImageUtils.magesProcessor(src),
          fit: fit,
          width: width,
          height: height,
          borderRadius: radius,
          shape: BoxShape.rectangle,
          clearMemoryCacheWhenDispose: true,
          cache: true,
          enableLoadState: true,
          loadStateChanged: loadingState,
        )
      ],
    );

    return image;
  }
}

/// 简单的图片
/// 需要直系父亲组件声明宽高
class SimpleImage extends StatelessWidget {
  final String url;
  final BorderRadius? radius;

  const SimpleImage({super.key, required this.url, this.radius});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: radius ?? BorderRadius.circular(8),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          bottom: 0,
          child: GestureDetector(
            onLongPress: () {
              //下载图片
              url.downloadImage(checkPermission: true, isAsset: false);
            },
            child: ExtendedImage.network(
              MImageUtils.magesProcessor(url),
              width: double.infinity,
              height: double.infinity,
              loadStateChanged: loadingState,
              cache: true,
              fit: BoxFit.cover,
              shape: BoxShape.rectangle,
              borderRadius: radius ?? BorderRadius.circular(8),
            ),
          ),
        ),
      ],
    );
  }
}
