import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: SvgPicture.asset(
        'assets/svg/diandian.svg',
        width: 34,
        height: 34,
        colorFilter: ColorFilter.mode(context.iconColor ?? Colors.red, BlendMode.srcIn),
      ),
    );
  }
}
