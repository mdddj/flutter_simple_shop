import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety_flutter3/flutter_swiper_null_safety_flutter3.dart';

import '../../widgets/index.dart';

class SwiperWidget extends StatelessWidget {
  final String images;
  const SwiperWidget({required this.images, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> imgArr;
    if (images != '') {
      imgArr = images.split(',');
      return Stack(
        children: <Widget>[
          SizedBox(
            width: context.screenWidth,
            height: context.screenWidth,
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return ExtendedImageWidget(
                  height: 1440,
                  width: 1440,
                  fit: BoxFit.cover,
                  src: imgArr[index],
                );
              },
              itemCount: imgArr.length,
              pagination: const SwiperPagination(),
            ),
          ),

          // 返回按钮
          Positioned(
              top: 20,
              left: 20,
              child: ClipOval(
                child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.black26.withOpacity(0.8),
                    ),
                    child: Center(
                        child: IconButton(
                            icon: const Icon(
                              Icons.chevron_left,
                              color: Colors.white,
                              size: 40,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            }))),
              ))
        ],
      );
    }
    return Container();
  }
}
