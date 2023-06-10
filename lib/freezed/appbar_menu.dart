import 'package:freezed_annotation/freezed_annotation.dart';

part 'appbar_menu.freezed.dart';
part 'appbar_menu.g.dart';


extension AppbarMenuEx on AppbarMenu {
  String getAssetPath(bool isSelect) {
    return !isSelect ? 'assets/nav/$icon-n.png' : 'assets/nav/$icon.png';
  }
}

@freezed
class AppbarMenu with _$AppbarMenu {
  const AppbarMenu._();

  const factory AppbarMenu({
      @JsonKey(name: 'icon') @Default('')  String icon,
      @JsonKey(name: 'title') @Default('')  String title,
    }) = _AppbarMenu;
  
  factory AppbarMenu.fromJson(Map<String, dynamic> json) => _$AppbarMenuFromJson(json);

}

