import 'package:dd_js_util/dd_js_util.dart' hide CacheFactory;
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../index.dart';
///主题设置页面
class ThemeSettingPage extends ConsumerWidget {
  const ThemeSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return  Scaffold(
      appBar: '主题设置'.appbar,
      body: ListView(
        padding: const EdgeInsets.all(12),
        children:CustomAppThemeData.values.map(ThemeItemShow.new).toList(),
      ),
    );
  }

}

class ThemeItemShow extends StatelessWidget {
  final CustomAppThemeData themeItem;
  const ThemeItemShow(this.themeItem,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: FlexThemeData.light(
        scheme: themeItem.flexScheme,
      ),
      child: Builder(
        builder: (context) {
          return Card(
            color: context.primaryColor,
            child: ListTile(
              title: Text(themeItem.title,style: TextStyle(
                color: context.colorScheme.inversePrimary
              ),),
              subtitle: Text(themeItem.flexScheme.name,style: TextStyle(
                color: context.colorScheme.surface
              ),),
            ),
          ).click(changeTheme);
        }
      ),
    );
  }

  ///更换主题
  void changeTheme() {
    CacheFactory.create<AppSeetingCache>().changeTheme(CustomAppThemeData.values.indexOf(themeItem));
  }
}
