import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'index.dart';
typedef ThemeBuild = Widget Function(AppLocalSettingModel);
class ThemeBuildWidget extends StatelessWidget {
  final ThemeBuild themeBuild;
  const ThemeBuildWidget({Key? key, required this.themeBuild}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box<AppLocalSettingModel>>(
      valueListenable: Hive.box<AppLocalSettingModel>(appSettingHiveKey).listenable(),
      builder: (BuildContext context, Box<AppLocalSettingModel> value, Widget? child) {
        return themeBuild.call(value.get(AppSeetingCache.themeKey,defaultValue: AppLocalSettingModel.defaultSetting())!);
      },
    );
  }
}
