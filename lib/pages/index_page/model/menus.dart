import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';

import '../../../freezed/home_menu.dart';
import '../../../freezed/pager.dart';
import '../../../index.dart';

final indexMenus = IListConst<HomeMenu>([
  HomeMenu(
      title: '饿了吧',
      svgpath: 'assets/svg/elm_logo.svg',
      routerPath: pagerUtil.elm.routername),
  const HomeMenu(title: '美团券', svgpath: 'assets/svg/mt.svg'),
  const HomeMenu(title: '大家都在买', svgpath: 'assets/svg/phb.svg'),
  HomeMenu(
      title: '典の日常',
      icon: const Icon(Icons.account_box),
      routerPath: pagerUtil.resourceList.routername,
      extra: DynPageParams(name: '典の日常', emptyText: '快去发布小日常吧')),
  HomeMenu(
      title: '典の面基',
      svgpath: 'assets/svg/pyq.svg',
      routerPath: pagerUtil.resourceList.routername,
      extra: DynPageParams(name: '典典的面基记录', emptyText: '快去记录面基过程吧')),
  HomeMenu(
      title: '品牌收藏',
      svgpath: 'assets/svg/pp.svg',
      routerPath: pagerUtil.brand.routername),
  HomeMenu(
      title: '发布日常',
      icon: const Icon(Icons.edit),
      routerPath: pagerUtil.resourceWrite.routername,
      extra: DynWriteParams(name: '典の日常')),
  const HomeMenu(title: '习惯の养成', icon: Icon(Icons.accessibility)),
  HomeMenu(
      title: '面基申请',
      icon: const Icon(Icons.add_circle),
      routerPath: pagerUtil.meetAdd.routername),
  HomeMenu(
      title: '申请列表',
      icon: const Icon(Icons.ac_unit),
      routerPath: pagerUtil.meetList.routername)
]);
