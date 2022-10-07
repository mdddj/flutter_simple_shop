import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

class MyAppTheme {

  ///默认主题
  static ThemeData get defaultTheme {
    return FlexThemeData.light(
      scheme: FlexScheme.redWine,
      surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
      blendLevel: 20,
      appBarOpacity: 0.95,
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true,
    );
  }

  ///暗夜主题
  static ThemeData get darkTheme {
    return  FlexThemeData.dark(
      scheme: FlexScheme.sakura,
      surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
      blendLevel: 15,
      appBarOpacity: 0.90,
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true,
    );
  }
}

ThemeData buildLighitTheme(BuildContext context) {
  return ThemeData.light().copyWith(
      primaryColor: Colors.white,
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.black,
          ),
          iconTheme: IconThemeData(color: Colors.blueGrey),
          actionsIconTheme: IconThemeData(color: Colors.blueGrey),
          backgroundColor: Colors.white),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.pink,
          unselectedLabelStyle: TextStyle(fontSize: 12),
          selectedLabelStyle: TextStyle(fontSize: 12)));
}
