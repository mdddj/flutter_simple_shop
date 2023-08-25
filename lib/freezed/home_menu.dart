import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_menu.freezed.dart';

@freezed
class HomeMenu with _$HomeMenu {
  const HomeMenu._();

  const factory HomeMenu(
      {@JsonKey(name: 'title') @Default('') String title,
      @JsonKey(name: 'svgPath') @Default('') String svgpath,
      Widget? icon,
      @JsonKey(name: 'image') @Default('') String image,
      String? routerPath,
      Object? extra,
      VoidCallback? onTap,
      VoidCallback? onLongTap}) = _HomeMenu;
}
