// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/svg.dart';

// Project imports:
import '../../../common/utils.dart';

class SvgTitle extends StatelessWidget {
  final String? svgPath;
  final String? title;
  final VoidCallback? onTap;

  const SvgTitle({this.title, this.svgPath, this.onTap,Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              svgPath!,
              width: 25,
              height: 25,
              color: Colors.black,
            ),
            utils.widgetUtils.marginTop(height: 5),
            Text(
              title!,
              style: const TextStyle(fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
