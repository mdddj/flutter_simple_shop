import 'package:dd_js_util/dd_js_util.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

const kLogoSize = 90.0;

///初始化启动小部件
class InitLoadingWidget extends StatelessWidget {
  const InitLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (c, x) => Container(
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: c.paddingTop + 100,
              child: ExtendedImage.asset(
                'assets/images/logo.png',
                enableMemoryCache: true,
                width: kLogoSize,
                height: kLogoSize,
              ),
            ),
            Positioned(
              bottom: c.paddingBottom + 12,
              left: 0,
              right: 0,
              child: const Center(
                child: SizedBox(width: 30, height: 30, child: CircularProgressIndicator()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
