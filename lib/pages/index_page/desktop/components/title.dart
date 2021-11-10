// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../../../constant/style.dart';

class AppTitle extends StatelessWidget {
  final String text;
  const AppTitle({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Text(text,style: Get.textTheme.headline6!.copyWith(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 15
      ),),
    );
  }
}
