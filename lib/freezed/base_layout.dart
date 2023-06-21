import 'package:freezed_annotation/freezed_annotation.dart';
part 'base_layout.freezed.dart';



///布局
@freezed
class BaseLayout with _$BaseLayout {
  const BaseLayout._();

 factory BaseLayout.mobile() = MobileLayout;

  factory BaseLayout.table() = TableLayout;

  factory BaseLayout.desktop() = DesktopLayout;
}

