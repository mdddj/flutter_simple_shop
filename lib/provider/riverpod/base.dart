part of '../index.dart';

extension RiverpodZhetaokeAppKeyStateEx on WidgetRef {
  String get zheAppKey => read(riverpodZhetaokeAppKeyState.notifier).state;
}

///折淘客的APPkey
final riverpodZhetaokeAppKeyState = StateProvider((ref) => '');
