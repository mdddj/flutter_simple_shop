// Flutter imports:
import 'package:flutter/material.dart';

BoxDecoration box = const BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.all(Radius.circular(5)),
    boxShadow: [
      BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.1),
          offset: Offset(1.0, 2.0), //阴影xy轴偏移量
          blurRadius: 5.0, //阴影模糊程度
          spreadRadius: -1 //阴影扩散程度
      )
    ]);
