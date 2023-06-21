part of util;

extension ThemeEx on AppLocalSettingModel {

  ///亮色主题
  ThemeData get theme {
    final themeData = MyAppTheme.getTheme(themeIndex);
    return  themeData.copyWith(
        useMaterial3: true,
        tabBarTheme: themeData.tabBarTheme.copyWith(
          labelStyle:  TextStyle(fontFamily: useEnv.fontFamily),
          unselectedLabelStyle:  TextStyle(fontFamily: useEnv.fontFamily),
        ),
        textTheme: themeData.textTheme.apply(fontFamily: useEnv.fontFamily),
        cardTheme: themeData.cardTheme.copyWith(
            elevation: 0.01,
            margin: EdgeInsets.zero
        )
    );
  }

  ///暗色主题
  ThemeData get darkTheme {
    final darkTheme = MyAppTheme.darkTheme;
    return darkTheme.copyWith(
      useMaterial3: true,
      textTheme: darkTheme.textTheme.apply(fontFamily: useEnv.fontFamily),
      tabBarTheme: darkTheme.tabBarTheme.copyWith(
        labelStyle:  TextStyle(fontFamily: useEnv.fontFamily),
        unselectedLabelStyle:  TextStyle(fontFamily: useEnv.fontFamily),
      ),
    );
  }
}


extension TextScaleEx on Widget? {
  Widget  scale(BuildContext context) {
    return MediaQuery(
        data: MediaQuery.of(context)
            .copyWith(textScaleFactor: 0.9, boldText: false),
        child: this ?? const SizedBox());
  }
}

extension PaddingEx on BuildContext {


  ///适配全平台的地步边距
  double get bottomPadding {
    if(Platform.isAndroid || Platform.isIOS){
      return 12 + paddingBottom;
    }
    return 24;
  }

  bool get isDesktop =>  getDeviceType(MediaQuery.of(this).size) == DeviceScreenType.desktop;
}