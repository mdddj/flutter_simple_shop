import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../widgets/app_action_menu.dart';
part 'app_action_menu.freezed.dart';

extension AppActionMenuEx on AppActionMenu {
  Future<void> show(BuildContext context) async {
    await showModalBottomSheet(context: context, builder: (_){
      return AppActionMenuWidget(actionMenu: this);
    });
  }
}

///操作
@freezed
class AppActionMenu with _$AppActionMenu {
  const AppActionMenu._();

  const factory AppActionMenu({
    @JsonKey(name: 'title') @Default('')  String title,
    required List<ListTile> actions
  }) = _AppActionMenu;


}