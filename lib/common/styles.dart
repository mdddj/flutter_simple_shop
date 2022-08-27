
import 'package:flutter/material.dart';

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
          selectedLabelStyle: TextStyle(fontSize: 12))
  );
}