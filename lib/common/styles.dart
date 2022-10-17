import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';



class MyAppTheme {
  ///默认主题
  static ThemeData getTheme(int index) {
    return FlexThemeData.light(
        scheme: CustomAppThemeData.values[index].flexScheme,
        surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
        blendLevel: 20,
        appBarOpacity: 1,
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: true);
  }

  ///暗夜主题
  static ThemeData get darkTheme {
    return FlexThemeData.dark(
        scheme: FlexScheme.sakura,
        surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
        blendLevel: 15,
        appBarOpacity: 1,
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: true);
  }
}

///app自定义主题
enum CustomAppThemeData {
  material('默认', FlexScheme.material),
  maaterialHc('默认主题(高对比度)', FlexScheme.materialHc),
  blue('浅蓝色', FlexScheme.blue),
  indigo('靛蓝色', FlexScheme.indigo),
  hippieBlue('嬉皮士蓝', FlexScheme.hippieBlue),
  aquaBlue('海洋蓝', FlexScheme.aquaBlue),
  brandBlue('品牌蓝', FlexScheme.brandBlue),
  deepBlue('蓝色深渊',FlexScheme.deepBlue),
  sakura('粉红色樱花',FlexScheme.sakura),
  mandyRed('曼迪红和维京蓝',FlexScheme.mandyRed),
  red('粉色',FlexScheme.red),
  redWine('红酒色',FlexScheme.redWine),
  purpleBrown('茄子棕色',FlexScheme.purpleBrown),
  green('森林绿',FlexScheme.green),
  money('金钱绿',FlexScheme.money),
  jungle('丛林绿',FlexScheme.jungle),
  greyLaw('忧郁蓝灰',FlexScheme.greyLaw),
  wasabi('芥末绿',FlexScheme.wasabi),
  gold('金色日落',FlexScheme.gold),
  mango('芒果莫吉托',FlexScheme.mango),
  amber('琥珀色',FlexScheme.amber),
  vesuviusBurn('伊甸园绿',FlexScheme.vesuviusBurn),
  deepPurple('紫色灌木',FlexScheme.deepPurple),
  ebonyClay('黏土深灰',FlexScheme.ebonyClay),
  barossa('卡丁绿',FlexScheme.barossa),
  shark('鲨鱼灰',FlexScheme.shark),
  bigStone('郁金香黄',FlexScheme.bigStone),
  damask('缎黄色',FlexScheme.damask),
  bahamaBlue('巴哈马蓝',FlexScheme.bahamaBlue),
  mallardGreen('苹果绿',FlexScheme.mallardGreen),
  espresso('浓缩咖啡色',FlexScheme.espresso),
  outerSpace('红色舞台',FlexScheme.outerSpace),
  blueWhale('探戈橙',FlexScheme.blueWhale),
  sanJuanBlue('盛京蓝',FlexScheme.sanJuanBlue),
  rosewood('红木色',FlexScheme.rosewood),
  blumineBlue('藏红花',FlexScheme.blumineBlue),
  verdunHemlock('矿物绿',FlexScheme.verdunHemlock),
  flutterDash('Dash吉祥物主题',FlexScheme.flutterDash),
  materialBaseline('默认主题升级版',FlexScheme.materialBaseline),
  dellGenoa('戴尔绿',FlexScheme.dellGenoa);

  const CustomAppThemeData(this.title, this.flexScheme);

  final String title;
  final FlexScheme flexScheme;
}
