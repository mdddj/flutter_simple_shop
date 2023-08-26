import 'package:dd_js_util/dd_js_util.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';

import '../../../api/apis.dart';
import '../../../freezed/home_menu.dart';
import '../../../freezed/meituran_result.dart';
import '../../../freezed/pager.dart';
import '../../../freezed/resource_category.dart';
import '../../../index.dart';

final indexMenus = IListConst<HomeMenu>([
  HomeMenu(
      title: '饿了吧',
      svgpath: 'assets/svg/elm_logo.svg',
      routerPath: pagerUtil.elm.routername),
  const HomeMenu(
      title: '美团券', svgpath: 'assets/svg/mt.svg', onTap: _mt, onLongTap: _mtmc),
  const HomeMenu(title: '排行', svgpath: 'assets/svg/phb.svg'),
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
      extra: PagerParams.dynWritePageParam(name: '典の日常')),
  HomeMenu(
      title: '买家秀',
      icon: const Icon(Icons.audiotrack_sharp),
      routerPath: pagerUtil.resourceList.routername,
      extra: PagerParams.dynListPageParam(
          name: "买家秀社区",
          emptyText: "快去分享产品吧",
          style: ResourceWidgetCardStyle.card)),
  HomeMenu(
      title: '面基申请',
      icon: const Icon(Icons.add_circle),
      routerPath: pagerUtil.meetAdd.routername),
  HomeMenu(
      title: '申请列表',
      icon: const Icon(Icons.ac_unit),
      routerPath: pagerUtil.meetList.routername)
]);

///美团领券打开
void _mt() {
  LB.show<MeituanResult, ZheMeituanApi>(ZheMeituanApi(),
      successResult: (value) {
    appLaunchUrl(value.data, failMessage: '无法打开链接,请检查是否安装美团APP');
  }, params: const R(data: <String, dynamic>{"actId": "33", "linkType": "2"}));
}

///美团买菜领券打开
void _mtmc() {
  LB.show<MeituanResult, ZheMeituanApi>(ZheMeituanApi(),
      successResult: (value) {
    appLaunchUrl(value.data, failMessage: '无法打开链接,请检查是否安装美团APP');
  }, params: const R(data: <String, dynamic>{"actId": "4", "linkType": "2"}));
}
