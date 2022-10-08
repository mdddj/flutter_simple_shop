import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

const ColorScheme flexSchemeLight = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xff9b1b30),
  onPrimary: Color(0xffffffff),
  primaryContainer: Color(0xffedbac2),
  onPrimaryContainer: Color(0xff000000),
  secondary: Color(0xffa70043),
  onSecondary: Color(0xffffffff),
  secondaryContainer: Color(0xffffd9df),
  onSecondaryContainer: Color(0xff000000),
  tertiary: Color(0xffa4121c),
  onTertiary: Color(0xffffffff),
  tertiaryContainer: Color(0xffffdad5),
  onTertiaryContainer: Color(0xff000000),
  error: Color(0xff790000),
  onError: Color(0xffffffff),
  errorContainer: Color(0xfff1d8d8),
  onErrorContainer: Color(0xff000000),
  background: Color(0xfff7edee),
  onBackground: Color(0xff000000),
  surface: Color(0xfffbf6f6),
  onSurface: Color(0xff000000),
  surfaceVariant: Color(0xfff7edee),
  onSurfaceVariant: Color(0xff000000),
  outline: Color(0xff4d4d4d),
  shadow: Color(0xff000000),
  inverseSurface: Color(0xff161112),
  onInverseSurface: Color(0xffffffff),
  inversePrimary: Color(0xffffb4c1),
  surfaceTint: Color(0xff9b1b30),
);
const ColorScheme flexSchemeDark = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xffe4677c),
  onPrimary: Color(0xffffffff),
  primaryContainer: Color(0xff9b1b30),
  onPrimaryContainer: Color(0xffffffff),
  secondary: Color(0xffc87a98),
  onSecondary: Color(0xffffffff),
  secondaryContainer: Color(0xff910037),
  onSecondaryContainer: Color(0xffffffff),
  tertiary: Color(0xffbd545b),
  onTertiary: Color(0xffffffff),
  tertiaryContainer: Color(0xff930012),
  onTertiaryContainer: Color(0xffffffff),
  error: Color(0xffcf6679),
  onError: Color(0xff000000),
  errorContainer: Color(0xffb1384e),
  onErrorContainer: Color(0xffffffff),
  background: Color(0xff1d1617),
  onBackground: Color(0xffffffff),
  surface: Color(0xff161313),
  onSurface: Color(0xffffffff),
  surfaceVariant: Color(0xff1c1516),
  onSurfaceVariant: Color(0xffffffff),
  outline: Color(0xffb3b3b3),
  shadow: Color(0xff000000),
  inverseSurface: Color(0xfffefafb),
  onInverseSurface: Color(0xff000000),
  inversePrimary: Color(0xff6d3942),
  surfaceTint: Color(0xffe4677c),
);

class MyAppTheme {
  ///默认主题
  static ThemeData getTheme(int index) {
    return FlexThemeData.light(
        scheme: CustomAppThemeData.values[index].flexScheme,
        surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
        blendLevel: 20,
        appBarOpacity: 1,
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: true,
        colorScheme: flexSchemeLight);
  }

  ///暗夜主题
  static ThemeData get darkTheme {
    return FlexThemeData.dark(
        scheme: FlexScheme.sakura,
        surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
        blendLevel: 15,
        appBarOpacity: 1,
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: true,
        colorScheme: flexSchemeDark);
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
