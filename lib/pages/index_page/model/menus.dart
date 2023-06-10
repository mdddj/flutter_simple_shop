import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';

import '../../../freezed/home_menu.dart';

const indexMenus = IListConst<HomeMenu>([
  HomeMenu(title: '饿了吧', svgpath: 'assets/svg/elm_logo.svg'),
  HomeMenu(title: '吃饭券', svgpath: 'assets/svg/mt.svg'),
  HomeMenu(title: '大家都在买', svgpath: 'assets/svg/phb.svg'),
  HomeMenu(title: '典の日常', icon: Icon(Icons.account_box)),
  HomeMenu(title: '典の面基', svgpath: 'assets/svg/pyq.svg'),
  HomeMenu(title: '品牌收藏',svgpath: 'assets/svg/pp.svg'),
  HomeMenu(title: '捡漏',svgpath: 'assets/svg/zhe.svg'),
  HomeMenu(title: '记录生活',icon: Icon(Icons.edit)),
  HomeMenu(title: '习惯の养成',icon: Icon(Icons.accessibility)),
  HomeMenu(title: '面基申请',icon: Icon(Icons.add_circle))
]);
