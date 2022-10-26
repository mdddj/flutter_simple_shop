import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

///头像小部件
class DefaultAvatarWidget extends StatelessWidget {
  final String url; //头像URL
  final double size;
  const DefaultAvatarWidget(this.url,{Key? key,this.size = 40}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtendedImage.network(url,shape: BoxShape.circle,width:size ,height: size,);
  }
}
