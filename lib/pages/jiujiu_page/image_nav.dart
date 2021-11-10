// Flutter imports:
// Package imports:
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class ImageNav extends StatelessWidget {
  final Text? title;
  final Text? subTitle;
  final String? src;
  final dynamic onTap;
  final int? width;
  final int? height;

  const ImageNav({this.title, this.subTitle, this.src, this.onTap,this.width,this.height,Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width!.toDouble(),
      height: height!.toDouble(),
      child: InkWell(
        onTap: onTap,
        child: Stack(
          children: <Widget>[

            // 图片
            ExtendedImage.network(
              src!,
              fit: BoxFit.cover,
              cache: true,
              width: width!.toDouble(),
              height: height!.toDouble(),
            ),

            Positioned(
              left: 5,
              top: 5,
              child: title!,
            ),
            Positioned(
              left: 5,
              top: 25,
              child: subTitle!,
            ),
          ],
        ),
      ),
    );
  }
}
