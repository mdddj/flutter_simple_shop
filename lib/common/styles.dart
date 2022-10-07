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
  static ThemeData get defaultTheme {
    return FlexThemeData.light(
      scheme: FlexScheme.redWine,
      surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
      blendLevel: 20,
      appBarOpacity: 1,
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true,
      colorScheme: flexSchemeLight
    );
  }

  ///暗夜主题
  static ThemeData get darkTheme {
    return  FlexThemeData.dark(
      scheme: FlexScheme.sakura,
      surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
      blendLevel: 15,
      appBarOpacity: 1,
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true,
      colorScheme: flexSchemeDark
    );
  }
}
