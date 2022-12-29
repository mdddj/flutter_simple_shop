import 'package:dataoke_sdk/model/category.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../index.dart';

extension StringExt on String {

  ///跳转到浏览器
  void urlLinkTo() {
    canLaunchUrlString(this).then((value) {
      if (value) {
        launchUrlString(this);
      }
    });
  }
}


extension BuildContextExt on BuildContext {

  ///超级分类长度
  int get categoryLength => categorys.length;

  ///App超级分类
  IList<Category> get categorys => read<CategoryState>().categorys;
}


